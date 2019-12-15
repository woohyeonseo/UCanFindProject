package com.you.can.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.you.can.dto.DogDto;

@Repository
public class DogDaoImpl implements DogDao{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int dogInsert(DogDto dto) {
		
		   KeyHolder keyHolder = new GeneratedKeyHolder(); 
		   
		   String sql= "insert into dog ( "
		   		+ " DOG_NAME, DOG_URL ,DOG_FILENAME) "
		   		+ " values(?,?,?)";
		   
		      jdbcTemplate.update(connection -> {
			         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			         ps.setString(1, dto.getDogName());
			         ps.setString(2, dto.getDogUrl());
			         ps.setString(3, dto.getFileName());
			         return ps;
			      }, keyHolder);
			    
			      return keyHolder.getKey().intValue();
	}

	
	
	
	@Override
	public DogDto dogSelect(int dogId) {
	
	//	System.out.println("dog select dao  잠입"+ dogId);
		String sql = "select * from dog where dog_id = ? ";
		
		return jdbcTemplate.queryForObject(sql, new DogMapper(), dogId);
	}

	@Override
	public List<DogDto> dogList() {
		
		String sql = "select * from dog ";
		
		return jdbcTemplate.query(sql, new DogMapper());
	}
}
