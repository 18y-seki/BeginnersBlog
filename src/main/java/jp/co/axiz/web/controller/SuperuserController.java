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
public class SuperuserController {

	@Autowired
	UsersDao ud;


	@RequestMapping("/superuserMypage")
	public String superuserMypage(@ModelAttribute("form") Users users, Model model) {
		return "superuserMypage";
	}

	@RequestMapping(value="/adminSelect", method=RequestMethod.GET)
	public String adminSelect(@ModelAttribute("form") Users users, Model model) {
		return "adminSelect";
	}

	@RequestMapping(value="/adminSelect", method=RequestMethod.POST)
	public String adminSelectID(@ModelAttribute("form") Users users, Model model) {
		return "adminSelect";
	}

}
