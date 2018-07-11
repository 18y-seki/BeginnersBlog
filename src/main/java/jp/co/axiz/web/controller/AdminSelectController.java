package jp.co.axiz.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;

@Controller
public class AdminSelectController {


	@Autowired
	UsersDao ud;



//管理者用検索

	@RequestMapping(value="/adminSelect", method =RequestMethod.GET)
	public String select(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		List<Users> list = ud.findAdmin();
		session.setAttribute("userList", list);


		return "adminSelect";
	}

	@RequestMapping(value="/adminList", method =RequestMethod.GET)
	public String list(@ModelAttribute("form") Users users, Model model) {

		String id = users.getUserId();

		boolean isId = !("".equals(id));

		List<Users> list = new ArrayList<Users>();

		if(isId) {
			list= ud.findAdminById(id);
		}else {
			list=ud.findAdmin();
		}


		if(list.size()==0) {
			model.addAttribute("msg", "　入力されたデータは存在しませんでした");
			return "adminSelect";
		}

		model.addAttribute("userList", list);
		return "adminSelect";
	}

}