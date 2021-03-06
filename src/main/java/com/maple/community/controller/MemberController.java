package com.maple.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maple.community.model.MemberModel;
import com.maple.community.model.Subject_board;
import com.maple.community.service.MemberServiceImpl;
import com.maple.community.service.SubjectServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	@Autowired
	private MemberServiceImpl memberservice;
	@Autowired
	private SubjectServiceImpl subjectservice;
	private static final Logger logger = LoggerFactory
			.getLogger(MemberController.class);

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
	public ModelAndView login(MemberModel model, HttpSession session) {
		
		//loginResult id,passwd 해당되는 값이 존재하면 mav result 값에 true 넣어 전달
		ModelAndView mav = new ModelAndView("loginResult");
		model = memberservice.login(model);
		if(model != null){
			mav.addObject("result", true);
			session.setAttribute("username", model.getName());
			session.setAttribute("id",model.getId());
			if(model.getImage() != null)
				session.setAttribute("img", model.getImage());
		}
		else{
			mav.addObject("result", false);
		}
		
		return mav;
	}
	
	@RequestMapping("/main")
	public String main(HttpSession session,Model model){
		String id = (String) session.getAttribute("id");
		List<Subject_board> subject_List = subjectservice.selectSubject(id);
		model.addAttribute("subject_List",subject_List);
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
