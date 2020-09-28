<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>錯誤處理中心</title>
</head>
<body>
<%
	//使用內建物件exception
	String msg=exception.getMessage();
%>
<div style="color:red ; font-size:40px"><%=msg %></div>
</body>
</html>