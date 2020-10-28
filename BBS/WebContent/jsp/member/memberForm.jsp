<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력화면</title>
</head>
<body>
<jsp:include page="../menu/mainMenu.jsp"></jsp:include>
<hr>
<div align="center">
	<div><h1>회 원 가 입</h1></div>
	<div>
		<form id="frm" name="frm" action="memberInsert.do" method="post">
			<table border="1">
				<tr>
					<td width="100">아이디</td>
					<td><input type="text" id="id" name="id"></td>
				</tr>
				<tr>
					<td width="100">이  름</td>
					<td width="300"><input type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<td width="100">패스워드</td>
					<td><input type="password" id="password" name="password"></td>
				</tr>
				<tr>
					<td width="100">주  소</td>
					<td><input type="text" id="address" name="address" size="100"></td>
				</tr>
				<tr>
					<td width="100">전화번호</td>
					<td><input type="text" id="tel" name="tel"></td>
				</tr>
				<tr>
					<td width="100">가입일자</td>
					<td><input type="date" id="enterdate" name="enterdate"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="가입하기"> &nbsp;&nbsp;
						<input type="reset" value="취  소">
					</td>
				</tr>	
			</table>
		</form>
	</div>
</div>
</body>
</html>