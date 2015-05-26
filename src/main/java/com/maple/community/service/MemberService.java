package com.maple.community.service;

import com.maple.community.model.MemberModel;

public interface MemberService {
	
	public boolean join(MemberModel model);
	public int selectMemberById(String id);
	public MemberModel login(MemberModel model);
}