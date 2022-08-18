<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 실습</title>
</head>
<%
	pageContext.setAttribute("fruit", "apple");
%>
<body>
	<!-- 특정 요소 보기 -->
	${names[0]}<br>
	
	${lottoList[1]}<br>
	
	${car.brand}<br>
	${car.cc}<br>
	
	${fruit}<br>
	${param.n}<br>
	${empty param.n ? "값이 비어있습니다." : param.n}
	

	<!-- 목록 보기 -->
	<c:forEach var="name" items="${names}">
		${name}<br>
	</c:forEach>
	
	<c:forEach var="lotto" items="${lottoList}">
		${lotto}<br>
	</c:forEach>
</body>
</html>