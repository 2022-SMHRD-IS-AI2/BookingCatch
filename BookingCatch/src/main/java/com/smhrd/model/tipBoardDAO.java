package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class tipBoardDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 게시글 업로드 기능
	public int upload(tipBoardVO vo) {
		int cnt = sqlSession.insert("com.smhrd.model.tipBoardDAO.upload", vo);
		if(cnt>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return cnt;
	}

	// 전체 게시글 조회하는 기능
	public List<tipBoardVO> showTipBoard() {
		List<tipBoardVO> vo = sqlSession.selectList("com.smhrd.model.tipBoardDAO.showTipBoard");
		sqlSession.close();
		return vo;
	}
	
	

	// 세부 게시글 조회하는 기능
	public tipBoardVO detailTipBoard(int num) {
		tipBoardVO vo = sqlSession.selectOne("com.smhrd.model.tipBoardDAO.detailTipBoard");
		sqlSession.close();

		return vo;
	}

}
