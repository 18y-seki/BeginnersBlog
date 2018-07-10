package jp.co.axiz.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;

@Controller
public class UsersController {

	@Autowired
	UsersDao ud;

	@Autowired
	ArticleDao ad;

	@RequestMapping("/usersLeave")
	public String usersLeave(@ModelAttribute("form") Users users, Model model) {
		return "usersLeave";
	}

	@RequestMapping("/usersLeaveResult")
	public String usersLeaveResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		ad.deleteUser(users.getUserId());
		return "usersLeaveResult";
	}


	@RequestMapping("/usersDelete")
	public String usersDelete(@ModelAttribute("form") Users users,@RequestParam("id")String id,@RequestParam("name")String name, Model model) {
		users.setUserId(id);
		users.setUserName(name);
		model.addAttribute("users", users);

		return "usersDelete";
	}

	@RequestMapping("/usersDeleteResult")
	public String usersDeleteResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		ad.deleteUser(users.getUserId());
		return "usersDeleteResult";
	}


	@RequestMapping("/adminDelete")
	public String adminDelete(@ModelAttribute("form") Users users, @RequestParam("id")String id, Model model) {

		users.setUserId(id);
		model.addAttribute("users", users);
		return "adminDelete";
	}

	@RequestMapping("/adminDeleteResult")
	public String adminDeleteResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		return "adminDeleteResult";
	}







}