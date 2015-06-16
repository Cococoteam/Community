package com.maple.community.service;

import java.util.List;

import com.maple.community.model.MemberModel;
import com.maple.community.model.SearchModel;
import com.maple.community.model.SubjectModel;

public interface MemberService {
	
	public boolean join(MemberModel model);
	public int selectMemberById(String id);
	public MemberModel login(MemberModel model);
	public void updateMember(MemberModel model);
	public void insertCourse(SubjectModel model);
	public List<String> searchFriend(SearchModel model);
}