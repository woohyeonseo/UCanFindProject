package com.you.can.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter{

	
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	  
	   @Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
	      logger.info("AuthInterceptor");
	      HttpSession session = request.getSession();
	      
	      if( session.getAttribute("userDto") == null ) { //login 이 안된 상태
	         logger.info("Need to login!!");
	         
	         String ajaxHeader = request.getHeader("AJAX");
	         
	         if(ajaxHeader != null && ajaxHeader.contentEquals("true")) {
	        	 
	        	 response.setContentType("application/json");
	             response.setStatus(HttpServletResponse.SC_UNAUTHORIZED); //error쪽으로 넘어가고
	             response.getWriter().write("timeout");//"timeout"이 나온다.
	      
	         
	         /*
	         if(ajaxHeader != null )
	         response.sendRedirect("/login");//AJAX 요청일 때는 자동으로 login페이지로 안감.
	         return false;
*/
	      
	      }else {

	            response.sendRedirect("/login");
	         }

	         return false;
	      }

	      
	      return true;
	   }

}
