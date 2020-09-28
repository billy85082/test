<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String com="巨匠電腦";
	pageContext.setAttribute("com",com);
%>
<!-- 函數沒有單獨執行 使用EL -->
${f:length(com) }
</body>
</html>