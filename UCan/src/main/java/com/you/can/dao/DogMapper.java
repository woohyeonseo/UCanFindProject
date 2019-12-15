package com.you.can.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.you.can.dto.DogDto;

public class DogMapper implements RowMapper<DogDto>{
	
	@Override
	public DogDto mapRow(ResultSet rs, int count) throws SQLException{
		DogDto dto = new DogDto();
		
		dto.setDogId(rs.getInt("DOG_ID"));
		dto.setDogName(rs.getString("DOG_NAME"));
		dto.setDogUrl(rs.getString("Dog_Url"));
		
		return dto;
	}

}
