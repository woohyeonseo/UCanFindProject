package com.you.can.dao;

import com.you.can.dto.UserDto;

public interface LoginDao {

	//public String login(String Email);
	UserDto login(String userEmail);
	

}
