package com.smhrd.model;

import java.util.List;

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
		public int deleteTrainer(String id) {
			int cnt=0;
			try {
				cnt = sqlSession.delete("com.smhrd.model.TrainerDAO.deleteTrainer",id);
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
		
		public int updateTrainer(TrainerVO vo) {
			int cnt =0;
			try {
				cnt = sqlSession.update("com.smhrd.model.TrainerDAO.updateTrainer", vo);
				if(cnt>0) {
					sqlSession.commit();
				} else {
					sqlSession.rollback();
				}
			}catch(Exception e){
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return cnt;
		}
		//전체트레이너조회
		public List<TrainerVO> selectAllTrainer() {
		    List<TrainerVO> list = null;
		    
		    try {
		       list = sqlSession.selectList("com.smhrd.model.TrainerDAO.selectAllTrainer");
		       // commit / rollback 생략할수 있음!
		    }catch(Exception e) {
		       e.printStackTrace();
		    }finally {
		       sqlSession.close();
		    }
		    return list;
			
		}
		// 사용자 이메일 중복체크
		public boolean emailCheck(String inputE) {
				
				boolean checkE = false;
				try {
					checkE = sqlSession.selectOne("com.smhrd.model.TrainerDAO.emailCheck", inputE);
					// commit/rollback 생략 (왜? 셀렉트문이니까)

				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					sqlSession.close();
				}
				return checkE;
			}
		
		//트레이너 한명 전체 정보 보기
		public TrainerVO selectTrainerInfo(String tid) {
			TrainerVO vo = null;
			try {
				vo = sqlSession.selectOne("com.smhrd.model.TrainerDAO.selectTrainerInfo", tid);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return vo;
		}

}
