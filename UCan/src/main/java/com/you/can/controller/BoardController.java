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

import com.you.can.dto.BoardDto;
import com.you.can.dto.UserDto;
import com.you.can.service.BoardService;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	BoardService boardService;

	/*
	  @RequestMapping(value = "/board/insert", method = RequestMethod.POST)
	  
	  @ResponseBody public int boardInsert(BoardDto dto) {
	  logger.debug("/board/insert");
	  System.out.println("----------------");
	  System.out.println(dto.getUserSeq());
	  System.out.println(dto.getTitle());
	  System.out.println(dto.getContent());
	  return boardService.boardInsert(dto);
	  
	  }
	 */
	
	

	 
	
	
	
	  @RequestMapping( value = "/board/list", method = RequestMethod.GET)
	  @ResponseBody 
	  public List<BoardDto> boardList(int limit, int offset , String searchWord){
		  BoardDto dto = new BoardDto();
	  logger.debug("/board/list");
//	  System.out.println(dto.getRegDt());
	  return boardService.boardList(limit, offset, searchWord);
	  }
	 
	  
	  /*
	   @RequestMapping(value = "/board/list/totalCnt", method = RequestMethod.GET)
	   @ResponseBody
	   public int boardListCnt() {
	      
	      logger.debug("/board/list/TotalCnt");
	      
	      return boardService.boardListTotalCnt();
	   }
	   */
	   
	   @RequestMapping(value = "/board/list/totalCnt", method = RequestMethod.GET)
	   @ResponseBody
	   public int boardListCnt(String searchWord) {
	      
	      logger.debug("/board/listTotalCnt");
	      
	      return boardService.boardListTotalCnt(searchWord);
	   }

	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String Table() {
		logger.info("board");
		return "/board/board";
	}
	
	  @RequestMapping( value = "/board/detail", method = RequestMethod.GET)
	  @ResponseBody 
	  public BoardDto boardDetail(int boardId){	 
	  logger.debug("/board/detail");
	 System.out.println("boardId"+boardId);
	  return boardService.boardDetail(boardId);
	  }
	 
	  @RequestMapping( value = "/board/update", method = RequestMethod.POST)
	  @ResponseBody 
	  public int boardUpdate(BoardDto dto){	 
	  logger.debug("/board/update");
	// System.out.println("boardId="+boardId);
	  return boardService.boardUpdate(dto);
	  }
	  
	  @RequestMapping( value = "/board/delete", method = RequestMethod.POST)
	  @ResponseBody 
	  public int boardDelete(BoardDto dto){
	  logger.debug("/board/delete");
	  return boardService.boardDelete(dto);
	  }
	  
	  

	   
	   
	   @RequestMapping(value = "/board/list/sort", method = RequestMethod.GET)
	   @ResponseBody
	   public int boardSort(BoardDto dto) { 
	      logger.debug("/board/list/sort");	      
	      return boardService.boardSort(dto);
	   }
	   
	   @RequestMapping(value = "/board/insertFile", method = RequestMethod.POST)
	   @ResponseBody
	   public int boardInsertFile(BoardDto dto, MultipartFile file) throws Exception {	      
	      logger.debug("/board/insertFile");
	      return boardService.boardInsertFile(dto, file);
	   }
	   
	   @RequestMapping(value = "/board/updateFile", method = RequestMethod.POST)
	   @ResponseBody
	   public int boardUpdateFile(BoardDto dto, MultipartFile file) throws Exception{
	      logger.debug("/board/updateFile");
          return boardService.boardUpdateFile(dto, file);
	   }
	   
		@RequestMapping(value = "/boardFileMap", method = RequestMethod.GET)
		public String boardFileMap() {
			logger.info("boardFileMap");
			//return "table";
			return "board/boardFileMap";
		}
	   
}
