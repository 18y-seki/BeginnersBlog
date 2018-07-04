package jp.co.axiz.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.entity.LoginForm;

@Controller
public class UsersController {

	@RequestMapping("/usersDelete")
	public String usersDelete(@ModelAttribute("form") LoginForm form, Model model) {
		return "usersDelete";
	}

	@RequestMapping("/usersUpdate")
	public String usersUpdate(@ModelAttribute("form") LoginForm form, Model model) {
		return "usersUpdate";
	}


}
