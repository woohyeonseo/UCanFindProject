package com.you.can.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.you.can.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	/*
	 * private class UserMapper implements RowMapper<UserDto>{
	 * 
	 * @Override public UserDto mapRow(ResultSet rs, int count) throws SQLException{
	 * UserDto user = new UserDto();
	 * 
	 * user.setUserSeq(rs.getInt("userSeq"));
	 * user.setUserName(rs.getString("usetName"));
	 * user.setUserPassword(rs.getString("userPassword"));
	 * user.setUserEmail(rs.getString("userEmail"));
	 * user.setUserRegisterDate(rs.getDate("userRegisterDate"));
	 * 
	 * return user; } }
	 */
	
	@Override
	public int userRegister(UserDto userDto) {
		String sql = "INSERT INTO USER "
				+ " (USER_NAME, USER_EMAIL, USER_PASSWORD,  USER_REGISTER_DATE) "
				+ " VALUES (?, ?, ?, now() )";
		return jdbcTemplate.update(sql, userDto.getUserName(), userDto.getUserPassword(),
				userDto.getUserEmail());
	}
	@Override
	public UserDto userProfile(int userSeq) {
		String sql="SELECT * FROM user WHERE USER_SEQ=?";
		return jdbcTemplate.queryForObject(sql, new UserMapper(),userSeq);
	}
}
