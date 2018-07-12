package jp.co.axiz.web.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.dao.ImageDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.entity.Users;

@Controller
public class ArticleContributionController {

	@Autowired
	ArticleDao ad;

	@Autowired
	ImageDao id;

	@Autowired
	ServletContext context;
	@Autowired
	HttpSession session;

	@RequestMapping("/easyContribution")
	public String easyContribution(@ModelAttribute("form") Article article, Model model) {
		return "easyContribution";
	}

	@RequestMapping("/easyContributionConfirm")
	public String easyContributionConfirm(@ModelAttribute("form") Article article, Model model) throws IOException {
		MultipartFile file = article.getFile();
		String filename = file.getOriginalFilename();
		if(filename!=null || !("".equals(filename))) {
			Path path = Paths.get("C:\\pleiades\\workspace\\BeginnersBlog-kuma\\src\\main\\resources\\static\\image",
					file.getOriginalFilename());
			file.transferTo(path.toFile());
			model.addAttribute("fileName", path);
			String imageName = file.getOriginalFilename();
			String imagePath = "<img src=\"image/"+imageName+"\" style=width=\"150\" height=\"150\">";
			String content= (String) session.getAttribute("defo_content");
			session.setAttribute("defo_content", content+imagePath);
			session.setAttribute("imageName", imagePath);
			session.setAttribute("contribution",article);
		}
		return "easyContributionConfirm";
	}


	@RequestMapping("/normalContribution")
	public String normalContribution(@ModelAttribute("form") Article article, Model model) {

		return "normalContribution";
	}

	@RequestMapping("/normalContributionConfirm")
	public String normalContributionConfirm(@ModelAttribute("form") Article article, Model model) {
		session.setAttribute("contribution",article);
		return "normalContributionConfirm";
	}



	@RequestMapping("/hardContribution")
	public String hardContribution(@ModelAttribute("form") Article article, Model model) {
		return "hardContribution";
	}

	@RequestMapping("/hardContributionConfirm")
	public String hardContributionConfirm(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		session.setAttribute("contribution",article);
		return "hardContributionConfirm";
	}


	@RequestMapping("/articleContributionResult")
	public String articleContributionResult(@ModelAttribute("form") Article article, Model model, HttpSession session) {
		Article contribution =(Article)session.getAttribute("contribution");
		Users login = (Users)session.getAttribute("login");
		contribution.setUserId(login.getUserId());

		ad.insertCat1(contribution);

//		String imagePath = (String)session.getAttribute("imageName");
//		if(imagePath!=null) {
//			id.insert(contribution.getArticleId(), imagePath);
//		}
		session.removeAttribute("contribution");
		return "articleContributionResult";
	}
}
