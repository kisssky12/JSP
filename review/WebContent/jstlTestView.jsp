<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름: ${requestScope.map.name} <br> 
	취미: ${requestScope.map.hobby[0]} <br> 
	전체취미: 	<c:forEach items="${map.hobby}" var="hb">${hb},</c:forEach> <br>
	<c:set target="${member}" property="id" value="upd_choi" />
	회원아이디: ${member.getId()} <br> 
	두번째 회원 이름: ${memberlist[1].name} <br> 
	전체 회원 이름: <c:forEach items="${memberlist}" var="member">${member.name},</c:forEach> <br> 
	세션의 회원 이름: ${sessionScope.member.name} <br> 
	파라미터 role: ${param.role} <br> 
	요청이전페이지: <%=request.getHeader("Referer")%> = ${header["Referer"] } <br> 
	브라우저: ${header["User-Agent"]} <br> 
	쿠키: ${cookie.popupYn.value } <br>
	<!--<c:if test="${cookie.popupYn.value != 'n'}"> -->
	<!--<script>alert("광고입니다.");</script> -->
	<!--</c:if> -->

	<script>
		function getCookie(cname) {
			var name = cname + "=";
			var decodedCookie = decodeURIComponent(document.cookie);
			var ca = decodedCookie.split(';');
			for (var i = 0; i < ca.length; i++) {
				var c = ca[i];
				while (c.charAt(0) == ' ') {
					c = c.substring(1);
				}
				if (c.indexOf(name) == 0) {
					return c.substring(name.length, c.length);
				}
			}
			return "";
		}

		if (getCookie('popupYn') != 'n') {
			alert("광고입니다.");
		}
	</script>
	<hr>
	<h4>상품리스트</h4>
	<c:set var="sum" value="0" />
	<!-- sum=0 -->
	<c:forEach items="${goods}" var="price">
	<c:choose>
		<c:when test="${price>=300}">A</c:when>
		<c:when test="${price>=200}">B</c:when>
		<c:when test="${price>=100}">C</c:when>
	</c:choose>
	${price} <br>
		<c:set var="sum" value="${sum + price}" />
	</c:forEach>
	상품 합계: ${sum} <!-- <c:out value="${sum}" /> -->
	<hr>
	<c:forTokens items="${map.job}" delims="," var="job">
		${job}<br>
	</c:forTokens>
</body>
</html>