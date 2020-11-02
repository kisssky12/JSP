<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object.jsp</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

</head>
<body>
	<div>a</div>
	<div>b</div>
	<div>c</div>
	<script>
		var div = document.getElementsByTagName("div");
		//div[0].style.color = "red";     //Dom객체 
		$(div[0]).css("color", "red"); 	  //Dom객체 -> jQuery객체 : $(dom객체) 
		var $div = $("div")
		$div[1].style.color = "blue"; //jQuery객체 -> Dom객체 : get(), item() 바꿔주면 됨 
	</script>
</body>
</html>