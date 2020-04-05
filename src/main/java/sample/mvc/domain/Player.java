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
	String state;
	String gender;
	String[] hobbies;

	// check-box using domain object
	Map<String, String> langOptions = new HashMap<>();

	public Player() {

		langOptions.put("Tamil", "TAMIL");
		langOptions.put("English", "ENGLISH");
		langOptions.put("Hindi", "HINDI");
	}

	public Map<String, String> getLangOptions() {
		return langOptions;
	}

	
	public String[] getHobbies() {
		return hobbies;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
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
