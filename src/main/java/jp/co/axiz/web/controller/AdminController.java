package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.UpdateUsers;
import jp.co.axiz.web.entity.Users;

@Controller
public class AdminController {

	@Autowired
	UsersDao ud;

	@RequestMapping("/adminMypage")
	public String adminMypage(@ModelAttribute("form") Users users, Model model) {
		return "adminMypage";
	}

	@RequestMapping("/adminUpdate")
	public String adminUpdate(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		Users u = (Users)session.getAttribute("login");
		Users beforeUser = ud.findById(u.getUserId());
		session.setAttribute("beforeUser", beforeUser);
		return "adminUpdate";
	}

	@RequestMapping("/adminUpdateConfirm")
	public String adminUpdateConfirm(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		session.setAttribute("newUsers", users);
		return "adminUpdateConfirm";
	}

	@RequestMapping("/adminUpdateResult")
	public String adminUpdateResult(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		UpdateUsers newUsers = (UpdateUsers)session.getAttribute("newUsers");

		Users u = (Users)session.getAttribute("login");
		String id = u.getUserId();

		newUsers.setUserId(id);

		String newPass = newUsers.getPassword();
		String rePass = users.getNewPassword();

		if(!(newPass.equals(rePass))){
			return "adminUpdateConfirm";
		}

		ud.updatePass(newUsers);

		session.removeAttribute("newUsers");

		return "adminUpdateResult";
	}
}
