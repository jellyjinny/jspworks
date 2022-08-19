<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body class="pt-5">
	<jsp:include page="/menu.jsp" />
	
	<div class="jumbotron">
		<div class="container">
			<div class="text-center" style="margin-top: 30px; margin-bottom: 30px; ">
				<h1 class="display-5">회원 정보</h1>
			</div>
		</div>
	</div>
	
	<div class="text-center" style="margin-top: 70px; margin-bottom: 200px; ">
		<div class="msg">
		<c:choose>
			<c:when test="${msg eq 'login'}">
				<h2><c:out value="${name}" /> 님 환영합니다.</h2>
			</c:when>
			<c:when test="${msg eq 'register'}">
				<h2>회원 가입을 축하합니다.</h2>
			</c:when>
			<c:when test="${msg eq 'update'}">
				<h2>회원 정보가 수정되었습니다.</h2>
			</c:when>
			<c:when test="${msg eq 'bo_delete'}">
				<h2>게시글이 삭제되었습니다.</h2>
			</c:when>
			<c:when test="${msg eq 'bo_update'}">
				<h2>게시글이 수정되었습니다.</h2>
			</c:when>
		</c:choose>
		</div>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>