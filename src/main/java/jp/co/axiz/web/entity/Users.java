package jp.co.axiz.web.entity;

public class Users {
	private String userId;
	private String userName;
	private String password;
	private String sex;
	private String birthday;
	private String year;
	private String month;
	private String date;
	private String hobby;
	private String greet;
	private Integer deleteFlg;
	private Integer accountLevel;
	public String getUserId() {
		return userId;
	}


	public String getYear() {
		return year;
	}


	public void setYear(String year) {
		this.year = year;
	}


	public String getMonth() {
		return month;
	}


	public void setMonth(String month) {
		this.month = month;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getGreet() {
		return greet;
	}
	public void setGreet(String greet) {
		this.greet = greet;
	}
	public Integer getDeleteFlg() {
		return deleteFlg;
	}
	public void setDeleteFlg(Integer deleteFlg) {
		this.deleteFlg = deleteFlg;
	}
	public Integer getAccountLevel() {
		return accountLevel;
	}
	public void setAccountLevel(Integer accountLevel) {
		this.accountLevel = accountLevel;
	}


}