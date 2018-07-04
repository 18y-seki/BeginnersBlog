package jp.co.axiz.web.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.entity.LoginForm;

public class LoginController {
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(@ModelAttribute("form") LoginForm form, Model model) {
		return "login";
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginForm(@ModelAttribute("form") LoginForm form, Model model) {
		return "usersMypage";
	}

	@RequestMapping("/logout")
	public String logout(@ModelAttribute("form") LoginForm form, Model model) {
		return "logout";
	}
}
