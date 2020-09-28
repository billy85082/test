<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>表單欄位自動封裝JavaBean</title>
</head>
<body>
	<!-- 建構一個JavaBean物件(Users) Users users=new Users() -->
	<jsp:useBean id="user" class="com.gjun.domain.Users">
	</jsp:useBean>
	<!-- 將表單欄位name="xxxx"...自動封裝到這一個JavaBean物件 setXxxx(value) -->
	<jsp:setProperty property="*" name="user"/>
	
	<jsp:getProperty property="name" name="user"/>
	<jsp:getProperty property="userName" name="user"/>
	<jsp:getProperty property="password" name="user"/>
	<jsp:getProperty property="email" name="user"/>
	
</body>
</html>