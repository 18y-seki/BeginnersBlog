package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.Users;

@Controller
public class AdminInsertController {
	@Autowired
	UsersDao ud;

	@RequestMapping(value="/adminInsert", method =RequestMethod.GET)
	public String jump(@ModelAttribute("form") Users users, Model model) {
		return "adminInsert";
	}

	@RequestMapping(value="/adminInsert", method =RequestMethod.POST)
	public String insert(@ModelAttribute("form") Users users, Model model, HttpSession session) {

		if(users==null) {
			return "adminInsert";
		}

		String id = users.getUserId();
		String pass = users.getPassword();

		if (id == null || id.isEmpty()) {
			model.addAttribute("msg", "必須項目を入力してください");
			return "adminInsert";
		}

		if (pass == null || pass.isEmpty()) {
			model.addAttribute("msg", "必須項目を入力してください");
			return "adminInsert";
		}


		Users u = ud.findById(id);

		if(u ==null) {
			session.setAttribute("form", users);
			return "adminInsertConfirm";

		}

		model.addAttribute("msg", "そのIDは別のユーザーが既に使用しています。");
		return "adminInsert";


	}

	@RequestMapping(value="/adminInsertConfirm")
	public String superuserInsertConfirm(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		String id = users.getUserId();
		String pass = users.getPassword();

		ud.insertAdmin(id,pass);

		return "adminInsertResult";
	}

}
