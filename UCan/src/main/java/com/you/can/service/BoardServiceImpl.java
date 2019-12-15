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
import com.you.can.dao.BoardDao;
import com.you.can.dto.BoardDto;
import com.you.can.dto.BoardFileDto;

@Service("BoardService")
public class BoardServiceImpl implements BoardService {

	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardDao boardDao;

	/*
	@Override
	public int boardInsert(BoardDto dto) {
		return boardDao.boardInsert(dto);
	}
	*/

	@Override
	public List<BoardDto> boardList(int limit, int offset) {
		return boardDao.boardList(limit, offset);
	}

	
	@Override
	   public BoardDto boardDetail(int boardId) {
	      
	      BoardDto dto = boardDao.boardDetail(boardId);
	      List<BoardFileDto> fileList = boardDao.boardDetailFileList(boardId);
	      dto.setFileList(fileList);
	      return dto;
	   }
	
	  @Override 
	  public int boardUpdate(BoardDto dto) { 
		  
		  return boardDao.boardUpdate(dto);
		  }
	  
	  
	  
	   @Override
	   public int boardListTotalCnt() {
	      int cnt = boardDao.boardListTotalCnt();
	      System.out.println(cnt);
	      return cnt;
	   }
	   
	   @Override
	   public int boardSort(BoardDto dto) {
		   int sor = boardDao.boardSort(dto);
	   return sor;
	   }
	   
	   
	   String boardUploadRealPath = 
		         "D:" + File.separator + "workspace" + File.separator + "UCan" + File.separator + 
		      "src" + File.separator + "main" + File.separator +
		         "webapp" + File.separator + "resources" + File.separator + "boardFiles";
	   
	   String boardDeleteRealPath = 
			   "D:" + File.separator + "workspace" + File.separator + "UCan" + File.separator + 
			      "src" + File.separator + "main" + File.separator +
			         "webapp" + File.separator;   //resource전까지 경로 준다. db에 resource이후는 자동으로 들어가니까 
		   
		   String boardFileFolder = "resources/boardFiles";
		   
		   @Override
		   @Transactional("txManager")
		   public int boardInsertFile(BoardDto dto, MultipartFile file) throws Exception{
		      
		      int boardId = boardDao.boardInsert(dto);
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
		         BoardFileDto fileDto = new BoardFileDto();
		         fileDto.setFileContentType(file.getContentType());
		        
		         
		         logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());
		         
		         fileDto.setFileName(file.getOriginalFilename());
		         fileDto.setFileSize(file.getSize());
		         
		         String boardFileUrl = boardFileFolder + "/" + savingFileName;
		         fileDto.setFileUrl(boardFileUrl);
		         
		         fileDto.setBoardId(boardId);
		         
		         boardDao.boardInsertFile(fileDto);
		      }
		      
		      return boardId;
		   }
		   
		   @Override
		   @Transactional("txManager")
		   public int boardUpdateFile(BoardDto dto, MultipartFile file) throws Exception{
		      
		      int ret = boardDao.boardUpdate(dto);
		      
		      if( file != null ) {
		         //delete first
		         boardDao.boardDeleteFile(dto.getBoardId());
		         
		         //Random Fild Id
		         UUID uuid = UUID.randomUUID();
		         
		         //file extention
		         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
		         
		         String savingFileName = uuid + "." + extension;
		         
		         File saveFile = new File(boardUploadRealPath, savingFileName); 
		         file.transferTo(saveFile);
		   
		         //File Save to folder
		         BoardFileDto fileDto = new BoardFileDto();
		         fileDto.setFileContentType(file.getContentType());
		         
		         
		         logger.debug("fileDto.getFileContentType : " + fileDto.getFileContentType());
		         
		         fileDto.setFileName(file.getOriginalFilename());
		         fileDto.setFileSize(file.getSize());
		         
		         String boardFileUrl = boardFileFolder + "/" + savingFileName;
		         fileDto.setFileUrl(boardFileUrl);
		         
		         fileDto.setBoardId(dto.getBoardId());
		         
		         boardDao.boardInsertFile(fileDto);
		      }
		      
		      return ret;
		   }
		   
		   
		   @Override
		   @Transactional("txManager")
		   public int boardDelete(BoardDto dto) {
			   
			   List<String> fileUrlList = boardDao.boardDeleteFileUrl(dto.getBoardId());
			   for(String fileUrl : fileUrlList) {
				   File file = new File(boardDeleteRealPath, fileUrl);
				   logger.debug("file: "+file.getName());
				   
				   if(file.exists()) {
					   file.delete();
				   }
			   }
			   
			   
			   
		      boardDao.boardDeleteFile(dto.getBoardId());
		      int ret = boardDao.boardDelete(dto);
		      
		      return ret;
		   }


		   @Override
		   public List<BoardDto> boardList(int limit, int offset, String searchWord) {
		      if("".equals(searchWord)) {
		         return boardDao.boardList(limit, offset);
		      }else {
		         return boardDao.boardListSearchWord(limit, offset, searchWord);
		      }
		   }
		   
		   @Override
		   public int boardListTotalCnt(String searchWord) {
		      
		      if("".equals(searchWord)) {
		         return boardDao.boardListTotalCnt();
		      }else {
		         return boardDao.boardListSearchWordTotalCnt(searchWord);
		      }
		   }
	  
}
