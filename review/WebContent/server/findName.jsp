<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Thread.sleep(2000); // 2초 대기
	HashMap<String, String> map = new HashMap<>();
	map.put("choi","최기자");
	map.put("kim","김기자");
	map.put("park","박기자");
	//1.파라미터 "userid="(파라미터이름) + 값
	String userid = request.getParameter("userid");
	String name = map.get(userid);
%>
{"result":true, "name":"<%=name%>"}