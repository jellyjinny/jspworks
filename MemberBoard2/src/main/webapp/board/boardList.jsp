<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/menu.jsp" />
	<div id="container">
		<div class="text-center" style="margin-top: 100px; margin-bottom: 100px; ">
			<h1 class="display-5">Board</h1>
		</div>
		<div>
			<table class="tbl_list" style="margin-left:auto; margin-right:auto; margin-bottom: 100px;">
				<thead>
					<tr>
						<th>번호</th><th>제목</th><th>글쓴이</th><th>작성일</th><th>조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${boardList}" var="board">
					<tr>
						<td><c:out value="${board.bnum}" /></td>
						<td><a href="./boardView.do?bnum=<c:out value="${board.bnum}" /> "> <c:out value="${board.title}" /></a></td>
						<td><c:out value="${board.memberId}" /></td>
						<td><fmt:formatDate value="${board.regDate}" 
						     pattern="yyyy-MM-dd hh:mm:ss"/></td>
						<td><c:out value="${board.hit}" /></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<div class="btnWrite">
				<a href="./writeForm.do"><button type="button">글쓰기</button></a>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>