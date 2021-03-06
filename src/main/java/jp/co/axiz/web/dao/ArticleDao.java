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

	private final String SQL_SELECT_ALL = "SELECT * FROM article ORDER BY created_at";

	private final String SQL_SELECT_ID = "SELECT * FROM article WHERE article_id = ?";

	private final String SQL_SELECT_CATEGORY = "SELECT * FROM article "
			+ "WHERE category_01 = ? OR category_02 = ? OR category_03 = ?";

	private final String SQL_SELECT_USERID = "SELECT * FROM article WHERE user_id = ? ORDER BY created_at";


	private final String SQL_INSERT = "INSERT INTO article"
			+ "(title, article_text, user_id, category_01, category_02, category_03, created_at) "
			+ "VALUES (?, ?, ?, ?, ?, ?, current_timestamp(0))";



	private final String SQL_DELETE = "DELETE FROM article WHERE article_id = ?";

	private final String SQL_DELETE_USER = "DELETE FROM article WHERE user_id = ?";


	public List<Article> findAll(){
		List<Article> list = jdbcTemplate.query(SQL_SELECT_ALL,
				new BeanPropertyRowMapper<Article>(Article.class));

		return list;
	}

	public Article findById(Integer articleId) {
		List<Article> list = jdbcTemplate.query(SQL_SELECT_ID,
				new BeanPropertyRowMapper<Article>(Article.class),
				articleId);

		if(list.size()==0) {
			return null;
		}

		return list.get(0);
	}

	public List<Article> findByUserid(String userId) {
		List<Article> list = jdbcTemplate.query(SQL_SELECT_USERID,
				new BeanPropertyRowMapper<Article>(Article.class),
				userId);

		return list;
	}

	public List<Article> findByCategory(String category) {
		List<Article> list = jdbcTemplate.query(SQL_SELECT_CATEGORY,
				new BeanPropertyRowMapper<Article>(Article.class),
				category,
				category,
				category);

		return list;
	}

	public void register(Article article) {
		jdbcTemplate.update(SQL_INSERT,
				article.getTitle(),
				article.getArticleText(),
				article.getUserId(),
				article.getCategory_01(),
				article.getCategory_02(),
				article.getCategory_03());

	}

	public void update(Article article) {

	}

	public void delete(Integer articleId) {
		jdbcTemplate.update(SQL_DELETE,
				articleId);
	}

	public void deleteUser(String userId) {
		jdbcTemplate.update(SQL_DELETE_USER,
				userId);
	}

}
