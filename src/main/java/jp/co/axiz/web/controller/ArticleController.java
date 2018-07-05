package jp.co.axiz.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.entity.Article;

@Controller
public class ArticleController {


	@RequestMapping("/stepup")
	public String stepup(@ModelAttribute("form") Article article, Model model) {
		return "stepup";
	}

	@RequestMapping("/easy")
	public String easy(@ModelAttribute("form") Article article, Model model) {
		return "easy";
	}

	@RequestMapping("/normal")
	public String normal(@ModelAttribute("form") Article article, Model model) {
		return "normal";
	}

	@RequestMapping("/hard")
	public String hard(@ModelAttribute("form") Article article, Model model) {
		return "hard";
	}




}
