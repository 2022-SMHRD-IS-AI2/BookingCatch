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
		
		String body = request.getParameter("jsonData");
		JSONParser reqParser = new JSONParser();
		HashMap<String, Object> dataMap = new HashMap<String, Object>();
		try {
			JSONObject root = (JSONObject) reqParser.parse(body);
			dataMap = root;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		String tid = dataMap.get("tid").toString();
		String bdate = dataMap.get("bdate").toString();
		
		List<BookingVO> resList = new BookingDAO().getBookingContents(dataMap);
		List<JSONObject> res = new ArrayList<JSONObject>();
		for(BookingVO model : resList) {
			String json = new ObjectMapper().writeValueAsString(model);
			JSONParser resParser = new JSONParser();
			try {
				JSONObject root = (JSONObject) resParser.parse(json);
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
