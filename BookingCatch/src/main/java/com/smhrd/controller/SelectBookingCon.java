package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.smhrd.model.BookingDAO;
import com.smhrd.model.BookingVO;

public class SelectBookingCon extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json");
	    response.setHeader("Access-Control-Allow-Origin", "*");
	    
		// post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String tid = request.getParameter("jsonData");
		System.out.println(tid);
		List<BookingVO> resList = new BookingDAO().getBookingContents(tid);
		List<JSONObject> res = new ArrayList<JSONObject>();
		for(BookingVO model : resList) {
			String json = new ObjectMapper().writeValueAsString(model);
			JSONParser parser = new JSONParser();
			try {
				JSONObject root = (JSONObject) parser.parse(json);
				res.add(root);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(res);
		out.flush();
	}
}
