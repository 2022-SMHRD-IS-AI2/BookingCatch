package com.smhrd.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BookingDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 예약 인서트
	public int insertBookingContents(BookingVO model) {
		int cnt = sqlSession.insert("com.smhrd.model.BookingDAO.insertBookingContents", model);
		if(cnt>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return cnt;
	}

	// 예약 가져오기
	public List<BookingVO> getBookingContents(HashMap<String, Object> paramMap) {
		List<BookingVO> resList = sqlSession.selectList("com.smhrd.model.BookingDAO.getBookingContents", paramMap);
		sqlSession.close();
		return resList;
	}
	
//	예약 불러오기
	public List<BookingVO> getBookingInfo(String id) {
		List<BookingVO> vo = null;
		vo = sqlSession.selectList("com.smhrd.model.BookingDAO.getBookingInfo", id);
		sqlSession.close();
		return vo;
	}
}