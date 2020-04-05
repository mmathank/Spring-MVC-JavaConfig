package sample.mvc.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.Map;

import sample.mvc.domain.Player;

@Controller
@RequestMapping("/player")
@PropertySource(ignoreResourceNotFound = true, value = "classpath:gender.properties")
public class PlayerController {
	
	@Value("#{${genderOptions}}")
	public Map<String, String> genderOptions;
	
	@RequestMapping("/playerForm")
	public String showPlayerForm(Model model) {
		
		Player player = new Player();
		model.addAttribute("player", player);
		model.addAttribute("genderOptions", genderOptions);
		return "player-form";
	}
	
	@RequestMapping("/processPlayerForm")
	public String processPlayerForm(@ModelAttribute("player") Player player) {
		return "player-success";
	}
}
