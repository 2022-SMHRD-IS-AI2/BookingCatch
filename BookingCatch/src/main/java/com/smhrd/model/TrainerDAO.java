package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class TrainerDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();	
	
	// 트레이너 회원가입 
		public int joinTrainer(TrainerVO vo) {
			int cnt=0;
			try {
				cnt = sqlSession.insert("com.smhrd.model.TrainerDAO.joinTrainer",vo);
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
		
		
		// 트레이너 로그인
		public TrainerVO selectTrainer(TrainerVO vo) {
			TrainerVO loginTrainer = null;
			
			try {
				loginTrainer = sqlSession.selectOne("com.smhrd.model.TrainerDAO.selectOne", vo);
				// commit/rollback 생략 (왜? 셀렉트문이니까)

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return loginTrainer;
		}

}
