package com.maple.community.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maple.community.model.MemberModel;
import com.maple.community.service.MemberService;
import com.maple.community.service.MemberServiceImpl;

@Controller
public class MainController {
	
	@Autowired
	private MemberServiceImpl MemberService; 
	
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
	
	@RequestMapping("/modify")
	public String modify(MemberModel model, HttpSession session){
		model.setId((String) session.getAttribute("id"));
		MemberService.updateMember(model);
		System.out.println(model.getSex());
		return "modify";
		
		
	}
}
