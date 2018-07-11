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
public class UsersInsertController {


	@Autowired
	UsersDao ud;

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
			model.addAttribute("msg", "必須項目を入力してください");
			return "newInsert";
		}

		if (id.length()>8) {
			model.addAttribute("msg", "IDを8文字以内で入力してください");
			return "newInsert";
		}


		if (name == null || name.isEmpty()) {
			model.addAttribute("msg", "必須項目を入力してください");
			return "newInsert";
		}

		if (name.length()>8) {
			model.addAttribute("msg", "NAMEを8文字以内で入力してください");
			return "newInsert";
		}



		if (pass == null || pass.isEmpty()) {
			model.addAttribute("msg", "必須項目を入力してください");
			return "newInsert";
		}

		if (pass.length()!=4) {
			model.addAttribute("msg", "PASSを4文字で入力してください");
			return "newInsert";
		}




		Users u = ud.findById(id);

		if(u ==null) {
			session.setAttribute("form", users);
			return "newInsertConfirm";
		}

		model.addAttribute("msg", "そのIDは別のユーザーが既に使用しています。");
		return "newInsert";


	}

	@RequestMapping(value="/newInsertConfirm", method =RequestMethod.POST)
	public String newInsertConfirm(@ModelAttribute("form") Users users, Model model, HttpSession session) {

		String id = users.getUserId();
		String name = users.getUserName();
		String pass = users.getPassword();


				ud.insertMembar(id,name,pass);

				return "newInsertResult";
			}

}