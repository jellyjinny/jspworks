<%@page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body class="pt-5">
	<jsp:include page="./menu.jsp" />
	<div id="container">
		<div class="text-center" style="margin-top: 100px; margin-bottom: 50px; ">
			<h1 class="display-5">회원 목록</h1>
		</div>
		<div style="margin-bottom: 20px; text-align: right; margin-right:15%">
			<p><a class="btn btn-secondary" href="/logout.do" role="button">관리자 로그아웃</a>	
		</div>
		<div class="container">
			<table class="table table-striped" style="margin-bottom: 100px;">
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>성별</th>
						<th>가입일</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${memberList}">
					<tr>
						<td><c:out value="${member.memberId}" /> </td>
						<td><c:out value="${member.passwd}" />  </td>
						<td><c:out value="${member.name}" /> </td>
						<td><c:out value="${member.gender}" /> </td>
						<td><c:out value="${member.joinDate}" />  </td>
						<td>
							<a href="./deleteMember.do?memberId=<c:out value="${member.memberId}" />"
							   onclick="return confirm('정말로 삭제하시겠습니까?')">
							   <button type="button">삭제</button>
							</a> 
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>