package com.smhrd.model;

import java.net.ResponseCache;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class TrainerInfoDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	
	public int insertTrainerInfo(TrainerInfoVO vo) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("com.smhrd.model.TrainerInfoDAO.insertTrainerInfo",vo);
			if(cnt>0) {
				sqlSession.commit();
				System.out.println("TrainerInfo에 정보 넣기 성공!");
			}else {
				sqlSession.rollback();
				System.out.println("TrainerInfo에 정보 넣기 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	
	
	
	
}
