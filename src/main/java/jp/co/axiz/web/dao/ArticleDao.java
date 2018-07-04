package jp.co.axiz.web.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.entity.Article;

@Repository
public class ArticleDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private final String SQL_SELECT_ALL = "SELECT * FROM article";


	public List<Article> find(Article article){
		return null;
	}

	public List<Article> findAll(){
		List<Article> list = jdbcTemplate.query(SQL_SELECT_ALL,
				new BeanPropertyRowMapper<Article>(Article.class));

		return list;
	}

	public Article findById(Integer id) {
		return null;
	}

	public void register(Article article) {

	}

	public void update(Article article) {

	}

	public void delete(Integer id) {

	}

}
