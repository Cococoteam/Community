package com.maple.community.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.maple.community.model.MemberModel;
import com.maple.community.model.SearchModel;
import com.maple.community.model.SubjectModel;
import com.maple.community.service.MemberServiceImpl;

@Controller
public class MainController {
	
	@Autowired
	private MemberServiceImpl MemberService; 
	
	@RequestMapping("/search")
	public String search(SearchModel model, HttpSession session){
		return "search";
	}
	
	@RequestMapping("/search_Friend")
	public String search_Friend(SearchModel model){
		System.out.println("설정한 sex = " + model.getSex());
		System.out.println("설정한 major = " + model.getMajor());
		for(String subject : model.getSubject())
			System.out.println("설정한 subject = " + subject);
		
		
		List<String> result =MemberService.searchFriend(model);
		for(String result1 : result)
			System.out.println(result1);
		return "profile";
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
	public String modify(MemberModel model, HttpSession session, Model model1, MultipartRequest multipartRequest,SubjectModel model2) throws IOException{
		 MultipartFile file = multipartRequest.getFile("upload");   //뷰에서 form으로 넘어올 때 name에 적어준 이름입니다.
		  Calendar cal = Calendar.getInstance();
		  String fileName = file.getOriginalFilename();
		  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
		  String replaceName = cal.getTimeInMillis() + fileType;  //파일 이름의 중복을 막기 위해서 이름을 재설정합니다.
		  String path = "C:/image/";   //제 바탕화면의 upload 폴더라는 경로입니다. 자신의 경로를 쓰세요.
		  String imagePath = path+replaceName;
		  FileUpload.fileUpload(file, path, replaceName);
		  model.setId((String) session.getAttribute("id"));
		  model2.setId((String) session.getAttribute("id"));
		  model.setImage(imagePath);
		  MemberService.updateMember(model);
		  
		  System.out.println(imagePath);
		  System.out.println(model2.getId());
		  System.out.println(model.getId());
		  
		  //TODO insert 전에 모든 자료 삭제 하기
		  for(int i: model2.getSubnum()){
			  model2.setSubnum_origin(i);
			  MemberService.insertCourse(model2);
		  }
		  return "modify";
	}
}
