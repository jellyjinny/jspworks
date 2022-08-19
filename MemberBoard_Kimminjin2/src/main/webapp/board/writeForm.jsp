<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome~ </title>
<link rel="stylesheet" href="./resources/css/common.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body class="pt-5">
	<c:if test="${empty sessionId}">
		<script>
			alert("로그인이 필요합니다.");
			location.href = "../loginMember.jsp";
		</script>
	</c:if>
	<jsp:include page="/menu.jsp" />
	<div id="container">
		<div class="text-center" style="margin-top: 30px; margin-bottom: 30px; ">
			<h1 class="display-5">글쓰기</h1>
		</div>
		<div>
		<form action="./writeProcess.do" method="post">
			<table class="tbl" style="margin-left:auto; margin-right:auto; margin-bottom: 100px;">
				<tr>
					<td><input type="text" name="title" class="w_title"
					           placeholder="글 제목" required="required"></td>
				</tr>
				<tr>
					<td>
						<textarea rows="15" cols="50" name="content"
						    required="required" placeholder="글 내용"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글쓰기">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>