<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="menu/banner.jsp" %>   
<body>
	<%
		//Java 程式碼
		for(int i =1 ; i<=3 ; i++){
			//內建物件
			out.println("<li> Hello World!!");
		}
	%>
</body>
</html>