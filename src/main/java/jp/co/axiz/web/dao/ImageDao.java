package jp.co.axiz.web.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.entity.Images;

@Repository
public class ImageDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	private final String SQL_SELECT_ARTICLEID = "SELECT * FROM image WHERE article_id = ? ";

	private final String SQL_INSERT = "INSERT INTO image(article_id, image_path) VALUES(?, ?)";

	public List<Images> find(Images images){
		return null;
	}

	public Images findById(Integer id) {
		return null;
	}

	public List<Images> findByArticle(Integer articleId) {
		List<Images> list = jdbcTemplate.query(SQL_SELECT_ARTICLEID,
				new BeanPropertyRowMapper<Images>(Images.class),
				articleId);

		return list;
	}

	public void insert(Integer articleId, String imagePath) {
		jdbcTemplate.update(SQL_INSERT,
				articleId,
				imagePath);
	}

	public void update(Images images) {

	}

	public void delete(Integer id) {

	}
}
