package com.you.can.dao;

import java.util.List;

import com.you.can.dto.ABoardDto;

import com.you.can.dto.ABoardFileMapDto;
import com.you.can.dto.BoardFileDto;
import com.you.can.dto.StatusJoinDto;

public interface ABoardDao {

	//list
//	public List<ABoardFileMapDto> aboardList(int limit, int offset, String searchWord);
	public List<ABoardDto> aboardList(int limit, int offset);
	
	//detail
	public List<ABoardFileMapDto> aboardDetailFileList(int boardId);
	public ABoardDto aboardDetail(int boardId);
	
	//list search
	 public List<ABoardDto> aboardListSearchWord(int limit, int offset, String searchWord);
	public int aboardListSearchWordTotalCnt(String searchWord);
	
	//insert
	public int aboardInsert(ABoardDto dto);
	
	public int aboardInsertFile(ABoardFileMapDto fileDto);
	
	// delete

	 public int aboardDeleteFile(int boardId);
	 public List<String> aboardDeleteFileUrl(int boardId);
	 public int aboardDelete(ABoardDto dto);
	 //update
	 public int aboardUpdate(ABoardDto dto);
	
	//count
		public int aboardListTotalCnt();

		

		public List<StatusJoinDto> fileImageList();

		public int aboardUserReadCnt(int boardId, int userSeq);

		public int aboardUpdateReadCnt(int boardId);

		public  int aboardInsertUserRead(int boardId, int userSeq);
		
		

		
}
