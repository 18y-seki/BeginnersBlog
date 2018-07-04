package jp.co.axiz.web.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.entity.Good;

@Repository
public class GoodDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	private final String SQL_SELECT_ARTICLEID = "SELECT * FROM good WHERE article_id = ? ";
	private final String SQL_SELECT_ARTICLE_USERS = "SELECT * FROM good WHERE article_id = ? AND user_id = ?";


	public List<Good> find(Good good){
		return null;
	}

	public Good findById(Integer id) {
		return null;
	}

	public List<Good> findByArticleId(Integer articleId) {
		List<Good> list = jdbcTemplate.query(SQL_SELECT_ARTICLEID,
				new BeanPropertyRowMapper<Good>(Good.class),
				articleId);

		return list;
	}

	public Good findByArticleUsers(Integer articleId, Integer userId) {
		List<Good> list = jdbcTemplate.query(SQL_SELECT_ARTICLE_USERS,
				new BeanPropertyRowMapper<Good>(Good.class),
				articleId,
				userId);

		return list.get(0);
	}

	public void register(Good good) {

	}

	public void update(Good good) {

	}

	public void delete(Integer id) {

	}
}
