package jp.co.axiz.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.entity.LoginForm;

@Controller
public class ArticleController {

	@RequestMapping("/index")
	public String index(@ModelAttribute("form") LoginForm form, Model model) {
		return "index";
	}

	@RequestMapping("/beginnerCon")
	public String beginnerCon(@ModelAttribute("form") LoginForm form, Model model) {
		return "BeginnerContribution";
	}

	@RequestMapping("/beginnerConCon")
	public String beginnerConCon(@ModelAttribute("form") LoginForm form, Model model) {
		return "BeginnerContributionConfirm";
	}

	@RequestMapping("/beginnerConRes")
	public String beginnerConRes(@ModelAttribute("form") LoginForm form, Model model) {
		return "BeginnerContributionResult";
	}

	@RequestMapping("/mediumCon")
	public String mediumCon(@ModelAttribute("form") LoginForm form, Model model) {
		return "MediumContribution";
	}

	@RequestMapping("/mediumConCon")
	public String mediumConCon(@ModelAttribute("form") LoginForm form, Model model) {
		return "MediumContributionConfirm";
	}

	@RequestMapping("/mediumConRes")
	public String mediumConRes(@ModelAttribute("form") LoginForm form, Model model) {
		return "MediumContributionResult";
	}

	@RequestMapping("/highCon")
	public String highCon(@ModelAttribute("form") LoginForm form, Model model) {
		return "HighContribution";
	}

	@RequestMapping("/highConCon")
	public String highConCon(@ModelAttribute("form") LoginForm form, Model model) {
		return "HighContributionConfirm";
	}

	@RequestMapping("/highConRes")
	public String highConRes(@ModelAttribute("form") LoginForm form, Model model) {
		return "HighContributionResult";
	}


}
