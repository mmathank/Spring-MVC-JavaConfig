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
@PropertySource(ignoreResourceNotFound = true, value = "classpath:state_en.properties")
public class PlayerController {
	
	@Value("#{${state.options}}")
	public Map<String, String> stateOptions;
	
	@RequestMapping("/playerForm")
	public String showPlayerForm(Model model) {
		
		Player player = new Player();
		model.addAttribute("player", player);
		model.addAttribute("stateOptions", stateOptions);
		return "player-form";
	}
	
	@RequestMapping("/processPlayerForm")
	public String processPlayerForm(@ModelAttribute("player") Player player) {
		return "player-success";
	}
}
