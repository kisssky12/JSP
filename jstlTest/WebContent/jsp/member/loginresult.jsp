<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%

	request.setCharacterEncoding("utf-8");

%>
<body>
<div align="center">
	<div>
		<h1>${param.id}님 환영합니다.</h1>
	</div>
	<div>
		<h1>1번 메뉴</h1>
		<h1>2번 메뉴</h1>
		<h1>3번 메뉴</h1>
		<h1>4번 메뉴</h1>
		<c:if test="${param.id == 'admin'}">
			<h1>5번 메뉴</h1>
			<h1>6번 메뉴</h1>
			<h1>7번 메뉴</h1>
		</c:if>
	</div>
	<div>
		<h1>취미:
			<c:forEach var="hobby" items="${paramValues.hobbys }">
				<c:out value="${hobby}" ></c:out>
			</c:forEach>
		</h1>
	</div>
	<div>
		<button onclick="location.href='forTest.jsp'">for Test</button>
	</div>
</div>
</body>
</html>