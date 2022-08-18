package com.mvc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mvc01")
public class MvcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//배열
		String[] name = {"김산", "이강", "정들"};
		
		//ArrayList 자료
		ArrayList<Integer> lotto = new ArrayList<>();
		lotto.add(15);
		lotto.add(77);
		lotto.add(4);
		lotto.add(83);
		lotto.add(69);
		lotto.add(33);
		
		//HashMap 자료
		Map<String, Object> car = new HashMap<>();
		car.put("brand", "sonata");
		car.put("cc", 2500);
		
		//model names 생성
		request.setAttribute("names", name);
	
		request.setAttribute("lottoList", lotto);
	
		request.setAttribute("car", car);
	
		//포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mvc/mvc01.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
