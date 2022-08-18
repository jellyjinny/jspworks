<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc 연동 - oracle</title>
</head>
<%
	String driverClass = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jspdb";
	String username = "root";
	String password = "12345";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName(driverClass);
		conn = DriverManager.getConnection(url, username, password);
		String sql = "SELECT * FROM user";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();   //쿼리 실행
		out.println("<h2>회원 명단</h2>");
		out.println("<table border=1 width=300>");
		out.println("<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>전화번호</td></tr>");
		while(rs.next()){
			out.println("<tr><td>" + rs.getString("id") + "</td>");
			out.println("<td>" + rs.getString("passwd") + "</td>");
			out.println("<td>" + rs.getString("name") + "</td>");
			out.println("<td>" + rs.getString("phone") + "</td></tr>");
		}
		out.println("</table>");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(conn != null)
			conn.close();
	}
%>
<body>
	
</body>
</html>