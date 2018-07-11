package jp.co.axiz.web.controller;

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
public class LoginController {

	@Autowired
	UsersDao ud;


	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(@ModelAttribute("form") Users users, Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public String login(@ModelAttribute("form") Users users, Model model, HttpSession session) {

		Users u = ud.findByIdPass(users);

		if(u==null){
			return "login";
		}

		Integer account =u.getAccountLevel();

		if(account==0){
			session.setAttribute("login", u);
			return "top";
		}
		if(account==1){
			session.setAttribute("login", u);
			return "adminMypage";
		}
		if(account==2){
			session.setAttribute("login", u);
			return "superuserMypage";
		}

		return"login";
	}



	@RequestMapping("/logout")
	public String logout(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		session.invalidate();
		return "logout";
	}
}
