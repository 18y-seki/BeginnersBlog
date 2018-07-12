package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.CommentDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.entity.Comments;
import jp.co.axiz.web.entity.Users;

@Controller
public class CommentController {

	@Autowired
	CommentDao cd;

	@RequestMapping("/comment")
	public String comment(@ModelAttribute("form") Comments comment, Model model, HttpSession session) {
		Article a = (Article)session.getAttribute("art");
		Users u = (Users)session.getAttribute("login");

		comment.setArticleId(a.getArticleId());
		comment.setUserId(u.getUserId());

		cd.insert(comment);
		return "article";
	}

}
