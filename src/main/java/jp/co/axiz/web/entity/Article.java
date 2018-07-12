package jp.co.axiz.web.entity;

import org.springframework.web.multipart.MultipartFile;

public class Article {

	private Integer articleId;
	private String title;
	private String articleText;
	private String userId;
	private String userName;
	private String category;
	private String category_01;
	private String category_02;
	private String category_03;
	private String bgImage;
	private Integer good_num;
	private String createdAt;
	private String updatedAt;

	private MultipartFile file;

	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArticleText() {
		return articleText;
	}
	public void setArticleText(String articleText) {
		this.articleText = articleText;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCategory_01() {
		return category_01;
	}
	public void setCategory_01(String category_01) {
		this.category_01 = category_01;
	}
	public String getCategory_02() {
		return category_02;
	}
	public void setCategory_02(String category_02) {
		this.category_02 = category_02;
	}
	public String getCategory_03() {
		return category_03;
	}
	public void setCategory_03(String category_03) {
		this.category_03 = category_03;
	}
	public String getBgImage() {
		return bgImage;
	}
	public void setBgImage(String bgImage) {
		this.bgImage = bgImage;
	}
	public Integer getGood_num() {
		return good_num;
	}
	public void setGood_num(Integer good_num) {
		this.good_num = good_num;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public String getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}



}
