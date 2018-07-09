package jp.co.axiz.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.CommentDao;
import jp.co.axiz.web.entity.Comments;

@Controller
public class CommentController {

	@Autowired
	CommentDao cd;

	@RequestMapping("/comment")
	public String comment(@ModelAttribute("form") Comments comment, Model model) {
//		cd.insert(comment);
		return "article";
	}

}
