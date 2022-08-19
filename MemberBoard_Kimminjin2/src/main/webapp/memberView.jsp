<%@page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script>
	funcion checkView(){
		let form = document.viewForm;
		let pw1 = form.passwd.value;
		let pw2 = form.passwd_confirm.value;
		
		if(pw1 != pw2){
			alert("비밀번호를 동일하게 입력해주세요.");
			form.passwd_confirm.select();
			return false;
		}else{
			form.submit();  //폼을 전송
		}
	}
	
</script>
</head>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO"  scope="application" />
<body class="pt-5">
	<jsp:include page="./menu.jsp" />
	<div id="container">
		<div class="text-center" style="margin-top: 100px; margin-bottom: 50px; ">
			<h1 class="display-5">나의 정보</h1>
		</div>
		<div>
			<div class="container" style="width: 400px; height:470px;">
				<form action="./updateMember.do" method="post" name="viewForm">
				<table class="table table-striped" style="margin-bottom: 100px;">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="memberId" value='<c:out value="${member.memberId }" />'></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="passwd" value='<c:out value="${member.passwd }" />'></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" name="passwd_confirm" value='<c:out value="${member.passwd }" />'></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" value='<c:out value="${member.name }" />'></td>
					</tr>
					<tr>
						<td>성별</td>
						<td class="form-check">
							<input class="form-check-input" type="radio" name="gender" id="남">
							<label class="form-check-label" for="남">
								남
  							</label>	
						</td>
						<td class="form-check">
							<input class="form-check-input" type="radio" name="gender" id="여">
							<label class="form-check-label" for="여">
								 여
 							</label>
						</td>
					</tr>
					<tr>
						<td>가입일</td>
						<td><input type="text" name="joinDate" value='<c:out value="${member.joinDate }" />'></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="button" value="수정" onclick="checkView()">
							<input type="reset" value="취소">
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>