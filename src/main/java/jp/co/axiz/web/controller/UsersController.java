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

	@RequestMapping("/usersDeleteResult")
	public String usersDeleteResult(@ModelAttribute("form") LoginForm form, Model model) {
		return "usersDeleteResult";
	}




	@RequestMapping("/usersUpdate")
	public String usersUpdate(@ModelAttribute("form") LoginForm form, Model model) {
		return "usersUpdate";
	}

	@RequestMapping("/usersUpdateConfirm")
	public String usersUpdateConfirm(@ModelAttribute("form") LoginForm form, Model model) {
		return "usersUpdateConfirm";
	}

	@RequestMapping("/usersUpdateResult")
	public String usersUpdateResult(@ModelAttribute("form") LoginForm form, Model model) {
		return "usersUpdateResult";
	}


}
