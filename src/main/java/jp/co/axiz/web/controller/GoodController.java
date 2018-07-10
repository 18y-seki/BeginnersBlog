package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.GoodDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.entity.Comments;
import jp.co.axiz.web.entity.Good;
import jp.co.axiz.web.entity.Users;

@Controller
public class GoodController {

	@Autowired
	GoodDao gd;

	@RequestMapping("/good")
	public String good(@ModelAttribute("form") Comments comment, Model model, HttpSession session) {

		Article selectArt = (Article)session.getAttribute("art");
		Users loginuser = (Users)session.getAttribute("login");

		Integer art = selectArt.getArticleId();
		String login = loginuser.getUserId();

		Good good = gd.findByArticleUsers(art, login);

		boolean isGood = good!=null ;

		if(isGood) {
			gd.delete(good);
			session.removeAttribute("isGood");
		}else {
			gd.insert(art,login);
			session.setAttribute("isGood", "good");
		}



		return "article";
	}

}
