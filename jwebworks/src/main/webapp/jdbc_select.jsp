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
	String driverClass = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String username = "c##jweb";
	String password = "54321";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName(driverClass);
		conn = DriverManager.getConnection(url, username, password);
		String sql = "SELECT * FROM t_student ORDER BY studentId";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		out.println("<h2>학생명단</h2>");
		out.println("<table border=1 width=200>");
		out.println("<tr><td>학번</td><td>이름</td></tr>");
		while(rs.next()){
			out.println("<tr><td>" + rs.getString("studentId") + "</td>");
			out.println("<td>" + rs.getString("studentName") + "</td></tr>");
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