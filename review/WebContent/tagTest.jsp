<%@page import="common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tagTest.jsp</title>
<style>
.pagination li {
	display: inline-block;
	background-color: hotpink;
	color: black;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	border: 1px solid #ddd;
}
</style>
</head>
<body>
	<my:select sname="bsearch" bg="" />
	<my:login />
	<%
	Paging paging = new Paging();
	paging.setPage(1);
	paging.setTotalRecord(144);
	%>
<script>
	function goPage(p){
		location.href="   .do?p="+p;
		
	}
</script>1111
	<my:paging paging="<%=paging%>" jsfunc="goPage" />
</body>
</html>