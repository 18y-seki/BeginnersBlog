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
public class UsersController {

	@Autowired
	UsersDao ud;


	@RequestMapping("/usersLeave")
	public String usersLeave(@ModelAttribute("form") Users users, Model model) {
		return "usersLeave";
	}

	@RequestMapping("/usersLeaveResult")
	public String usersLeaveResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		return "usersLeaveResult";
	}


	@RequestMapping("/usersDelete")
	public String usersDelete(@ModelAttribute("form") Users users, Model model) {
		model.addAttribute("users", users);
		return "usersDelete";
	}

	@RequestMapping("/usersDeleteResult")
	public String usersDeleteResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		return "usersDeleteResult";
	}

	@RequestMapping("/adminDelete")
	public String adminDelete(@ModelAttribute("form") Users users, Model model) {
		model.addAttribute("users", users);
		return "adminDelete";
	}

	@RequestMapping("/adminDeleteResult")
	public String adminDeleteResult(@ModelAttribute("form") Users users, Model model) {
		ud.delete(users.getUserId());
		return "adminDeleteResult";
	}




	@RequestMapping("/usersUpdate")
	public String usersUpdate(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		Users u = (Users)session.getAttribute("login");
		session.setAttribute("beforeUser", u);
		return "usersUpdate";
	}

	@RequestMapping("/usersUpdateConfirm")
	public String usersUpdateConfirm(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		session.setAttribute("newUsers", users);
		return "usersUpdateConfirm";
	}

	@RequestMapping("/usersUpdateResult")
	public String usersUpdateResult(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		Users newUsers = (Users)session.getAttribute("newUsers");

		System.out.println(users.getYear());

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
		Users newUsers = (Users)session.getAttribute("newUsers");

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
