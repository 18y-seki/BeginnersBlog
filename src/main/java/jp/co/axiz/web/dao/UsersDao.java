package jp.co.axiz.web.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.entity.Users;

@Repository
public class UsersDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private final String SQL_SELECT_ID = "SELECT * FROM users WHERE user_id = ?";

	private final String SQL_SELECT_ID_PASS = "SELECT * FROM users "
						+ "WHERE user_id = ? AND password = ? AND delete_flg = 0";



	public List<Users> find(Users users){
		return null;
	}

	public Users findById(String userId) {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_ID,
				new BeanPropertyRowMapper<Users>(Users.class),
				userId);

		return list.get(0);
	}

	public Users findByIdPass(Users users) {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_ID_PASS,
				new BeanPropertyRowMapper<Users>(Users.class),
				users.getUserId(),
				users.getPassword());

		return list.get(0);
	}

	public void register(Users users) {

	}

	public void update(Users users) {

	}

	public void delete(Integer id) {

	}
}
