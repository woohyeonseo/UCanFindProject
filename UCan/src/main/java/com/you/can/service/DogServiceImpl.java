package com.you.can.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.you.can.controller.BoardController;
import com.you.can.dao.DogDao;
import com.you.can.dto.DogDto;

@Service("DogService")
public class DogServiceImpl implements DogService{
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	 String DogUploadRealPath = 
			   "D:" + File.separator + "workspace" + File.separator + "UCan" + File.separator + 
			      "src" + File.separator + "main" + File.separator +
			         "webapp" + File.separator + "resources" + File.separator + "dogFiles";
		   
	 String dogFileFoler = "/resources/dogFiles";
	 
	@Autowired
	DogDao dogDao;

	
	/*
	@Override
	@Transactional("txManager")
	public int dogInsert(DogDto dto, MultipartFile file) throws Exception{
		
		int dogId = dogDao.dogInsert(dto);
		logger.debug("dogId : "+dogId);
		

		
		if(file != null) {
			UUID uuid = UUID.randomUUID();
		       //file extention
	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
	         
	         String savingFileName = uuid + "." + extension;
	         
	         File saveFile = new File(DogUploadRealPath, savingFileName); 
	         file.transferTo(saveFile);
			
	       
	         dto.setFileName(file.getOriginalFilename());
	         
	         String dogFileUrl = dogFileFoler +"/"+savingFileName;
	         dto.setDogUrl(dogFileUrl);
	         
	    //     dto.setDogId(dogId);
	         
	   //      dogDao.dogInsert(dto);
		}
		return dogId;
	
	}
	*/
	
	@Override
	@Transactional("txManager")
	public int dogInsert(DogDto dto, MultipartFile file) throws Exception{
		
	//	int dogId = dogDao.dogInsert(dto);
		//logger.debug("dogId : "+dogId);
		
		if(file != null) {
			
		       //file extention
	         String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // vs FilenameUtils.getBaseName()
	         String baseName = FilenameUtils.getBaseName(file.getOriginalFilename());
	         
	         String savingFileName = baseName + "." + extension;
	         
	         File saveFile = new File(DogUploadRealPath, savingFileName); 
	         file.transferTo(saveFile);
			
	         dto.setFileName(file.getOriginalFilename());
	         
	         String dogFileUrl = dogFileFoler +"/"+savingFileName;
	         dto.setDogUrl(dogFileUrl);
	         
	    //     dto.setDogId(dogId);	         
	         return dogDao.dogInsert(dto);
		}else {
			 return dogDao.dogInsert(dto);
		}
	}
	


	
	
	@Override
	public DogDto dogSelect(int dogId) {
	
		return dogDao.dogSelect(dogId);
	}
	
	
	@Override
	public List<DogDto> dogList() {
	
		List<DogDto> dogList = dogDao.dogList();
	
	//	((DogDto) dogList).setDogList(dogList);
		
		return  dogList;
	}
	
	
	
}
