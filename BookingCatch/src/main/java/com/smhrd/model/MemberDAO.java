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
	
	// 사용자 회원탈퇴
	public int deleteMember(String id) {
		int cnt=0;
		try {
			cnt = sqlSession.delete("com.smhrd.model.MemberDAO.deleteMember", id);
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
	// 사용자 이메일 중복체크
public boolean emailCheck(String inputE) {
		
		boolean checkE = false;
		try {
			checkE = sqlSession.selectOne("com.smhrd.model.MemberDAO.emailCheck", inputE);
			// commit/rollback 생략 (왜? 셀렉트문이니까)

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return checkE;
	}
	
	//사용자 정보수정
public int updateMember(MemberVO vo) {
	int cnt = 0;
	try { // 만약 sql문이 잘못됐다거나, url이 잘못되었다던가하면 세션이 잘 생성이 안될 수도 있음

		// insert("실행할 sql 경로 정의", 넘겨줄 값)
		cnt = sqlSession.update("com.smhrd.model.MemberDAO.updateMember",vo);
		if (cnt > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		sqlSession.close();
	}

	return cnt;
}


	
}
