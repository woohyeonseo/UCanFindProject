package com.you.can.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.you.can.dto.BoardDto;
import com.you.can.dto.UserDto;

public interface BoardService {
	
//	public int boardInsert(BoardDto dto);
	
	public List<BoardDto> boardList(int limit, int offset);

	public BoardDto boardDetail(int boardId);

	public int boardUpdate(BoardDto dto);

	public int boardDelete(BoardDto dto);

	public int boardListTotalCnt();

	public int boardSort(BoardDto dto);

	public int boardInsertFile(BoardDto dto, MultipartFile file) throws Exception;

	public int boardUpdateFile(BoardDto dto, MultipartFile file) throws Exception;
	
	public List<BoardDto> boardList(int limit, int offset, String searchWord);

    public int boardListTotalCnt(String searchWord);
	
	
	
//	int boardListTotalCnt();
//	public BoardDto boardDetail(int boardId);
//	public int boardUpdate(BoardDto dto);
//	public int boardDelete(BoardDto dto);
	

}
