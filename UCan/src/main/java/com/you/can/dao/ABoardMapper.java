package com.you.can.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.jdbc.core.RowMapper;

import com.you.can.dto.ABoardDto;



public class ABoardMapper implements RowMapper<ABoardDto>{
	@Override
	public ABoardDto mapRow(ResultSet rs, int count) throws SQLException{
		
		ABoardDto dto = new ABoardDto();
		
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
	      
	      dto.setPlaceId(rs.getString("place_id"));
	      dto.setPlaceName(rs.getString("place_name"));

	      
	      dto.setPlaceLat(rs.getDouble("place_lat"));
	      dto.setPlaceLng(rs.getDouble("place_lng"));
	      dto.setPlaceAddress(rs.getString("place_address"));
	      
	      dto.setDogName(rs.getString("dog_name"));
	      
	      dto.setStatusCk(rs.getInt("status_ck"));
	      
	      
	      return dto;
		
	}

}
