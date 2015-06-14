package com.maple.community.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.maple.community.model.SubjectModel;

@Repository
public class SubjectDaoImpl implements SubjectDao{
	private static final String NAMESPACE = "MemberMapper.";

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertCourse(SubjectModel model) {
		sqlSession.insert(NAMESPACE+"insertCourse", model);
		
	}

	@Override
	public List<SubjectModel> selectSubject(String id) {
		return sqlSession.selectList(NAMESPACE+"selectSubject", id);
	}

}
