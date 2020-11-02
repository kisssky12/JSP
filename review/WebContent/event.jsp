<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
</head>
<body>
<button type="button" id="btn1">이벤트처리1</button><p id="info">상세소개</p>
<button type="button" id="btn2">이벤트처리2</button><p id="info2">상세소개2</p>
<button type="button" >이벤트처리3</button><p id="info3">상세소개3</p>

<script>
	//이벤트 핸들러
	//btn1.onclick = function(){ info.style.display="none"; };
	//onclick에는 이벤트타입을 하나만 넣고 add는 여러개타입가능
	//btn1.addEventListener("click", function(){info.style.display="none"; } )
	//btn1.addEventListener("click", function(){alert("처리됨"); } )

	//btn1.addEventListener("click", btnHandler);
	//btn2.addEventListener("click", btnHandler);
	document.body.addEventListener("click", btnHandler)
		
	function btnHandler(){
		event.target.nextSibling.style.display = "none";
		//event.stopPropagation(); //전파중지
		
		/*if(event.target.id == "btn1") {
			info.style.display="none"
		} else {
			info2.style.display="none"
		}
		*/
	}
</script>
</body>
</html>