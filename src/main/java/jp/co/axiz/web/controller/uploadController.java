package jp.co.axiz.web.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import jp.co.axiz.web.entity.Form;

@Controller
public class uploadController {
	@Autowired
	ServletContext context;
	@Autowired
	HttpSession session;

	@RequestMapping("/uploadForm")
	public String uploadForm() {
		return "uploadForm";
	}
	@RequestMapping(value = "/uploadRecv", method = RequestMethod.POST)
	public String uploadRecv(@ModelAttribute("command") Form fm, BindingResult bindingResult, Model model) throws IOException {
		MultipartFile file = fm.getFile();
		String filename = file.getOriginalFilename();
		if(filename!=null || !("".equals(filename))) {
			Path path = Paths.get("C:\\Users\\admin\\Desktop\\aaa\\src\\main\\resources\\static\\image",
					file.getOriginalFilename());
			file.transferTo(path.toFile());
			model.addAttribute("fileName", path);
			String imageName = file.getOriginalFilename();
			String imagePath = "<img src=\"image/"+imageName+"\" style=width=\"150\" height=\"150\">";
			String content= (String) session.getAttribute("defo_content");
			session.setAttribute("defo_content", content+imagePath);
			session.setAttribute("imageName", imagePath);
		}
		return "easy";
	}
}