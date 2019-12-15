package com.you.can.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.you.can.dto.BoardDto;
import com.you.can.dto.DogDto;
import com.you.can.service.DogService;


@Controller
public class DogController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
    @Autowired
    DogService dogService;
    
    @RequestMapping( value="/dog/select", method = RequestMethod.GET )
    @ResponseBody 
    public DogDto dogSelect(int dogId) {
    	return dogService.dogSelect(dogId);
    }
    
    @RequestMapping( value="/doginsert", method = RequestMethod.POST )
    @ResponseBody 
    public int dogInsert(DogDto dto, MultipartFile file) throws Exception{
    	 logger.debug("/doginsert");
    	return dogService.dogInsert(dto, file);
    }
    
	@RequestMapping(value = "/doginsert", method = RequestMethod.GET)
	public String Doginsert() {
		logger.info("doginsert");
		return "/doginsert";
	}
	  @RequestMapping( value = "/dog/list", method = RequestMethod.GET)
	  @ResponseBody 
	  public List<DogDto> dogList(){
	
	  logger.debug("/dog/list");
//	  System.out.println(dto.getRegDt());
	  return dogService.dogList();
	  }
	  
	
    
    }
