package com.you.can.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.you.can.HomeController;


@Controller
public class Chatcontroller {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String Chat() {
		logger.info("chat");
		return "chat";
	}
	
}
