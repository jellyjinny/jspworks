<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%
	request.setCharacterEncoding("utf-8");

	String eid = request.getParameter("eid");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
%>
<body>
	<sql:setDataSource var="dataSource" 
		driver = "com.mysql.cj.jdbc.Driver"
		url = "jdbc:mysql://localhost:3306/jspdb?useUnicode=true&serverTimezone=Asia/Seoul"
		user = "root"
		password = "12345"
	/>
	
	<!-- 데이터 삽입 -->
	<sql:update dataSource="${dataSource}" var="resultSet">
		INSERT INTO engineer VALUES (?, ?, ?);
		<sql:param value="<%=eid %>" />
		<sql:param value="<%=passwd %>" />
		<sql:param value="<%=name %>" />
	</sql:update>
	
	<!-- 페이지 이동 -->
	<c:import url="./sql_select.jsp" var="url" />
		${url}
</body>