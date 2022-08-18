<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_sql</title>
</head>
<body>
	<!-- DataSource 설정: DB 연결 -->
	<sql:setDataSource var="dataSource" 
		driver = "com.mysql.cj.jdbc.Driver"
		url = "jdbc:mysql://localhost:3306/jspdb?useUnicode=true&serverTimezone=Asia/Seoul"
		user = "root"
		password = "12345"
	/>
	
	<!-- sql 조회 문  -->
	<sql:query var="resultSet" dataSource="${dataSource}">
		SELECT * FROM engineer;
	</sql:query>
	
	<!-- 데이터를 표로 출력하기 -->
	<table border="1">
		<tr>
			<c:forEach items="${resultSet.columnNames}" var="columnName">
				<th width="100"><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>	
		<c:forEach items="${resultSet.rowsByIndex}" var="row">
		<tr>
			<c:forEach items="${row}" var="column">
				<td>
					<c:if test="${column != null}">
						<c:out value="${column}" />
					</c:if>
					<c:if test="${column == null}">
						&nbsp;
					</c:if>
				</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
</body>
</html>