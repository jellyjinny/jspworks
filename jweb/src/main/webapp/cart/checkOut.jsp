<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산하기</title>
</head>
<body>
	<div id="container">
		<h2>계산하기</h2>
		<p>선택한 상품 목록</p>
		<hr>
		<%
			//세션 유지
			ArrayList<String> productList = (ArrayList)session.getAttribute("productList");	
			
			if(session.getAttribute("userName") == null){  //로그인 되지 않았다면
				response.sendRedirect("./loginForm.jsp");
			}else{ //로그인 되었다면 상품 출력
				for(String product : productList)
				out.println(product + "<br>");
			}
		%>
	</div>
</body>
</html>