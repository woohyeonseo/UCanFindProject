package com.you.can.dto;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ABoardDto {

	private int boardId;
	private String userSeq;
	private String userName;
	private String userProfileImageUrl;

	private String title;
	private String content;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
	private Date regDt;
	private int readCount;

	private String placeId;
	private String placeName;

	private double placeLat;
	private double placeLng;
	
	private String placeAddress;

	private int dogId;
	private String dogName;

	public String getDogName() {
		return dogName;
	}

	public void setDogName(String dogName) {
		this.dogName = dogName;
	}

	private int statusCk;

	private List<ABoardFileMapDto> fileList;





	public double getPlaceLat() {
		return placeLat;
	}

	public void setPlaceLat(double placeLat) {
		this.placeLat = placeLat;
	}

	public double getPlaceLng() {
		return placeLng;
	}

	public void setPlaceLng(double placeLng) {
		this.placeLng = placeLng;
	}

	public String getPlaceId() {
		return placeId;
	}

	public void setPlaceId(String placeId) {
		this.placeId = placeId;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}



	public String getPlaceAddress() {
		return placeAddress;
	}

	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}

	public int getDogId() {
		return dogId;
	}

	public void setDogId(int dogId) {
		this.dogId = dogId;
	}

	public int getStatusCk() {
		return statusCk;
	}

	public void setStatusCk(int statusCk) {
		this.statusCk = statusCk;
	}

	public List<ABoardFileMapDto> getFileList() {
		return fileList;
	}

	public void setFileList(List<ABoardFileMapDto> fileList) {
		this.fileList = fileList;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getUserSeq() {
		return userSeq;
	}

	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserProfileImageUrl() {
		return userProfileImageUrl;
	}

	public void setUserProfileImageUrl(String userProfileImageUrl) {
		this.userProfileImageUrl = userProfileImageUrl;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public ABoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

}
