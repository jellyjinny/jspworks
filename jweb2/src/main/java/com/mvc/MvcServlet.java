package com.mvc;

import java.io.IOException;
import java.util.ArrayList;

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

    	//배열자료
    	String[] name = {"김산", "이강", "정들"};
    	
    	//ArrayList 자료
    	ArrayList<Integer> lotto = new ArrayList<>();
    	lotto.add(8);
    	lotto.add(17);
    	lotto.add(19);
    	lotto.add(22);
    	lotto.add(27);
    	lotto.add(35);
    	
    	//model
    	request.setAttribute("names", name);  //jsp쪽으로 names를 보냄
    	
    	request.setAttribute("lottoList", lotto);  //jsp -> lottoList
    	
    	//포워딩
    	RequestDispatcher dispatcher = 
    			request.getRequestDispatcher("/mvc/mvc01.jsp");
    	dispatcher.forward(request, response);
    }
    	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
