package jp.co.axiz.web.service;

import jp.co.axiz.web.entity.Users;

public interface LoginService {
	public Users findByIdPass(Users users) ;
}