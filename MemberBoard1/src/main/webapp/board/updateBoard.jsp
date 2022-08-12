<%@page import="com.repository.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application" />
<%
	request.setCharacterEncoding("utf-8");

	//name 속성의 데이터 값 받기
	String bnum = request.getParameter("bnum");	
	String title = request.getParameter("title");	
	String content = request.getParameter("content");	

	//board 객체 생성
	Board board = new Board();
	board.setBnum(Integer.parseInt(bnum));
	board.setTitle(title);
	board.setContent(content);
	
	//수정 처리 - DB작업
	boardDAO.updateBoard(board);  

	//페이지 이동
	response.sendRedirect("./boardList.jsp");
%>