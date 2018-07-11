package jp.co.axiz.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.entity.Article;
import jp.co.axiz.web.service.ArticleUpdateService;

@Service
public class ArticleUpdateServiceImpl implements ArticleUpdateService{

	@Autowired
	ArticleDao ad;

	public void updateArticle(Article article) {
		ad. updateArticle(article);
	}

}