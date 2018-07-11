package jp.co.axiz.web.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.axiz.web.entity.UpdateUsers;
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

	private final String SQL_SELECT_MEMBAR_ID = "SELECT * FROM users "
			+ "WHERE user_id=? AND account_level = 0 AND delete_flg = 0";

	private final String SQL_SELECT_ADMIN = "SELECT * FROM users "
			+ "WHERE account_level = 1 AND delete_flg = 0";


	private final String SQL_SELECT_ADMIN_ID = "SELECT * FROM users "
			+ "WHERE user_id=? AND account_level = 1 AND delete_flg = 0";


	private final String SQL_INSERT_MEMBAR = "INSERT INTO users(user_id, user_name, password, delete_flg, account_level)"
											+ " VALUES(?, ?, ?, 0, 0)";

	private final String SQL_INSERT_ADMIN = "INSERT INTO users(user_id, password, delete_flg, account_level) "
											+ "VALUES(?, ?, 0, 1)";

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

	public List<Users> findMembarById(String userId) {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_MEMBAR_ID,
				new BeanPropertyRowMapper<Users>(Users.class),
				userId);
		return list;
	}

	public List<Users> findAdmin() {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_ADMIN,
				new BeanPropertyRowMapper<Users>(Users.class));

		return list;
	}

	public List<Users> findAdminById(String userId) {
		List<Users> list = jdbcTemplate.query(SQL_SELECT_ADMIN_ID,
				new BeanPropertyRowMapper<Users>(Users.class),
				userId);
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

	public void insertMembar(String id, String name, String pass) {
		jdbcTemplate.update(SQL_INSERT_MEMBAR,
				id,name,pass);
	}

	public void insertAdmin(String id, String pass) {
		jdbcTemplate.update(SQL_INSERT_ADMIN,
				id,pass);
	}

	public void updatePass(UpdateUsers newUsers) {
		jdbcTemplate.update(SQL_UPDATE_PASS,
				newUsers.getNewPassword(),
				newUsers.getUserId());
	}

	public void updateProfile(UpdateUsers users) {
		try {
			String birthday = users.getNewBirthday();
			SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = sdFormat.parse(birthday);

			jdbcTemplate.update(SQL_UPDATE_PROFILE,
					users.getNewuserName(),
					users.getNewSex(),
					date,
					users.getNewHobby(),
					users.getNewGreet(),
					users.getUserId());
		}catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public void delete(String userId) {
		jdbcTemplate.update(SQL_DELETE_USERS,
				userId);
	}
}
