package jp.co.axiz.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.SelectForm;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SelectService;

@Repository
public class SelectServiceImpl implements SelectService{

	@Autowired
	UsersDao ud;

	@Override
	public List<Users>find(SelectForm form) {
		String id = form.getUserId();
		String name = form.getUserName();

		boolean isId = false;

		if(!("".equals(id))) {
			isId = true;

		}


		List<Users> list = new ArrayList<Users>();
		if(isId) {
			list= ud.findMembarById(id);
		}else {
			list = ud.findMembar();
		}


		return list;

	}

	@Override
	public List<Users>adminfind(SelectForm form) {
		String id = form.getUserId();


		boolean isId = false;

		if(!("".equals(id))) {
			isId = true;

		}


		List<Users> list = new ArrayList<Users>();

		if(isId) {
			list= ud.findAdminembarById(id);
		}else {
			list=ud.findAdminmembar();
		}

		return list;

	}


}

