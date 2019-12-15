package com.you.can.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.you.can.dto.StatusJoinDto;

public class StatusJoinMapper implements RowMapper<StatusJoinDto>{

	
	@Override
	public StatusJoinDto mapRow(ResultSet rs, int count) throws SQLException{
		StatusJoinDto dto = new StatusJoinDto();
		
		dto.setFileId(rs.getInt("file_id"));
		dto.setFileUrl(rs.getString("file_url"));
		dto.setFileName(rs.getString("file_name"));
		dto.setBoardId(rs.getInt("board_id"));
		
		return dto;
		
	}
}
