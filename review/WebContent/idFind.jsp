<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function findUsername() {
		//1. xhr객체 생성.
		var xhttp = new XMLHttpRequest();
		//2. 콜백함수(onreadychange)
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4) {
				if (this.status == 200) {
					var obj = JSON.parse(this.responseText)
					document.getElementById("result").innerHTML += obj.name;
				} else {
					document.getElementById("result").innerHTML = 
						"error:"+ this.status;
				}
			} else {
				document.getElementById("result").innerHTML = 
					"로딩중";
			}
		};
		//3. 서버 연결 open(연결방식) get, 방식 , 디폴트 true비동기식(필요없음) / false(동기식)때는 사용
		var param = "userid=" + userid.value;
		xhttp.open("POST", "server/findName.jsp"); // param값 받을 때는 ?필요
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		//4. 요청 시작
		xhttp.send(param);
		console.log("요청시작");
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>