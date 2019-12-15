package com.you.can.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.you.can.dto.ABoardDto;
import com.you.can.dto.ABoardFileMapDto;
import com.you.can.dto.StatusJoinDto;

public interface ABoardService {
	
	
	

	
	
	public List<ABoardDto> aboardList(int limit, int offset);

    public int aboardListTotalCnt(String searchWord);



	public ABoardDto aboardDetail(int boardId);

	public int aboardUpdate(ABoardDto dto);

	public int aboardListTotalCnt();

	

	public int aboardUpdateFile(ABoardDto dto, MultipartFile file) throws Exception;



	public int aboardDelete(ABoardDto dto);



	public List<ABoardDto> aboardList(int limit, int offset, String searchWord);

	//public int aboardInsertFile(ABoardDto dto, MultipartFile file, ABoardFileMapDto mapdto) throws Exception;

  public int aboardInsertFile(ABoardDto dto, MultipartFile file) throws Exception;
  
  
  public List<StatusJoinDto> fileImageList();

 public ABoardDto boardCount(int boardId, int userSeq);
  
}
