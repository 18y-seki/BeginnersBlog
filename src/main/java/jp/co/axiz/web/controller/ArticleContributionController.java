package jp.co.axiz.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.entity.Article;

@Controller
public class ArticleContributionController {

	@Autowired
	ArticleDao ad;

	@RequestMapping("/easyContribution")
	public String easyContribution(@ModelAttribute("form") Article article, Model model) {
		return "easyContribution";
	}

	@RequestMapping("/easyContributionConfirm")
	public String easyContributionConfirm(@ModelAttribute("form") Article article, Model model) {
		return "easyContributionConfirm";
	}



	@RequestMapping("/normalContribution")
	public String normalContribution(@ModelAttribute("form") Article article, Model model) {
		return "normalContribution";
	}

	@RequestMapping("/normalContributionConfirm")
	public String normalContributionConfirm(@ModelAttribute("form") Article article, Model model) {
		return "normalContributionConfirm";
	}



	@RequestMapping("/hardContribution")
	public String hardContribution(@ModelAttribute("form") Article article, Model model) {
		return "hardContribution";
	}

	@RequestMapping("/hardContributionConfirm")
	public String hardContributionConfirm(@ModelAttribute("form") Article article, Model model) {
		return "hardContributionConfirm";
	}


	@RequestMapping("/articleContributionResult")
	public String articleContributionResult(@ModelAttribute("form") Article article, Model model) {
		return "articleContributionResult";
	}
}
