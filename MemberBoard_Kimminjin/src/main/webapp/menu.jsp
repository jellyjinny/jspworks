<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/index.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav">
			<c:choose>
				<c:when test="${empty sessionId}">
					<li class="nav-item">
						<a href="/login.jsp" class="nav-link">로그인</a>
					</li>
					<li class="nav-item">
						<a href="/memberForm.jsp" class="nav-link">회원가입</a>
					</li>
					<li class="nav-item">
						<a href="/loginAdmin.jsp" class="nav-link">회원목록</a>
					</li>
				</c:when>
				<c:otherwise>
					<li style="color:#eee; padding-top:7px;">[<c:out value="${sessionId}" />님]</li>
					<li class="nav-item">
						<a href="/memberView.jsp" class="nav-link">나의 정보</a>
					</li>
					<li class="nav-item">
						<a href="/logout.jsp" class="nav-link">(<c:out value="${name}" /> 님) 로그아웃</a>
					</li>
					<li class="nav-item">
						<a href="/memberList.jsp" class="nav-link">회원 목록</a>
					</li>
				</c:otherwise>
			</c:choose>
				<li class="nav-item">
					<a href="/boardList.jsp" class="nav-link">게시판</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
