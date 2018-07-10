package jp.co.axiz.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.SelectForm;
import jp.co.axiz.web.entity.UpdateUsers;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SelectService;

@Controller
public class AdminController {

	@Autowired
	UsersDao ud;

	@Autowired
	SelectService ss;

	@RequestMapping("/adminMypage")
	public String adminMypage(@ModelAttribute("form") Users users, Model model) {
		return "adminMypage";
	}

	@RequestMapping(value="/usersSelect", method=RequestMethod.GET)
	public String usersSelect(@ModelAttribute("form") Users users, Model model) {
		return "usersSelect";
	}

	@RequestMapping(value="/usersSelect", method=RequestMethod.POST)
	public String usersSelectID(@ModelAttribute("form") Users users, Model model) {
		return "usersSelect";
	}


	@RequestMapping("/adminUpdate")
	public String adminUpdate(@ModelAttribute("form") UpdateUsers users, Model model) {
		return "adminUpdate";
	}

	@RequestMapping("/adminUpdateConfirm")
	public String adminUpdateConfirm(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		session.setAttribute("newUsers", users);
		return "adminUpdateConfirm";
	}

	@RequestMapping("/adminUpdateResult")
	public String adminUpdateResult(@ModelAttribute("form") UpdateUsers users, Model model, HttpSession session) {
		Users newUsers = (Users)session.getAttribute("newUsers");

		String newPass = newUsers.getPassword();
		String rePass = users.getNewPassword();

		if(!(newPass.equals(rePass))){
			return "adminUpdateConfirm";
		}

		ud.updatePass(newUsers);

		session.removeAttribute("newUsers");

		return "adminUpdateResult";
	}

	@RequestMapping(value="/adminSelect", method =RequestMethod.GET)
	public String select(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		List<Users> list = ud.findAdminmembar();
		session.setAttribute("userList", list);


		return "adminSelect";
	}

	@RequestMapping(value="/adminList", method =RequestMethod.GET)
	public String list(@ModelAttribute("form") SelectForm form, Model model) {
		List<Users> list = ss.adminfind(form);

		if(list.size()==0) {
			model.addAttribute("msg", "　入力されたデータは存在しませんでした");
			return "adminSelect";
		}

		model.addAttribute("userList", list);
		return "adminSelect";
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



}
