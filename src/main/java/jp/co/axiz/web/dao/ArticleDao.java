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

	private final String SQL_SELECT_ID = "SELECT * FROM article WHWRE article_id = ?";

	private final String SQL_SELECT_CATEGORY = "SELECT * FROM article "
			+ "WHWRE category_01 = ? OR category_02 = ? OR category_03 = ?";

	private final String SQL_SELECT_USERID = "SELECT * FROM article WHWRE user_id = ?";


	private final String SQL_INSERT = "INSERT INTO article"
			+ "(title, article_text, user_id, category_01, category_02, category_03) "
			+ "VALUES (?, ?, ?, ?, ?, ?)";




	public List<Article> find(Article article){
		return null;
	}

	public List<Article> findAll(){
		List<Article> list = jdbcTemplate.query(SQL_SELECT_ALL,
				new BeanPropertyRowMapper<Article>(Article.class));

		return list;
	}

	public Article findById(Integer articleId) {
		List<Article> list = jdbcTemplate.query(SQL_SELECT_ID,
				new BeanPropertyRowMapper<Article>(Article.class),
				articleId);

		return list.get(0);
	}

	public void register(Article article) {

	}

	public void update(Article article) {

	}

	public void delete(Integer id) {

	}

}
