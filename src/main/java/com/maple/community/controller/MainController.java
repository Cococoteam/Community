package com.maple.community.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.maple.community.model.MemberModel;
import com.maple.community.model.SearchModel;
import com.maple.community.model.SubjectModel;
import com.maple.community.service.MemberServiceImpl;
import com.maple.community.service.SubjectServiceImpl;

@Controller
public class MainController {
	
	@Autowired
	private MemberServiceImpl MemberService; 
	
	@Autowired
	private SubjectServiceImpl SubjectService;
	
	@RequestMapping("/search")
	public String search(SearchModel model, HttpSession session){
		return "search";
	}
	
	@RequestMapping("/search_Friend")
	public String search_Friend(SearchModel model){
		List<String> result =MemberService.searchFriend(model);
		for(String result1 : result)
			System.out.println(result1);
		return "search";
	}
	
	@RequestMapping("/profile")
	public String profile(){
		return "profile";
	}

	
	//where 절에 subject 해당 db 갖고옴  
	@RequestMapping("/board/{subject}")
	public String board(@PathVariable int subject){
		if(subject==1){
			
		}
		else if(subject==2){
			
		}
		else if(subject==3){
			
		}
		return "board";
	}
	
	@RequestMapping("/modify")
	public String modify(MemberModel model, HttpSession session, Model model1, MultipartRequest multipartRequest,SubjectModel model2) throws IOException{
		 MultipartFile file = multipartRequest.getFile("upload");   //뷰에서 form으로 넘어올 때 name에 적어준 이름입니다.
		  Calendar cal = Calendar.getInstance();
		  String fileName = file.getOriginalFilename();
		  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
		  String replaceName = cal.getTimeInMillis() + fileType;  //파일 이름의 중복을 막기 위해서 이름을 재설정합니다.
		  String path = "C:/workspace/INUCommunity/src/main/webapp/resources/";   //제 바탕화면의 upload 폴더라는 경로입니다. 자신의 경로를 쓰세요.
		  //String imagePath = path+replaceName;
		  FileUpload.fileUpload(file, path, replaceName);
		  model.setId((String) session.getAttribute("id"));
		  model2.setId((String) session.getAttribute("id"));
		  model.setImage("/resources/"+replaceName);
		  MemberService.updateMember(model);
		  
//		  System.out.println(imagePath);
//		  System.out.println(model2.getId());
//		  System.out.println(model.getId());
		  
		  //TODO insert 전에 모든 자료 삭제 하기
		  for(int i: model2.getSubnum()){
			  model2.setSubnum_origin(i);
			  SubjectService.insertCourse(model2);
		  }
		  return "modify";
	}
	
}
