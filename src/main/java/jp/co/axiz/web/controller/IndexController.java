package jp.co.axiz.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.entity.Users;

@Controller
public class IndexController {

	@Autowired
	ArticleDao ad;

	@RequestMapping("/top")
	public String top(@ModelAttribute("form") Users users, Model model) {
		ad.findAll();
		return "top";
	}

	@RequestMapping("/help")
	public String help(@ModelAttribute("form") Users users, Model model) {
		return "help";
	}



}
