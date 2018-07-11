package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

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

	@RequestMapping("/articleUpdate" )
	public String jump(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		Article art =(Article)session.getAttribute("art");
		article.setTitle(art.getTitle());
		article.setArticleText(art.getArticleText());
		article.setCategory(art.getCategory_01());
		return "articleUpdate";

	}


	@RequestMapping("/articleUpdateConfirm")
	public String articleUpdate(@ModelAttribute("form") Article article, Model model,HttpSession session) {
		Article art =(Article)session.getAttribute("art");
		String title = article.getTitle();
		String articleText = article.getArticleText();
		String category = article.getCategory();
		String[] cate = category.split(",", 0);

		if(title.equals("")){
			model.addAttribute("msg", "タイトルが未入力です。");
			return "articleUpdate";
		}
		if(articleText.equals("")){
			model.addAttribute("msg", "本文が未入力です。");
			return "articleUpdate";
		}
		if (cate.length>3) {
			model.addAttribute("msg", "カテゴリの指定は３つまでです。");
			return "articleUpdate";
		}else {
			article.setCategory_01(cate[0]);
			article.setCategory_02(cate[1]);
			article.setCategory_03(cate[2]);
		}
		article.setArticleId(art.getArticleId());
		session.setAttribute("form", article);

		return "articleUpdateConfirm";

	}

	@RequestMapping("/articleUpdateResult")
	public String articleUpdateConfirm(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		Article form = (Article)session.getAttribute("form");

		article.setArticleId(form.getArticleId());
		article.setCategory_01(form.getCategory_01());
		article.setCategory_02(form.getCategory_02());
		article.setCategory_03(form.getCategory_03());

		ad.update(article);

		return "articleUpdateResult";

	}



	@RequestMapping("/articleDelete")
	public String articleDelete(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		Article art =(Article)session.getAttribute("art");

		article.setArticleId(art.getArticleId());
		article.setTitle(art.getTitle());
		article.setUserId(art.getUserId());

		return "articleDelete";
	}

	@RequestMapping("/articleDeleteResult")
	public String articleDeleteRes(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		ad.delete(article.getArticleId());
		session.removeAttribute("art");
		return "articleDeleteResult";
	}

}
