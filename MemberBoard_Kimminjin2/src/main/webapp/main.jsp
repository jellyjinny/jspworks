<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome~ </title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body class="pt-5">
	<jsp:include page="./menu.jsp" />
	<% String greeting = "Welcome to our Community~!"; %>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting %> </h1>
		</div>
	</div>
	
	<div class="text-center">
		<img src="./resources/images/coffee-gray.jpg" class="rounded" alt="커피잔">
	</div>
	
	<jsp:include page="./footer.jsp" />
</body>
</html>