package jp.co.axiz.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.entity.UpdateUsers;




@Controller
public class AuthController {

	@RequestMapping(value = "adminSelect",params = "1", method = RequestMethod.POST)
	public String i(Model mode1) {
		return "usersDelete";

	}

	@RequestMapping(value = "articleList", method = RequestMethod.GET)
	public String g(Model mode1) {

		return "articleList";

	}

	@RequestMapping("/normalContribution")
	public String toukou(@ModelAttribute("form") UpdateUsers users, Model model) {
		return "normalContribution";
	}

	@RequestMapping("/hardContribution")
	public String toukou1(@ModelAttribute("form") UpdateUsers users, Model model) {
		return "hardContribution";
	}



}