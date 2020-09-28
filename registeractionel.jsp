<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>註冊作業</title>
</head>
<body>
	<!--  -->
	<form action="actregister.jsp" method="post">
		<div>真實姓名</div>
		<input type="text" name="realname"/>
		<div>帳號</div>
		<input type="text" name="username"/>
		<div>密碼</div>
		<input type="password" name="password"/>
		<div>EMAIL</div>
		<input type="text" name="email"/>
		<br/>
		<input type="submit" value="註冊"/>
		
	</form>
</body>
</html>