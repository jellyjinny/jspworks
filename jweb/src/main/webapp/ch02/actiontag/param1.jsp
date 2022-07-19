<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param 액션 태그</title>
</head>
<body>
	<h2>param 액션 태그</h2>
	<jsp:forword page="param1-data.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value="0000" name="pwd"/>
	<jsp:forword>
	
	<p>java Server page</p>
</body>
</html>