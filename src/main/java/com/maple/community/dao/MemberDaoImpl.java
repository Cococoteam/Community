package com.maple.community.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.maple.community.model.MemberModel;
//DAO(Data Access Object)
//데이터베이스와 연동해서 데이터를 가져오거나 입력수정
//component-scan 자동 자바빈즈 생성(Repository)
//
@Repository
public class MemberDaoImpl implements MemberDao{
	private static final String NAMESPACE = "MemberMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void insertMember(MemberModel model) {
		sqlSession.insert(NAMESPACE+"insertMember", model);
	}

	@Override
	public int selectMemberById(MemberModel model) {
		return sqlSession.<Integer>selectOne(NAMESPACE+"selectMemberById", model);
	}

	@Override
	public int selectMemberById(String id) {
		return sqlSession.selectOne(NAMESPACE+"selectMemberById",id);
	}

	@Override
	public MemberModel selectMember(MemberModel model) {
		return sqlSession.selectOne(NAMESPACE+"selectMember", model);
	}


}
