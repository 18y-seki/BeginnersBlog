package jp.co.axiz.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.dao.CommentDao;
import jp.co.axiz.web.dao.GoodDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.entity.Comments;

@Controller
public class ArticleSelectController {

	@Autowired
	ArticleDao ad;

	@Autowired
	CommentDao cd;

	@Autowired
	GoodDao gd;

	@RequestMapping("/articleList")
	public String articleList(Model model) {
		List<Article> list = ad.findAll();
		model.addAttribute("list", list);
		return "articleList";
	}

	@RequestMapping(value="/article", method=RequestMethod.POST)
	public String articleI(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		Article art = ad.findById(article.getArticleId());
		List<Comments> com = cd.findByArticleId(article.getArticleId());
		session.setAttribute("art", art);
		session.setAttribute("com", com);
		return "article";
	}

	@RequestMapping(value="/article", method=RequestMethod.GET)
	public String article(@ModelAttribute("form") Comments comment, @RequestParam("id")Integer id, Model model, HttpSession session) {
		Article art = ad.findById(id);
		List<Comments> com = cd.findByArticleId(id);
		session.setAttribute("art", art);
		session.setAttribute("com", com);
		return "article";
	}

}
