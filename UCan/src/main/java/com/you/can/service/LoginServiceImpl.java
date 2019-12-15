package com.you.can.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.you.can.dao.LoginDao;
import com.you.can.dto.UserDto;


@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginDao loginDao;

	/*
	 * @Override public String login(String userEmail) { return userEmail; }
	 */
	
	@Override
	public UserDto login(String userEmail) {
		return loginDao.login(userEmail);
	}
}
