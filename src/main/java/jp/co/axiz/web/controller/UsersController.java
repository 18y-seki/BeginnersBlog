package jp.co.axiz.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;

@Controller
public class UsersController {

	@Autowired
	UsersDao ud;



	@RequestMapping("/usersDelete")
	public String usersDelete(@ModelAttribute("form") Users users, Model model) {
		return "usersDelete";
	}

	@RequestMapping("/usersDeleteResult")
	public String usersDeleteResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		return "usersDeleteResult";
	}




	@RequestMapping("/usersUpdate")
	public String usersUpdate(@ModelAttribute("form") Users users, Model model) {
		return "usersUpdate";
	}

	@RequestMapping("/usersUpdateConfirm")
	public String usersUpdateConfirm(@ModelAttribute("form") Users users, Model model) {
		return "usersUpdateConfirm";
	}

	@RequestMapping("/usersUpdateResult")
	public String usersUpdateResult(@ModelAttribute("form") Users users, Model model) {
		return "usersUpdateResult";
	}



	@RequestMapping("/usersPassUpdate")
	public String usersPassUpdate(@ModelAttribute("form") Users users, Model model) {
		return "usersPassUpdate";
	}

	@RequestMapping("/usersPassUpdateConfirm")
	public String usersPassUpdateConfirm(@ModelAttribute("form") Users users, Model model) {
		return "usersPassUpdateConfirm";
	}

	@RequestMapping("/usersPassUpdateResult")
	public String usersPassUpdateResult(@ModelAttribute("form") Users users, Model model) {
		return "usersPassUpdateResult";
	}




}
