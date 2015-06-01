package com.maple.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/search")
	public String search(){
		return "search";
	}
	
	@RequestMapping("/profile")
	public String profile(){
		return "profile";
	}

	@RequestMapping("/board")
	public String board(){
		return "board";
	}
}
