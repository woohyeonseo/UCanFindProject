package com.you.can.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.you.can.dto.UserDto;
import com.you.can.service.UserService;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
			
	        @Autowired
			UserService userService;
			
	        
	        //여기서 GET을 받기, POST는 웹에서 보내기
	        @RequestMapping(value= "/register", method = RequestMethod.GET)
	        	public String registerForm() {
				logger.debug("/register");
				
				return "/user/register";
			}
	
			@RequestMapping(value= "/user", method = RequestMethod.POST)
			@ResponseBody
			public int register(UserDto userDto) {
				logger.debug("/user");
				return userService.userRegister(userDto);
			}
}
