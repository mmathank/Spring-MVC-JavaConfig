package sample.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import sample.mvc.domain.Player;

@Controller
@RequestMapping("/player")
public class PlayerController {

	@RequestMapping("/playerForm")
	public String showPlayerForm(Model model) {
		
		model.addAttribute("player", new Player());
		return "player-form";
	}
	
	@RequestMapping("/processPlayerForm")
	public String processPlayerForm(@ModelAttribute("player") Player player) {
		//log the player data on console
		System.out.println("First Name: " + player.getFirstName());
		System.out.println("First Name: " + player.getLastName());
		return "player-success";
	}
}
