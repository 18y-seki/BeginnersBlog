package jp.co.axiz.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.axiz.web.dao.ArticleDao;
import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.UpdateUsers;
import jp.co.axiz.web.entity.Users;

@Controller
public class UsersController {

	@Autowired
	UsersDao ud;

	@Autowired
	ArticleDao ad;

	@RequestMapping("/usersMypage")
	public String usersMypage(@ModelAttribute("form") Users users, Model model) {
		return "usersMypage";
	}

	@RequestMapping("/usersLeave")
	public String usersLeave(@ModelAttribute("form") Users users, Model model) {
		return "usersLeave";
	}

	@RequestMapping("/usersLeaveResult")
	public String usersLeaveResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		ad.deleteUser(users.getUserId());
		return "usersLeaveResult";
	}


	@RequestMapping("/usersDelete")
	public String usersDelete(@ModelAttribute("form") Users users, @RequestParam("id")String id, Model model) {
		List<Users> list = ud.findMembarById(id);
		Users u = list.get(0);

		users.setUserId(u.getUserId());
		users.setUserName(u.getUserName());


		return "usersDelete";
	}

	@RequestMapping("/usersDeleteResult")
	public String usersDeleteResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		ad.deleteUser(users.getUserId());
		return "usersDeleteResult";
	}


	@RequestMapping("/adminDelete")
	public String adminDelete(@ModelAttribute("form") Users users, @RequestParam("id")String id, Model model) {
		users.setUserId(id);
		model.addAttribute("users", users);
		return "adminDelete";
	}

	@RequestMapping("/adminDeleteResult")
	public String adminDeleteResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		return "adminDeleteResult";
	}


	@RequestMapping("/usersUpdate")
	public String usersUpdate(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		Users u = (Users)session.getAttribute("login");
		Users beforeUser = ud.findById(u.getUserId());
		session.setAttribute("beforeUser", beforeUser);
		return "usersUpdate";
	}

	@RequestMapping("/usersUpdateConfirm")
	public String usersUpdateConfirm(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		String birthday= users.getNewYear()+"-"+users.getNewMonth()+"-"+users.getNewDate();
		users.setNewBirthday(birthday);

		session.setAttribute("newUsers", users);
		return "usersUpdateConfirm";
	}

	@RequestMapping("/usersUpdateResult")
	public String usersUpdateResult(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		UpdateUsers newUsers = (UpdateUsers)session.getAttribute("newUsers");
		Users u = (Users)session.getAttribute("login");
		String id = u.getUserId();

		newUsers.setUserId(id);

		ud.updateProfile(newUsers);
		session.removeAttribute("beforeUser");
		session.removeAttribute("newUsers");
		return "usersUpdateResult";
	}


	@RequestMapping("/usersPassUpdate")
	public String usersPassUpdate(@ModelAttribute("form") UpdateUsers users, Model model) {
		return "usersPassUpdate";
	}

	@RequestMapping("/usersPassUpdateConfirm")
	public String usersPassUpdateConfirm(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		session.setAttribute("newUsers", users);
		return "usersPassUpdateConfirm";
	}

	@RequestMapping("/usersPassUpdateResult")
	public String usersPassUpdateResult(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		UpdateUsers newUsers = (UpdateUsers)session.getAttribute("newUsers");

		String newPass = newUsers.getPassword();
		String rePass = users.getNewPassword();

		if(!(newPass.equals(rePass))){
			return "usersPassUpdateConfirm";
		}

		ud.updatePass(newUsers);

		session.removeAttribute("newUsers");

		return "usersPassUpdateResult";
	}




}
