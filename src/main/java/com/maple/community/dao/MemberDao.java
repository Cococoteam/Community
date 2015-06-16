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
<<<<<<< HEAD
	public void insertCourse(SubjectModel model);
	public List<String> searchFriend(SearchModel model);
=======

>>>>>>> 1e25e58c74cb55bbce57cfd5f503f2b04a3b150e
}
