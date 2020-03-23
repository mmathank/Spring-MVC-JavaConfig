package sample.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	//Handling Form Data without Model
	@RequestMapping(value = "/registerUser")
	public String registerUser() {
		return "user-success";
	}
	
	//Handling Form Data with Model
	@RequestMapping(value = "/registerUserModel")
	public String registerUserWithModel(HttpServletRequest request, Model model) {
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String name = fName + " " + lName;
		model.addAttribute("fullName", name);
		return "user-success";
	}
	
	//Handling Form Data using @RequestParam with Model
	@RequestMapping(value = "/registerUserModelTwo")
	public String registerUserWithModelTwo(@RequestParam String firstName, 
			@RequestParam String lastName,
			Model model) {
		String fName = firstName;
		String lName = lastName;
		String name = fName + " " + lName;
		model.addAttribute("fullName", name);
		return "user-success";
	}
}
