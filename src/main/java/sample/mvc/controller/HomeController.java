package sample.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "/home")
	public String showHomePage() {
		return "welcome";
	}

	@RequestMapping(value = "/userForm")
	public String showUserFormPage() {
		return "user-form";
	}
	
	@RequestMapping(value = "/registerUser")
	public String registerUser() {
		return "user-success";
	}
	
	//Handling Model Data
	@RequestMapping(value = "/registerUserModel")
	public String registerUserWithModel(HttpServletRequest request, Model model) {
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String name = fName + " " + lName;
		model.addAttribute("fullName", name);
		return "user-success";
	}
}
