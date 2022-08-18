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
	
	try{
		Class.forName(driverClass);
		conn = DriverManager.getConnection(url, username, password);
		String sql = "INSERT INTO user VALUES (129, 'cloud111', '손흥민', '010-1111-2222')";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();  //실행
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