<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>total</title>
</head>
<body>
	<div id="score">
		<div>100</div>
		<div>200</div>
		<div>300</div>
		<div>400</div>
	</div>
	<div>
		합계<span id="result"></span>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script>
		// div 합을 계산해서 result 위치를 출력 : each() 함수 사용
		var div = $("#score").children(); //id
		var str = 0;
		$.each(div, function(i) {
			str += parseInt($(this).text());
		});
		$("#result").text(str);
	</script>

</body>
</html>