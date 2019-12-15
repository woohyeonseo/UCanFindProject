package com.you.can.dao;

import java.util.List;

import com.you.can.dto.BoardDto;
import com.you.can.dto.BoardFileDto;

public interface BoardDao {
	public int boardInsert(BoardDto dto);
	
	public List<BoardDto> boardList(int start, int end);
//	int BoardListTotalCnt();
//	BoardDto boardDetail(int boardId);

	public BoardDto boardDetail(int boardId);
	
	
     public List<BoardDto> boardListSearchWord(int limit, int offset, String searchWord);
 	 public int boardListSearchWordTotalCnt(String searchWord);
	

	public int boardUpdate(BoardDto dto);

	public int boardDelete(BoardDto dto);

	public int boardListTotalCnt();

	public int boardSort(BoardDto dto);

	public int boardInsertFile(BoardFileDto fileDto);

	public List<BoardFileDto> boardDetailFileList(int boardId);

	public int boardDeleteFile(int boardId);

	public List<String> boardDeleteFileUrl(int boardId);
	
	
	
	
//	int boardUpdate(BoardDto dto);
//	int boardDelete(BoardDto dto);
	
	
}
