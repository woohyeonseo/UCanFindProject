package com.you.can.dto;

public class StatusJoinDto {

	private int FileId;
	private String fileUrl;
	private String fileName;
	private int boardId;
	public int getFileId() {
		return FileId;
	}
	public void setFileId(int fileId) {
		FileId = fileId;
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public StatusJoinDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
