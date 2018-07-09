package jp.co.axiz.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.entity.Users;

@Controller
public class IndexController {

	@Autowired
	ArticleDao ad;

	@RequestMapping("/top")
	public String top(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		List<Article> articleList = ad.findAll();
		session.setAttribute("articleList", articleList);
		return "top";
	}

	@RequestMapping("/help")
	public String help(@ModelAttribute("form") Users users, Model model) {
		return "help";
	}



}