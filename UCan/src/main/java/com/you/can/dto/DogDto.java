package com.you.can.dto;

import java.util.List;

public class DogDto {
	
	private int dogId;
	private String dogName;
	private String dogUrl;
	private String fileName;
	
	private List<DogDto> dogList;
	
	
	

	public int getDogId() {
		return dogId;
	}




	public void setDogId(int dogId) {
		this.dogId = dogId;
	}




	public String getDogName() {
		return dogName;
	}




	public void setDogName(String dogName) {
		this.dogName = dogName;
	}




	public String getDogUrl() {
		return dogUrl;
	}




	public void setDogUrl(String dogUrl) {
		this.dogUrl = dogUrl;
	}




	public List<DogDto> getDogList() {
		return dogList;
	}




	public void setDogList(List<DogDto> dogList) {
		this.dogList = dogList;
	}




	public String getFileName() {
		return fileName;
	}




	public void setFileName(String fileName) {
		this.fileName = fileName;
	}




	public DogDto() {
	}
	
	

}
