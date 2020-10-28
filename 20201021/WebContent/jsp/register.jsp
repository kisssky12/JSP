<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp" />
<body>
	<div align="center">
		<div><h1>회 원 등 록</h1></div><br/>
		<div>
			<form id="frm" name="frm" action="registerresult.jsp" method="post">
				<div>
					<table border="1" >
						<tr>
							<th>아이디</th>
							<td><input type="text" id="id" name="id"></td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td><input type="password" id="pw" name="pw"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" id="name" name="name"></td>
						</tr>	
						<tr>
							<th>취미</th>
							<td>
							<input type="checkbox" id="hobbys" name="hobbys" value="등산" />등산
							<input type="checkbox" id="hobbys" name="hobbys" value="자전거"/>자전거
							<input type="checkbox" id="hobbys" name="hobbys" value="빈둥거리"/>빈둥거리
							<input type="checkbox" id="hobbys" name="hobbys" value="낚시"/>낚시
							</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>
							<input type="radio" id="gender" name="gender" value="남자" />남자
							<input type="radio" id="gender" name="gender" value="여자" />여자
							</td>
						</tr>
						</table>
				</div>
						<div>
						<br/>
								&nbsp;&nbsp;
								<input type="submit" value="등록하기" />
								<input type="reset" value="취 소" />
								<input type="button" onclick="location.href='main.jsp'" value="홈으로" />
						</div>
			</form>
		</div>
	</div>
</body>
<jsp:include page="tail.jsp" />
</html>