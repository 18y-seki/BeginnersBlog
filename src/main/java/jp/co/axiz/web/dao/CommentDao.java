package jp.co.axiz.web.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.entity.Comments;

@Repository
public class CommentDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private final String SQL_SELECT_ARTICLEID = "SELECT * FROM comment WHERE article_id = ?";


	public List<Comments> find(Comments comments){
		return null;
	}

	public Comments findById(Integer id) {
		return null;
	}

	public List<Comments> findByArticleId(Integer articleId) {
		List<Comments> list = jdbcTemplate.query(SQL_SELECT_ARTICLEID,
				new BeanPropertyRowMapper<Comments>(Comments.class),
				articleId);

		return list;
	}

	public void register(Comments comments) {

	}

	public void update(Comments comments) {

	}

	public void delete(Integer id) {

	}
}
