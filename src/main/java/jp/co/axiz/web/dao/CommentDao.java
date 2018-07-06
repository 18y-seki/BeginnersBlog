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

	private final String SQL_INSERT = "INSERT INTO comment(article_id, user_id, comment_text) "
			+ "VALUES(?, ?, ?)";

	private final String SQL_DELETE = "DELETE FROM comment WHERE comment_id = ?";



	public List<Comments> findByArticleId(Integer articleId) {
		List<Comments> list = jdbcTemplate.query(SQL_SELECT_ARTICLEID,
				new BeanPropertyRowMapper<Comments>(Comments.class),
				articleId);

		return list;
	}

	public void register(Comments comments) {
		jdbcTemplate.update(SQL_INSERT,
				comments.getArticleId(),
				comments.getUserId(),
				comments.getCommentText());

	}

	public void update(Comments comments) {

	}

	public void delete(Integer commentId) {
		jdbcTemplate.update(SQL_DELETE,
				commentId);

	}
}
