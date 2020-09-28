<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>註冊作業(轉換與處理)</title>
</head>
<body>
	<jsp:forward page="RegisterServlet">
		<jsp:param value="${param.realname}" name="realname"/>
		<jsp:param value="${param.name}" name="name"/>
		<jsp:param value="${param.password}" name="password"/>
		<jsp:param value="${param.email}" name="email"/>
	</jsp:forward>
</body>
</html>