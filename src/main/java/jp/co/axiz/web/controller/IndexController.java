package jp.co.axiz.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.entity.Users;

@Controller
public class IndexController {

	@Autowired
	ArticleDao ad;

	@Autowired
	UsersDao ud;

	@RequestMapping("/top")
	public String top(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		List<Article> articleList = ad.findAll();
		List<Article> topList = new ArrayList<Article>();
		for(int i= 0; i<articleList.size(); i++) {
			Article a = articleList.get(i);
			Users u = ud.findById(a.getUserId());
			String name = u.getUserName();
			String date = a.getCreatedAt();
			String[] days = date.split(" ");
			a.setUserName(name);
			a.setCreatedAt(days[0]);
			topList.add(a);
		}


		session.setAttribute("articleList", topList);
		return "top";
	}

	@RequestMapping("/help")
	public String help(@ModelAttribute("form") Users users, Model model) {
		return "help";
	}



}
