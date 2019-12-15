package com.you.can.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;

import com.you.can.dto.BoardDto;

public class BoardMapper implements RowMapper<BoardDto> {

	@Override
	public BoardDto mapRow(ResultSet rs, int count) throws SQLException{
		
		BoardDto dto = new BoardDto();
		//여기 ""안에 있는 값은 mySql 필드 값이랑 같아야한다.
		dto.setBoardId(rs.getInt("board_id"));
		dto.setUserSeq(rs.getString("user_seq"));
		dto.setUserName(rs.getString("user_name"));
		dto.setUserProfileImageUrl(rs.getString("user_profile_image_url"));
		dto.setTitle(rs.getString("title"));
		dto.setContent(rs.getString("content"));
		Calendar cal = new GregorianCalendar(); //시간이 안나오니까 timestamp사용
		dto.setRegDt(rs.getTimestamp("reg_dt", cal));
	//	dto.setRegDt(rs.getDate("REG_DT"));
	      dto.setReadCount(rs.getInt("read_count"));
	 System.out.println("dto.getBoardId :" + dto.getBoardId());
	      return dto;
	}

}
