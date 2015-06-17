package com.maple.community.service;

import com.maple.community.model.MemberModel;
import com.maple.community.model.SubjectModel;

public interface MemberService {
	
	public boolean join(MemberModel model);
	public int selectMemberById(String id);
	public MemberModel login(MemberModel model);
	public void updateMember(MemberModel model);
	public void updateMemberNull(String id);
	public void deleteCourse(String id);
	
}