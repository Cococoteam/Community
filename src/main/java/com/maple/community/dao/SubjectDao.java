package com.maple.community.dao;

import java.util.List;

import com.maple.community.model.SubjectModel;

public interface SubjectDao {
	public void insertCourse(SubjectModel model);
	public List<SubjectModel> selectSubject(String id);
}
