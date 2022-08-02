<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formatNumber 태그</title>
</head>
<body>
	<h2>숫자, 통화를 다양한 형식으로 표기</h2>
	<p>숫자 : <fmt:formatNumber value="3200100" />  <!-- 천단위 구분기호가 삽입됨. -->
	<p><fmt:formatNumber value="3200100" type="number" />
	<p><fmt:formatNumber value="3200100" groupingUsed="false" />  <!-- 천단위 구분기호가 사라짐. -->
	<p><fmt:formatNumber value="3200100" groupingUsed="true" />  <!-- 천단위 구분기호 표시됨. -->
	<!-- pattern 속성 : #,##0.00 (0은 0으로 채움) -->
	<p><fmt:formatNumber value="3200100" pattern="#,##0.00" />
	<p>통화 : <fmt:formatNumber value="3200100" type="currency" />
	<p><fmt:formatNumber value="3200100" type="currency" currencySymbol="\\"/> <!-- 역슬래시 2개 = '원'단위기호 입력됨 -->
	<p>퍼센트 : <fmt:formatNumber value="0.25" type="percent" />
</body>
</html>