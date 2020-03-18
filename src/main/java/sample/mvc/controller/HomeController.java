package sample.mvc.controller;

import org.springframework.stereotype.Controller;
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
}
