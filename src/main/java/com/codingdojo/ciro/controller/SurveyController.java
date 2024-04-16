package com.codingdojo.ciro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SurveyController {
	
	private String[] getLanguages() {
		return new String[] {
				"Java", "Python"
		};
	}
	
	private String[] getLocations() {
		return new String[] {
				"Seattle", "Dallas", "San Jose"
		};
	}
	
	@GetMapping("/")
	public String index(Model model) {
		
		model.addAttribute("locations", getLocations());
		model.addAttribute("languages", getLanguages());
		
		return "index.jsp";
	}
	
	@PostMapping("/result")
	public String result(Model model,
							@RequestParam(value="name") String name,
							@RequestParam(value="location") String location,
							@RequestParam(value="language") String language,
							@RequestParam(value="comment") String comment) {
		

			model.addAttribute("name", name);
			model.addAttribute("location", location);
			model.addAttribute("language", language);
			model.addAttribute("comment", comment);

		return "result.jsp";
	}
}
