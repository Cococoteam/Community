package com.maple.community.dao;

import com.maple.community.model.MemberModel;

public interface MemberDao {
	
	public void insertMember(MemberModel model);
	public int selectMemberById(MemberModel model);
	public int selectMemberById(String id);
	public MemberModel selectMember(MemberModel model);
}
