package jp.co.axiz.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.SelectForm;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SelectService;

@Controller
public class UserSelectController {


	@Autowired
	UsersDao ud;

	@Autowired
	SelectService ss;

//会員

	@RequestMapping(value="/usersSelect", method =RequestMethod.GET)
	public String select(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		List<Users> list = ud.findMembar();
		session.setAttribute("userList", list);


		return "usersSelect";
	}

	@RequestMapping(value="/list", method =RequestMethod.GET)
	public String list(@ModelAttribute("form") SelectForm form, Model model) {
		List<Users> list = ss.find(form);

		if(list.size()==0) {
			model.addAttribute("msg", "　入力されたデータは存在しませんでした");
			return "usersSelect";
		}


		model.addAttribute("userList", list);
		return "usersSelect";
	}



}