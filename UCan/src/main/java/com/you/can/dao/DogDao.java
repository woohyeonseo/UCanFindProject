package com.you.can.dao;

import java.util.List;

import com.you.can.dto.DogDto;

public interface DogDao {

	int dogInsert(DogDto dto);
	DogDto dogSelect(int dogId);
	List<DogDto>dogList();
	
}
