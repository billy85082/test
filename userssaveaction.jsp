<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.gjun.domain.*" errorPage="errorhandler.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>採用Action Element進行表單內容處理 註冊作業</title>
</head>
<body>
<%
	String com="巨匠電腦";
	//進入PageContext 網頁層級Attribute
	pageContext.setAttribute("company",com);
	//建構了Users物件
	Users myusers=new Users();
	myusers.setName("張三豐");
	myusers.setUserName("myusers11111");
	myusers.setPassword("11111");
	myusers.setEmail("11111@");
	//納入生命週期
	request.setAttribute("users",myusers);
	
%>
<!-- 使用action element useBean -->
<jsp:useBean id="users" class="com.gjun.domain.Users"></jsp:useBean>
<jsp:setProperty property="*" name="users" />
<!-- 一個表單欄位 擷取注入到特定javabean物件的Property(setXxxx()) -->
<!-- <jsp:setProperty property="userName" name="users" value='<%=request.getParameter("userName") %>'/> -->
<!-- 問看看JavaBean內容 -->
<div>真實姓名</div>
<jsp:getProperty property="name" name="users"/>
<div>帳號名稱${users.userName}</div>
<div>帳號名稱${users.getUserName()}</div>
公司行號：${company}

<!-- 處理好 資料呈現結果 -->
<fieldset>
	<legend>您新增的帳號資料</legend>
	<div>真實姓名：${users.name }</div>
	<div>真實姓名：${users['userName'] }</div>
	<div>真實姓名：${users.password }</div>
	<div>真實姓名：${users.email }</div>
	
	<!-- 取出Request生命週期範圍的users -->
	<!-- pageScope/requestScope/sessionScope/ApplicationScope -->
	<div>Request Users:${requestScope.users.userName}</div>
	<br/>
	<div>應用系統範圍的Attribute:${applicationScope.config.application }</div>
</fieldset>
<a href="demo.jsp">超連結</a>
</body>
</html>