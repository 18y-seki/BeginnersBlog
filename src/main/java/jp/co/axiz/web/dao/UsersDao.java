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

	private final String SQL_SELECT_MEMBAR = "SELECT * FROM users "
			+ "WHERE account_level = 0 AND delete_flg = 0";

	private final String SQL_SELECT_ADMIN = "SELECT * FROM users "
			+ "WHERE account_level = 1 AND delete_flg = 0";


	private final String SQL_INSERT_MEMBAR = "INSERT INTO users(user_id, user_name, password, delete_flg, account_level)"
											+ " VALUES(?, ?, ?, ?, ?)";

	private final String SQL_INSERT_ADMIN = "INSERT INTO users(user_id, password, delete_flg, account_level) "
											+ "VALUES(?, ?, ?, ?)";

	private final String SQL_UPDATE_PASS = "UPDATE users SET password = ? WHERE user_id = ?";

	private final String SQL_UPDATE_PROFILE = "UPDATE users SET user_name= ?, sex= ?, birthday= ?, "
													+ "hobby= ?, greet= ? WHERE user_id = ?";

	private final String SQL_DELETE_USERS = "UPDATE users SET delete_flg = 1 WHERE user_id = ?";



	public Users findById(String userId) {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_ID,
				new BeanPropertyRowMapper<Users>(Users.class),
				userId);

		if(list.size()==0) {
			return null;
		}

		return list.get(0);
	}

	public List<Users> findMembar() {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_MEMBAR,
				new BeanPropertyRowMapper<Users>(Users.class));

		return list;
	}

	public List<Users> findAdmin() {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_ADMIN,
				new BeanPropertyRowMapper<Users>(Users.class));

		return list;
	}

	public Users findByIdPass(Users users) {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_ID_PASS,
				new BeanPropertyRowMapper<Users>(Users.class),
				users.getUserId(),
				users.getPassword());

		if(list.size()==0) {
			return null;
		}

		return list.get(0);
	}

	public void insertMembar(Users users) {
		jdbcTemplate.update(SQL_INSERT_MEMBAR,
				users.getUserId(),
				users.getUserName(),
				users.getPassword(),
				0,
				0);
	}

	public void insertAdmin(Users users) {
		jdbcTemplate.update(SQL_INSERT_ADMIN,
				users.getUserId(),
				users.getPassword(),
				0,
				1);
	}

	public void updatePass(Users users) {
		jdbcTemplate.update(SQL_UPDATE_PASS,
				users.getPassword(),
				users.getUserId());
	}

	public void updateProfile(Users users) {
		jdbcTemplate.update(SQL_UPDATE_PROFILE,
				users.getPassword(),
				users.getSex(),
				users.getBirthday(),
				users.getHobby(),
				users.getGreet(),
				users.getUserId());
	}

	public void delete(String userId) {
		jdbcTemplate.update(SQL_DELETE_USERS,
				userId);
	}
}