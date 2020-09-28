<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="MemberValidServlet">
		<div>使用者名稱</div>
		<input type="text" name="username"/>
		<div>使用者密碼</div>
		<input type="password" name="password"/>
		<input type="submit" value="登入"/>
		
	</form>
</body>
</html>