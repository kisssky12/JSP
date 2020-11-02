<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
// 체크한 상품의 수량과 단가의 곱의 전체 합계를 출력하시오.
</script>
</head>
<body>
<h3>장바구니</h3>
<button id="btn">계산</button>
<table border="1">
<thead>
	<tr><td>선택</td><td>상품</td><td>수량</td><td>단가</td></tr>
</thead>
<tbody>	
	<tr><td><input type="checkbox"></td><td>볼펜</td><td>2</td><td>100</td></tr>
	<tr><td><input type="checkbox"></td><td>사표</td><td>1</td><td>200</td></tr>
	<tr><td><input type="checkbox"></td><td>지우개</td><td>5</td><td>50</td></tr>
	<tr><td><input type="checkbox"></td><td>노트</td><td>10</td><td>200</td></tr>
</tbody>	
</table>
<div>합계<span id="total"></span></div>
<script>
var chk = $(":checkbox:checked")

	$(function(){
		$("total").bind(":checkbox:checked", function(){
			
		});
	});
		

</script>
</body>
</html>