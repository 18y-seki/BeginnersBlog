package jp.co.axiz.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class AuthController {

	@RequestMapping(value = "adminSelect",params = "1", method = RequestMethod.POST)
	public String i(Model mode1) {
		return "usersDelete";

	}

	@RequestMapping(value = "articleList", method = RequestMethod.GET)
	public String g(Model mode1) {

		return "articleList";

	}


}