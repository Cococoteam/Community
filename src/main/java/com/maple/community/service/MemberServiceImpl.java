package com.maple.community.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maple.community.dao.MemberDao;
import com.maple.community.model.MemberModel;
<<<<<<< HEAD
import com.maple.community.model.SearchModel;
import com.maple.community.model.SubjectModel;
=======
>>>>>>> 1e25e58c74cb55bbce57cfd5f503f2b04a3b150e


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberdao;

	@Override
	public boolean join(MemberModel model) { //회원가입
		int result = memberdao.selectMemberById(model.getId());
		
		//같은 아이디가 하나라도 있으면 false, 아니면 회원가입 insert
		if(result >0){ 
			return false;
		} else{
			memberdao.insertMember(model);
		}
		return true;
	}

	@Override
	public int selectMemberById(String id) {
		return memberdao.selectMemberById(id);
	}
	
	//model 객체를 받아, id , passwd에 맞는 엔티티가 존재하는지 확인후 존재하면 반환 
	//null 값이면 로그인 실패
	@Override
	public MemberModel login(MemberModel model) {
		return memberdao.selectMember(model);
	}

	//profile update
	@Override
	public void updateMember(MemberModel model) {
		memberdao.updateMember(model);
	}

<<<<<<< HEAD
	@Override
	public void insertCourse(SubjectModel model) {
		memberdao.insertCourse(model);
	}

	@Override
	public List<String> searchFriend(SearchModel model) {
		return memberdao.searchFriend(model);
	}
=======
	
>>>>>>> 1e25e58c74cb55bbce57cfd5f503f2b04a3b150e
}
