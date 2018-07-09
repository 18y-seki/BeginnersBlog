package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.InsertService;

@Controller
public class UsersInsertController {


	@Autowired
	InsertService is;

	@RequestMapping(value="/newInsert", method =RequestMethod.GET)
	public String jump(@ModelAttribute("form") Users users, Model model) {
		return "newInsert";
	}

	@RequestMapping(value="/newInsert", method =RequestMethod.POST)
	public String insert(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		if(users==null) {
			return "newInsert";
		}

		String id = users.getUserId();
		String name = users.getUserName();
		String pass = users.getPassword();

		if (id == null || id.isEmpty()) {
			return "newInsert";
		}

		if (name == null || name.isEmpty()) {
			return "newInsert";
		}

		if (pass == null || pass.isEmpty()) {
			return "newInsert";
		}

		session.setAttribute("form", users);
		return "newInsertConfirm";
	}

	@RequestMapping(value="/newInsertConfirm", method =RequestMethod.POST)
	public String newInsertConfirm(@ModelAttribute("form") Users users, Model model, HttpSession session) {

		String id = users.getUserId();
		String name = users.getUserName();
		String pass = users.getPassword();


				is.insertMembar(id,name,pass);

				return "newInsertResult";
			}

}