<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.gjun.domain.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員註冊作業</title>
</head>
<body>
<%
	//擷取編碼
	request.setCharacterEncoding("UTF-8");
	//擷取表單欄位 使域內建物件request/response/this/config/out/application...
	String name=request.getParameter("realname");
	String userName=request.getParameter("username");
	String password=request.getParameter("password");
	String email=request.getParameter("email");
	//對資料庫進行新增  往往採用DAO Pattern(Data Access Object)
	//儲存語法對SQL Insert into tablename(field1Name,......) values(value1,......)
	//能不能將前面擷取表單欄位封裝成一個物件(JavaBean-Entity class類似一筆紀錄)
	//直接新增物件 即可同步資料庫新增作業(不要直接下達Insert into... Natvive SQL)
	//建構Entity class (JavaBean)
	Users users=new Users();
	users.setName(name);
	users.setUserName(userName);
	users.setPassword(password);
	users.setEmail(email);
	
	//輸出
	//out.println(userName);
	//處理過程中 需要參考到應用系統(ServletContext)一些共用參數
	AppConfig conf=(AppConfig)application.getAttribute("config");
%>
<br/>
<fieldset>
	<legend>App:<%=conf.getApplication() %>處理結果</legend>
	<div>您輸入的註冊資料，帳號：<%=name %>已經儲存成功！</div>
</fieldset>
</body>
</html>