package com.you.can.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.you.can.dto.DogDto;

public interface DogService {
	
	public int dogInsert(DogDto dto ,MultipartFile file) throws Exception; 
	public DogDto dogSelect(int dogId);
	public List<DogDto> dogList();

}
