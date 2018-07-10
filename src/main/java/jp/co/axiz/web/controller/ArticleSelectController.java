package jp.co.axiz.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.dao.CommentDao;
import jp.co.axiz.web.dao.GoodDao;
import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.entity.Comments;
import jp.co.axiz.web.entity.Users;

@Controller
public class ArticleSelectController {

	@Autowired
	ArticleDao ad;

	@Autowired
	CommentDao cd;

	@Autowired
	GoodDao gd;

	@Autowired
	UsersDao ud;

	@RequestMapping("/articleList")
	public String articleList(Model model) {
		List<Article> list = ad.findAll();
		model.addAttribute("list", list);
		return "articleList";
	}



	@RequestMapping("/article")
	public String article(@ModelAttribute("form") Comments comment, @RequestParam("id")Integer id, Model model, HttpSession session) {
		Article art = ad.findById(id);
		List<Comments> com = cd.findByArticleId(id);
		List<Comments> comments = new ArrayList<Comments>();
		if(com!=null) {
			for(int i = 0 ; i< com.size() ;i++) {
				Comments c = com.get(i);
				Users u = ud.findById(c.getUserId());
				String name = u.getUserName();
				c.setUserName(name);
				comments.add(c);
			}
		}


		session.setAttribute("art", art);
		session.setAttribute("comments", comments);
		return "article";
	}

}
