package com.maple.community.dao;

import java.util.List;

import com.maple.community.model.MemberModel;
import com.maple.community.model.SearchModel;
import com.maple.community.model.SubjectModel;

public interface MemberDao {
	
	public void insertMember(MemberModel model);
	public int selectMemberById(MemberModel model);
	public int selectMemberById(String id);
	public MemberModel selectMember(MemberModel model);
	public void updateMember(MemberModel model);
	public void insertCourse(SubjectModel model);
	public List<String> searchFriend(SearchModel model);
}
