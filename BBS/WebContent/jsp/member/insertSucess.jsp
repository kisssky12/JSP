<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>
	<jsp:include page="../menu/mainMenu.jsp"></jsp:include>
	<hr>
	<div align="center">
		<div>
			<h1>${param.id }님 가입을 축하합니다.</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<td width="100">아이디</td>
					<td>${param.id }</td>
				</tr>
				<tr>
					<td width="100">이 름</td>
					<td width="300">${param.name }</td>
				</tr>
				<tr>
					<td width="100">주 소</td>
					<td>${param.address }</td>
				</tr>
				<tr>
					<td width="100">전화번호</td>
					<td>${param.tel }</td>
				</tr>
				<tr>
					<td width="100">가입일자</td>
					<td>${param.enterdate }</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>