package com.maple.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maple.community.dao.SubjectDao;
import com.maple.community.model.SubjectModel;
import com.maple.community.model.Subject_board;


@Service
public class SubjectServiceImpl implements SubjectService{

	@Autowired
	private SubjectDao subjectdao;
	
	@Override
	public void insertCourse(SubjectModel model) {
		subjectdao.insertCourse(model);
	}

	@Override
	public List<Subject_board> selectSubject(String id) {
		return subjectdao.selectSubject(id);
	}

}
