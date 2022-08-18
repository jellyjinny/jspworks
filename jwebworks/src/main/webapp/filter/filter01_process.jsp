<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	
	/*if(name == null || name.equals("")) {
	    out.print("값이 입력되지 않았습니다.");
    } */
%>
<p>입력된 name 값: <%=name %>
