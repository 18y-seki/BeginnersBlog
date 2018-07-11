package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.service.ArticleUpdateService;



@Controller
public class ArticleUpdateController {

	@Autowired
	ArticleDao ad;

	@Autowired
	ArticleUpdateService aus;

	@RequestMapping("/articleUpdate" )
	public String jump(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		Article art =(Article)session.getAttribute("art");

		return "articleUpdate";

	}




	@RequestMapping("/articleUpdateConfirm")
	public String articleUpdate(@ModelAttribute("form") Article article, Model model,HttpSession session) {
		model.addAttribute("form", article);

		String title = article.getTitle();
		String articleText = article.getArticleText();
		String category = article.getCategory01();
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
			article.setCategory01(cate[0]);
			article.setCategory02(cate[1]);
			article.setCategory03(cate[2]);
		}







		session.setAttribute("form", article);

		return "articleUpdateConfirm";

	}

	@RequestMapping("/articleUpdateResult")
	public String articleUpdateConfirm(@ModelAttribute("form") Article article, Model model, HttpSession session) {

		Article form = (Article)session.getAttribute("form");

				article.setCategory01(form.getCategory01());
				article.setCategory02(form.getCategory02());
				article.setCategory03(form.getCategory03());



		aus.updateArticle(article);

		return "articleUpdateResult";

	}
}





/*Integer id = article.getArticleId();
	    String title= article.getTitle();
		String text=article.getArticleText();



		Article a = ad.findById(articleId);



		session.setAttribute("login", a);

		return "articleUpdateConfirm";
	}


	@RequestMapping("/articleUpdateConfirm" , method=RequestMethod.POST)
	public String articleUpdateConfirm(@ModelAttribute("form") Article article, Model model) {


		 Integer Id
		 String title
		 String articleText
		 String userId
		 String category01
		 String category02
		 String category03


		return "articleUpdateResult";
	}
 */

