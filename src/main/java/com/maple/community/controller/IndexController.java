package com.maple.community.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maple.community.model.MemberModel;
import com.maple.community.service.MemberServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {
	@Autowired
	private MemberServiceImpl memberservice;
	private static final Logger logger = LoggerFactory
			.getLogger(IndexController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	// @RequestMapping(value = "/", method = RequestMethod.GET)
	// public String home(Locale locale, Model model) {
	// logger.info("Welcome home! The client locale is {}.", locale);
	//
	// Date date = new Date();
	// DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
	// DateFormat.LONG, locale);
	//
	// String formattedDate = dateFormat.format(date);
	//
	// model.addAttribute("serverTime", formattedDate );
	//
	// return "home";
	// }

	@RequestMapping("/example")
	public String example() {
		return "example";
	}

	//TODO 세션으로 메인페이지 접근하는법 알아보기
	@RequestMapping("/login")
	public ModelAndView login(MemberModel model) {
		
		//loginResult id,passwd 해당되는 값이 존재하면 mav result 값에 true 넣어 전달
		ModelAndView mav = new ModelAndView("loginResult");
		model = memberservice.login(model);
		if(model != null){
			mav.addObject("result", true);
		}
		else{
			mav.addObject("result", false);
		}
		
		return mav;
	}
	
	@RequestMapping("/main")
	public String main(){
		return "main";
	}

	@RequestMapping("/")
	// 메인 페이지
	public String index() {
		return "index";
	}

	// 회원가입 처리
	// TODO 시간남으면 비밀번호확인 로직 구현
	@RequestMapping("/join")
	public String join(HttpServletRequest request,MemberModel model) {
		System.out.println(model.getId()+model.getName()+model.getPasswd());
		if (memberservice.join(model)) {
			return "joinSuccess";
		} else {
			return "joinFail";
		}
	}
}
