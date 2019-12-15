package com.you.can.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	Logger logger = LoggerFactory.getLogger(UserController.class);
	
	
	@ExceptionHandler
	public String handlerError(HttpServletRequest request, Exception exception) {
		logger.error("Request: " + request.getRequestURL()+" raised "+ exception); //AJAX가 호출한 것인지 확인.
		logger.error("Exception Trace : ", exception);   // exception이 trace처럼 나옴.
		
		 String ajaxHeader = request.getHeader("AJAX");
	      
	      if(ajaxHeader != null && ajaxHeader.contentEquals("true")) {
	         request.setAttribute("msg", exception.toString());
	         return "forward:/handling";
	      }else {

	         return "exceptionHandler";

		
		/*
	      if(request.getHeader("AJAX").contentEquals("true")) {
	          request.setAttribute("msg", exception.toString());
	          return "forward:/handling";
	       }else {

	          return "exceptionHandler";
	       }
	
		 */
	}
}
}
