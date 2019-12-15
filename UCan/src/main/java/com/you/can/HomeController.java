package com.you.can;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		/*
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 * 
		 * String formattedDate = dateFormat.format(date);
		 * 
		 * model.addAttribute("serverTime", formattedDate );
		 * 
		 * 
		 */
		
		
		return "Vmain";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login() {
		logger.info("login");
		return "user/login";
	}
	
	  @RequestMapping(value = "/logout")  
	  @ResponseBody
	  public String logout(HttpSession session) {
			logger.info("logout");
			return "user/login";

	  } 
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String Profile() {
		logger.info("profile");
		return "profile";
	}
	@RequestMapping(value = "/cards", method = RequestMethod.GET)
	public String Cards() {
		logger.info("cards");
		return "cards";
	}
	
	@RequestMapping(value = "/editors", method = RequestMethod.GET)
	public String Editors() {
		logger.info("editors");
		return "editors";
	}
	@RequestMapping(value = "/blankPage", method = RequestMethod.GET)
	public String BlankPage() {
		logger.info("blankPage");
		return "blankPage";
	}
	

	
	
	@RequestMapping(value = "/table", method = RequestMethod.GET)
	public String Table() {
		logger.info("table");
		//return "table";
		return "board/boardFile";
	}
	

	@RequestMapping(value = "/pricing", method = RequestMethod.GET)
	public String Pricing() {
		logger.info("pricing");
		return "pricing";
	}
	
	@RequestMapping(value = "/animation", method = RequestMethod.GET)
	public String Animation() {
		logger.info("animation");
		return "animation";
	}
	@RequestMapping(value = "/calender", method = RequestMethod.GET)
	public String Calender() {
		logger.info("calender");
		return "calender";
	}
	
	   @RequestMapping(value = "/map", method = RequestMethod.GET)
	   public String boardDropzone(HttpSession session) {
	      logger.info("/map");
	      return "map/map";
	   }
	   

}
