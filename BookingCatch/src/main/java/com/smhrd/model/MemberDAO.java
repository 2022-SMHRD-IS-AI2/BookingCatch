package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();	

//	public MemberVO selectMember(MemberVO vo) {
//		MemberVO loginMember = null;
//		
//		try {
//			loginMember = SqlSession.selectOne("com.smhrd.model.MemberDAO.selectOne", vo);
//			// commit/rollback 생략 (왜? 셀렉트문이니까)
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			SqlSession.close();
//		}
//		return loginMember;
//	}

	public void joinMember(MemberVO vo) {
		sqlSession.insert("com.smhrd.model.MemberDAO.joinMember",vo);
		
		
	}
	
	
}
