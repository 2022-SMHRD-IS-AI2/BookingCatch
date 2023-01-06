package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();	

	
	// 사용자 회원가입 
	public int joinMember(MemberVO vo) {
		int cnt=0;
		try {
			cnt = sqlSession.insert("com.smhrd.model.MemberDAO.joinMember",vo);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	
	
	// 사용자 로그인
	public MemberVO selectMember(MemberVO vo) {
		MemberVO loginMember = null;
		
		try {
			loginMember = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectOne", vo);
			// commit/rollback 생략 (왜? 셀렉트문이니까)

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return loginMember;
	}
	
	
}
