<%@ page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script type="text/javascript" src="./resources/js/checkMember.js"></script>
</head>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO" scope="application" />
<body class="pt-5">
	<jsp:include page="/menu.jsp" />
	<div id="container">
		<div class="text-center" style="margin-top: 100px; margin-bottom: 100px; ">
			<h1 class="display-5">회원 가입</h1>
		</div>
		<div>
		<form action="./addMember.do" method="post" name="regForm">
			<table class="tbl" style="margin-left:auto; margin-right:auto; margin-bottom: 100px;">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="memberId" placeholder="ID"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd" placeholder="PASSWORD"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="passwd_confirm" placeholder="PASSWORD_CONFRIM"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<select name="gender">
							<option selected>남</option>
							<option>여</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="등록" onclick="checkMember()">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
		</div>

	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>