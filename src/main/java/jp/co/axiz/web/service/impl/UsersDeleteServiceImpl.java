package jp.co.axiz.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.UsersDeleteService;

@Service
public class UsersDeleteServiceImpl implements UsersDeleteService {

	@Autowired
	private UsersDao ud;

		public Users findById(String id) {
			List<Users> list = ud.findById(id);
			if(list.size()!=0) {
				return list.get(0);
			}
			return null;
		}
		public void delete(String id) {
			ud.delete(id);
			return ;
		}
}
