package com.you.can.dao;

import com.you.can.dto.UserDto;

public interface UserDao {
	
	public int userRegister(UserDto userDto);

	public UserDto userProfile(int userSeq);

}
