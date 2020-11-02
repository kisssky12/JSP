<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquerySelector2</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function() {
		//모든 li 태그 중에서 첫번째
		//$("li:first").css("color", "pink");

		//첫번째 자식들
		//$("li:first-child").css("color", "pink");
		//중간의 자식들
		//$("li:nth-child(2)").css("color", "pink");
		//마지막 자식들
		//$("li:last-child").css("color", "pink");
		
		$("li:nth-child(2)").gt(0)css("color", "pink");
		
	})
</script>
</head>
<body>
	<h3>필터링</h3>
	<ul>
		<li>자바
		<li>JSP
		<li>JSP
	</ul>
	<ul>
		<li>스프링
		<li>egov
		<li>JSP
	</ul>
</body>
</html>