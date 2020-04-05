package sample.mvc.domain;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class Player {

	String firstName;
	String lastName;
	String level;
	String language;
	String gender;
	
	//check-box using domain object
	Map<String, String> langOptions = new HashMap<>();
	
	public Player() {
		
		langOptions.put("Tamil", "TAMIL");
		langOptions.put("English", "ENGLISH");
		langOptions.put("Hindi", "HINDI");
	}
	
	public Map<String, String> getLangOptions() {
		return langOptions;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
