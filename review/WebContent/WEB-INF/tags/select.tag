<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="sname" required="true"%>
<%@ attribute name="bg"%>
<%--bg 속성이 empty 이면 yellow로 초기화--%>
<c:if test="${empty bg}">
	<%-- bg !=null && ! bg.equals("") --%>
	<c:set var="bg" value="yellow" />
	<%-- tagTest bg="" empty면 yellow --%>
</c:if>
<select name="${sname}" style="background-color:${bg}">
	<option>제목
	<option>내용
</select>