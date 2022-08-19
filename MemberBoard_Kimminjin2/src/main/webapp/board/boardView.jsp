<%@page import="com.repository.Board"%>
<%@ page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application" />
<body class="pt-5">
	<c:if test="${empty sessionId}">
		<script>
			alert("로그인이 필요합니다.");
			location.href = "../loginMember.jsp";
		</script>
	</c:if>
	<jsp:include page="../menu.jsp" />
	<div id="container">
		<div class="text-center" style="margin-top: 30px; margin-bottom: 30px; ">
			<h1 class="display-5">상세 보기</h1>
		</div>
		<div>
		<form action="./updateBoard.do" method="post">
			<input type="hidden" name="bnum" value="${board.bnum}" >
			<table class="tbl" style="margin-left:auto; margin-right:auto; margin-bottom: 50px;">
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" class="bo_v_title"
							value="${board.title}"></td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td>
						<input type="text" name="memberId" class="bo_v_id"
							value="${board.memberId}" readOnly="readonly">
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea rows="15" cols="80" 
						 name="content"><c:out value="${board.content}" /></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<c:if test="${sessionId eq board.memberId}">
						<input type="submit" value="수정">
						<a href="./deleteBoard.do?bnum=<c:out value='${board.bnum }' />"
						   onclick="return confirm('정말로 삭제하시겠습니까?')">
							<input type="button" value="삭제"></a>
					</c:if>
						<a href="./boardList.do"><input type="button" value="목록"></a>
					</td>
				</tr>
			</table>
		</form>
		</div>
		
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>