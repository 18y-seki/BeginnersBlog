package jp.co.axiz.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.dao.UsersDao;
import jp.co.axiz.web.entity.SelectForm;
import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SelectService;

@Controller
public class AdminSelectController {


	@Autowired
	UsersDao ud;

	@Autowired
	SelectService ss;



//管理者用検索

	@RequestMapping(value="/adminSelect", method =RequestMethod.GET)
	public String select(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		List<Users> list = ud.findAdminmembar();
		session.setAttribute("adminSelect", list);


		return "adminSelect";
	}

	@RequestMapping(value="/adminList", method =RequestMethod.GET)
	public String list(@ModelAttribute("form") SelectForm form, Model model) {
		List<Users> list = ss.find(form);



		model.addAttribute("userList", list);
		return "adminSelect";
	}

}