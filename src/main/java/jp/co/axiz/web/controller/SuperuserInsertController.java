package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SuperuserInsertService;

@Controller
public class SuperuserInsertController {


	@Autowired
	SuperuserInsertService sis;

	@RequestMapping(value="/adminInsert", method =RequestMethod.GET)
	public String janp(@ModelAttribute("form") Users users, Model model) {
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
			return "adminInsert";
		}

		if (pass == null || pass.isEmpty()) {
			return "adminInsert";
		}

		session.setAttribute("form", users);
		return "adminInsertConfirm";
	}

	@RequestMapping(value="/adminInsertConfirm")
	public String superuserInsertConfirm(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		String id = users.getUserId();
		String pass = users.getPassword();


		sis.insertAdmin(id,pass);

		return "adminInsertResult";
	}

}