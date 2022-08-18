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
	String driverClass = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String username = "c##jweb";
	String password = "54321";
	
	Connection conn = null;
	
	try{
		Class.forName(driverClass);
		conn = DriverManager.getConnection(url, username, password);
		out.println("Oracle DB 연결 성공!!");
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