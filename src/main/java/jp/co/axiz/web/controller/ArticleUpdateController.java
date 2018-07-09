package jp.co.axiz.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.entity.Article;

@Controller
public class ArticleUpdateController {

	@RequestMapping("/articleUpdate")
	public String articleUpdate(@ModelAttribute("form") Article article, Model model) {
		return "articleUpdate";
	}

	@RequestMapping("/articleUpdateCon")
	public String articleUpdateCon(@ModelAttribute("form") Article article, Model model) {
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
