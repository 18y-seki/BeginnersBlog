package jp.co.axiz.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SelectService;

@Repository
public class SelectServiceImpl implements SelectService{

	@Autowired
	private UsersDao ud;

	@Override
	public Users findByIdPass(Users users) {
		Users u = ud.findByIdPass(users);

		if(u == null) {
			return null;
		}

		return u;

	}


}

