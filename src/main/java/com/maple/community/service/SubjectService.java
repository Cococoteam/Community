package com.maple.community.service;

import java.util.List;

import com.maple.community.model.SubjectModel;

public interface SubjectService {
	public void insertCourse(SubjectModel model);
	public List<SubjectModel> selectSubject(String id);
}
