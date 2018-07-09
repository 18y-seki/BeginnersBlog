package jp.co.axiz.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.service.InsertService;

@Service
public class InsertServiceImpl implements InsertService{

	@Autowired
	UsersDao ud;

	public void insertMembar(String id,String name, String pass) {
		ud.insertMembar(id,name,pass);
	}



}