package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ssulBoardDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 게시글 업로드 기능
	public int ssulupload(ssulBoardVO vo) {
		int cnt = sqlSession.insert("com.smhrd.model.ssulBoardDAO.ssulupload", vo);
		if(cnt>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return cnt;
	}

	// 전체 게시글 조회하는 기능
	public List<ssulBoardVO> showssulBoard() {
		List<ssulBoardVO> vo = sqlSession.selectList("com.smhrd.model.ssulBoardDAO.showssulBoard");
		sqlSession.close();
		return vo;
	}
	
	

	// 세부 게시글 조회하는 기능
	public ssulBoardVO detailssulBoard(int num) {
		ssulBoardVO vo = sqlSession.selectOne("com.smhrd.model.ssulBoardDAO.detailssulBoard",num);
		sqlSession.close();

		return vo;
	}

}
