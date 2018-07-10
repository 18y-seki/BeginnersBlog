package jp.co.axiz.web.entity;

import org.springframework.web.multipart.MultipartFile;

public class Form {

	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
}