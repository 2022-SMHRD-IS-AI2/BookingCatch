package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.smhrd.model.TrainerListDAO;
import com.smhrd.model.TrainerListVO;
import com.smhrd.model.TrainerVO;

public class TrainerListCon extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		TrainerVO vo = (TrainerVO)session.getAttribute("loginTrainer");
		List<TrainerListVO> resList = new TrainerListDAO().getTrainerList();
		List<JSONObject> res = new ArrayList<JSONObject>();
		for(TrainerListVO model : resList) {
			String json = new ObjectMapper().writeValueAsString(model);
			JSONParser parser = new JSONParser();
			try {
				JSONObject root = (JSONObject) parser.parse(json);
				res.add(root);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(res);
		out.flush();
	}
}
