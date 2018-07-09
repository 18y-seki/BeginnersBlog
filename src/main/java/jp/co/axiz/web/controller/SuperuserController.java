package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.UpdateUsers;
import jp.co.axiz.web.entity.Users;

@Controller
public class SuperuserController {

	@Autowired
	UsersDao ud;


	@RequestMapping("/superuserMypage")
	public String superuserMypage(@ModelAttribute("form") Users users, Model model) {
		return "superuserMypage";
	}

	@RequestMapping(value="/adminSelect", method=RequestMethod.GET)
	public String adminSelect(@ModelAttribute("form") Users users, Model model) {
		return "adminSelect";
	}

	@RequestMapping(value="/adminSelect", method=RequestMethod.POST)
	public String adminSelectID(@ModelAttribute("form") Users users, Model model) {
		return "adminSelect";
	}


	@RequestMapping("/superuserUpdate")
	public String superuserUpdate(@ModelAttribute("form") UpdateUsers users, Model model) {
		return "superuserUpdate";
	}

	@RequestMapping("/superuserUpdateConfirm")
	public String superuserUpdateConfirm(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		session.setAttribute("newUsers", users);
		return "superuserUpdateConfirm";
	}

	@RequestMapping("/superuserUpdateResult")
	public String superuserUpdateResult(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		Users newUsers = (Users)session.getAttribute("newUsers");

		String newPass = newUsers.getPassword();
		String rePass = users.getNewPassword();

		if(!(newPass.equals(rePass))){
			return "superuserUpdateConfirm";
		}

		ud.updatePass(newUsers);

		session.removeAttribute("newUsers");

		return "superuserUpdateResult";
	}

}
