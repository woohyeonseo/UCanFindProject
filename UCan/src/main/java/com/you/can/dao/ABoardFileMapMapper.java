package com.you.can.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.jdbc.core.RowMapper;

import com.you.can.dto.ABoardFileMapDto;


public class ABoardFileMapMapper implements RowMapper<ABoardFileMapDto>{  //setter에 의해 호출된다.
	  @Override
	  public ABoardFileMapDto mapRow (ResultSet rs, int count) throws SQLException {
		  ABoardFileMapDto dto = new ABoardFileMapDto();
		  dto.setBoardId(rs.getInt("board_id"));
		  dto.setFileId(rs.getInt("file_id"));
	      dto.setFileName(rs.getString("file_name"));
	      dto.setFileContentType(rs.getString("file_content_type"));
	      dto.setFileUrl(rs.getString("file_url"));

	      
	      Calendar cal = new GregorianCalendar();
	      dto.setRegDt(rs.getTimestamp("reg_dt", cal));
		  

		  return dto;
		   
	   }

		   
}
