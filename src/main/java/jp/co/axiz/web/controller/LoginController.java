package jp.co.axiz.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;

@Controller
public class LoginController {

	@Autowired
	UsersDao ud;


	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(@ModelAttribute("form") Users users, Model model) {
		return "login";
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginForm(@ModelAttribute("form") Users users, Model model) {
		return "usersMypage";
	}

	@RequestMapping("/newInsert")
	public String newInsert(@ModelAttribute("form") Users users, Model model) {
		return "newInsert";
	}

	@RequestMapping(value="/newInsertConfirm", method=RequestMethod.POST)
	public String newInsertConfirm(@ModelAttribute("form") Users users, Model model) {
		return "newInsertConfirm";
	}

	@RequestMapping(value="/newInsertResult", method=RequestMethod.POST)
	public String newInsertResult(@ModelAttribute("form") Users users, Model model) {
		return "newInsertResult";
	}




	@RequestMapping("/logout")
	public String logout(@ModelAttribute("form") Users users, Model model) {
		return "logout";
	}
}
