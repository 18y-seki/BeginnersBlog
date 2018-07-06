package jp.co.axiz.web.service;

import jp.co.axiz.web.entity.Users;

public interface UsersDeleteService {
	public Users findById(String id);
	public void delete(String userId) ;
}
