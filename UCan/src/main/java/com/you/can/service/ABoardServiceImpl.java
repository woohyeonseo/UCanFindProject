package com.you.can.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.you.can.controller.BoardController;
import com.you.can.dao.ABoardDao;
import com.you.can.dto.ABoardDto;
import com.you.can.dto.ABoardFileMapDto;
import com.you.can.dto.StatusJoinDto;


@Service("ABoardService")
public class ABoardServiceImpl implements ABoardService{

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	ABoardDao aboardDao;
	
	@Override
	public List<ABoardDto> aboardList(int limit, int offset) {	
		return aboardDao.aboardList(limit, offset);
	}
	
	@Override
	   public ABoardDto aboardDetail(int boardId) {
	      
	      ABoardDto dto = aboardDao.aboardDetail(boardId);
	      System.out.println(dto.getDogId());
	      List<ABoardFileMapDto> fileList = aboardDao.aboardDetailFileList(boardId);
	      dto.setFileList(fileList);
	      return dto;
	   }
	
	@Override 
	  public int aboardUpdate(ABoardDto dto) {   
		  return aboardDao.aboardUpdate(dto);
		  }
	
	 @Override
	   public int aboardListTotalCnt() {
	      int cnt = aboardDao.aboardListTotalCnt();
	      System.out.println(cnt);
	      return cnt;
	   }
	 
	 
	 String boardUploadRealPath = 
	         "D:" + File.separator + "workspace" + File.separator + "UCan" + File.separator + 
	      "src" + File.separator + "main" + File.separator +
	         "webapp" + File.separator + "resources" + File.separator + "boardFiles";
   
   String boardDeleteRealPath = 
		   "D:" + File.separator + "workspace" + File.separator + "UCan" + File.separator + 
		      "src" + File.separator + "main" + File.separator +
		         "webapp" + File.separator;   //resource전까지 경로 준다. db에 resource이후는 자동으로 들어가니까 
	   
	   String boardFileFolder = "/resources/boardFiles";
	   
	   
	
	@Override
	@Transactional("txManager")
	public int aboardInsertFile(ABoardDto dto, MultipartFile file) throws Exception {
		int boardId = aboardDao.aboardInsert(dto);
	
		 logger.debug("boardId : " + boardId);
		 
	      
	      if( file != null ) {
	         //Random Fild Id
	         UUID uuid = UUID.randomUUID();
	         
	         //file extention
	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
	         
	         String savingFileName = uuid + "." + extension;
	         
	         File saveFile = new File(boardUploadRealPath, savingFileName); 
	         file.transferTo(saveFile);
	   
	         //File Save to folder
	         ABoardFileMapDto fileDto = new ABoardFileMapDto();
	         fileDto.setFileContentType(file.getContentType());
	        
	        
	         
	         logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());
	         
	         fileDto.setFileName(file.getOriginalFilename());
	    
	         
	         String boardFileUrl = boardFileFolder + "/" + savingFileName;
	         fileDto.setFileUrl(boardFileUrl);
	         
	         fileDto.setBoardId(boardId);
	         
	         
	  
	         aboardDao.aboardInsertFile(fileDto);
	      }
	      
		return boardId;
	}

	@Override
	@Transactional("txManager")
	public int aboardUpdateFile(ABoardDto dto, MultipartFile file) throws Exception {

	      int ret = aboardDao.aboardUpdate(dto);
	      
	      if( file != null ) {
	         //delete first
	         aboardDao.aboardDeleteFile(dto.getBoardId());
	         
	         //Random Fild Id
	         UUID uuid = UUID.randomUUID();
	         
	         //file extention
	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
	         
	         String savingFileName = uuid + "." + extension;
	         
	         File saveFile = new File(boardUploadRealPath, savingFileName); 
	         file.transferTo(saveFile);
	   
	         //File Save to folder
	         ABoardFileMapDto fileDto = new ABoardFileMapDto();
	         fileDto.setFileContentType(file.getContentType());
	         
	         
	         logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());
	         
	         fileDto.setFileName(file.getOriginalFilename());
	       //  fileDto.setFileSize(file.getSize());
	         
	         String boardFileUrl = boardFileFolder + "/" + savingFileName;
	         fileDto.setFileUrl(boardFileUrl);
	         
	         fileDto.setBoardId(dto.getBoardId());
	         
	         aboardDao.aboardInsertFile(fileDto);
	      }
	      
	      return ret;
	}


	@Override
	@Transactional("txManager")
	public int aboardDelete(ABoardDto dto) {
		   List<String> fileUrlList = aboardDao.aboardDeleteFileUrl(dto.getBoardId());
		   for(String fileUrl : fileUrlList) {
			   File file = new File(boardDeleteRealPath, fileUrl);
			   logger.debug("file: "+file.getName());
			   
			   if(file.exists()) {
				   file.delete();
			   }
		   }
		   
		   
		   
	      aboardDao.aboardDeleteFile(dto.getBoardId());
	      int ret = aboardDao.aboardDelete(dto);
	      
	      return ret;
	   }
	
	  @Override
	   public List<ABoardDto> aboardList(int limit, int offset, String searchWord) {
	      if("".equals(searchWord)) {
	         return aboardDao.aboardList(limit, offset);
	      }else {
	         return aboardDao.aboardListSearchWord(limit, offset, searchWord);
	      }
	   }
	
	@Override
	public int aboardListTotalCnt(String searchWord) {

	      if("".equals(searchWord)) {
	         return aboardDao.aboardListTotalCnt();
	      }else {
	         return aboardDao.aboardListSearchWordTotalCnt(searchWord);
	      }
	   }

	@Override
	public List<StatusJoinDto> fileImageList() {
		   logger.debug("ABoardService-fileImageList");
		return aboardDao.fileImageList();
	}

	@Override
	public ABoardDto boardCount(int boardId, int userSeq) {
		 //조회수 처리
		  //조회수 처리
	      int viewCnt = aboardDao.aboardUserReadCnt(boardId, userSeq);
	      
	      if( viewCnt == 0 ) {
	         aboardDao.aboardInsertUserRead(boardId, userSeq);
	         aboardDao.aboardUpdateReadCnt(boardId);
	      }
	      
	      ABoardDto dto = aboardDao.aboardDetail(boardId);
	      List<ABoardFileMapDto> fileList = aboardDao.aboardDetailFileList(dto.getBoardId());
	      dto.setFileList(fileList);
	      return dto;
	   }
	


}
