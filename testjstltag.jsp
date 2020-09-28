<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="company" value="巨巨匠電腦" scope="session"></c:set>

<!-- 呈現jstl set設定Attribute -->
${company }
<br/>
<c:out value="${company}"></c:out>
<br/>
<div>挑選城市</div>
<select>
<c:forEach items="${requestScope.cities}" var="city">
	<option value="${city}">${city}</option>
</c:forEach>
</select>
<br/>
<select>
	<%
		String[] items=(String[])request.getAttribute("cities");
		for(String item:items){
	%>
		<option VALUE="<%=item%>"><%=item %></option>
	<%
		}
	%>
</select>
<br/>
<fn:formatDate value="${date}" pattern="EEEE, MMMM d, yyyy HH:mm:ss Z"/>
</body>
</html>