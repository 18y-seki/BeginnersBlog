package jp.co.axiz.web.entity;

public class Article {

	private Integer articleId;
	private String title;
	private String articleText;
	private String userId;
	private String category01;
	private String category02;
	private String category03;
	private Integer good_num;
	private String createdAt;
	private String updatedAt;
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
	public String getCategory01() {
		return category01;
	}
	public void setCategory01(String category01) {
		this.category01 = category01;
	}
	public String getCategory02() {
		return category02;
	}
	public void setCategory02(String category02) {
		this.category02 = category02;
	}
	public String getCategory03() {
		return category03;
	}
	public void setCategory03(String category03) {
		this.category03 = category03;
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



}
