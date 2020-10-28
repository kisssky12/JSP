<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>환영합니다.</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="login.jsp" method="post">
				<table border="1">
					<tr>
						<th width="100">아이디</th>
						<td><input type="text" id="id" name="id" width="50"></td>
					</tr>
					<tr>
						<th width="100">패스워드</th>
						<td><input type="password" id="pw" name="pw" width="50"></td>
					</tr>
				</table>
				<br /> <input type="submit" value="로그인"> &nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">
			</form>
		</div>
	</div>
</body>
</html>