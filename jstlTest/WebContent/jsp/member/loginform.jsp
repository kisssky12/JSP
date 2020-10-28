<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function formcheck() {
		var loginform = document.frm;
		if(loginform.id.value == "") {
			alert("아이디를 입력하세요.");
			loginform.id.focus();
			return false;
		}
		if(loginform.pw.value == "") {
			alert("패스워드를 입력하세요..");
			loginform.pw.focus();
			return false;
		}		
		return true;
	}
</script>
</head>
<body>
<div align="center">
	<div>
		<h1>로 그 인</h1>
	</div>
	<div>
		<form id="frm" name="frm" action="loginresult.jsp" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">아 이 디</th>
						<td width="500"><input type="text" id="id" name="id" placeholder="아이디 입력"></td>
					</tr>
					<tr>
						<th width="100">패스워드</th>
						<td width="500"><input type="password" id="pw" name="pw" placeholder="패스워드 입력"></td>
					</tr>
					<tr>
						<th width="100">취미</th>
						<td>
						<input type="checkbox" id="hobbys" name="hobbys" value="등산">등산 &nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="꽃꽂이">꽃꽂이 &nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="수영">수영 &nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="마라톤">마라톤 &nbsp;&nbsp;
						<input type="checkbox" id="hobbys" name="hobbys" value="술자리">술 &nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<th colspan="2">
							&nbsp;&nbsp;&nbsp;
							<button onclick="return formcheck()">로그인</button>
							<button type="reset">취소</button>
					</tr>				
				</table>
			</div>
		</form>
	</div>
</div>	
</body>
</html>