package jp.co.axiz.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.entity.Article;

@Controller
public class ArticleSelectController {

	@RequestMapping("/articleList")
	public String articleList(Model model) {
		return "article_list";
	}

	@RequestMapping("/article")
	public String article(@ModelAttribute("form") Article article, Model model) {
		return "article";
	}

}
