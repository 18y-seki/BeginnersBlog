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
import jp.co.axiz.web.entity.Users;

@Controller
public class ArticleSelectController {

	@Autowired
	UsersDao ud;

	@RequestMapping(value="/usersSelect", method =RequestMethod.GET)
	public String select(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		List<Users> list = ud.findMembar();
		session.setAttribute("userList", list);


		return "usersSelect";
	}

	@RequestMapping(value="/list", method =RequestMethod.GET)
	public String list(@ModelAttribute("form") Users users, Model model) {
		Users u = ud.findByIdPass(users);



		model.addAttribute("userList", u);
		return "usersSelect";
	}

}