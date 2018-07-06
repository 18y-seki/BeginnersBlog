package jp.co.axiz.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.entity.Article;

@Controller
public class ArticleUpdateController {

	@Autowired
	ArticleDao ad;

	@RequestMapping("/articleUpdate")
	public String articleUpdate(@ModelAttribute("form") Article article, Model model) {
		return "articleUpdate";
	}

	@RequestMapping("/articleUpdateConfirm")
	public String articleUpdateConfirm(@ModelAttribute("form") Article article, Model model) {
		return "articleUpdateConfirm";
	}

	@RequestMapping("/articleDelete")
	public String articleDelete(@ModelAttribute("form") Article article, Model model) {
		return "articleDelete";
	}

	@RequestMapping("/articleDeleteResult")
	public String articleDeleteRes(@ModelAttribute("form") Article article, Model model) {
		return "articleDeleteResult";
	}

}
