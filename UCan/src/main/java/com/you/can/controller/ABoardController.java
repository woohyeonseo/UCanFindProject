package com.you.can.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.you.can.dto.ABoardDto;
import com.you.can.dto.StatusJoinDto;
import com.you.can.service.ABoardService;

@Controller
public class ABoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	ABoardService aboardService;
	 @RequestMapping( value = "/aboard/list", method = RequestMethod.GET)
	  @ResponseBody 
	  public List<ABoardDto> aboardList(int limit, int offset , String searchWord){
		  ABoardDto dto = new ABoardDto();
	  logger.debug("/aboard/list");
//	  System.out.println(dto.getRegDt());
	  return aboardService.aboardList(limit, offset, searchWord);
	  }
	 
	 @RequestMapping( value = "/aboard/detail", method = RequestMethod.GET)
	  @ResponseBody 
	  public ABoardDto aboardDetail(int boardId){	 
	  logger.debug("/aboard/detail");
//	 System.out.println("boardId"+boardId);
	  return aboardService.aboardDetail(boardId);
	  }
	 
	  @RequestMapping( value = "/aboard/update", method = RequestMethod.POST)
	  @ResponseBody 
	  public int aboardUpdate(ABoardDto dto){	 
	  logger.debug("/aboard/update");
	// System.out.println("boardId="+boardId);
	  return aboardService.aboardUpdate(dto);
	  }
	  
	  @RequestMapping( value = "/aboard/delete", method = RequestMethod.POST)
	  @ResponseBody 
	  public int aboardDelete(ABoardDto dto){
	  logger.debug("/aboard/delete");
	  return aboardService.aboardDelete(dto);
	  }
	  
	   @RequestMapping(value = "/aboard/insertFile", method = RequestMethod.POST)
	   @ResponseBody
	   public int aboardInsertFile(ABoardDto dto, MultipartFile file) throws Exception {	      
	      logger.debug("/aboard/insertFile");
	    //  System.out.println(dto.d);
	      return aboardService.aboardInsertFile(dto, file);
	   }
	   
	   @RequestMapping(value = "/aboard/updateFile", method = RequestMethod.POST)
	   @ResponseBody
	   public int aboardUpdateFile(ABoardDto dto, MultipartFile file) throws Exception{
	      logger.debug("/aboard/updateFile");
          return aboardService.aboardUpdateFile(dto, file);
	   }
		@RequestMapping(value = "/newboard", method = RequestMethod.GET)
		public String boardFileMap() {
			logger.info("newboard");
			//return "table";
			return "newboard/newboard";
		}
		
		 @RequestMapping( value = "/Vmain/fileImageList", method = RequestMethod.GET)
		  @ResponseBody 
		  public List<StatusJoinDto> fileImageList(){
		
		  logger.debug("/Vmain/fileImageList");
		  return aboardService.fileImageList();
		  }
		 
		 @RequestMapping(value = "/board/count", method = RequestMethod.GET)
		   @ResponseBody
		   public ABoardDto boardDetail(int boardId, int userSeq) {
		      
		      logger.debug("/board/detail");
		      
		      return aboardService.boardCount(boardId, userSeq);
		   }
}
