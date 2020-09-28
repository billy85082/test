<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>測試參數(QueryString/Form Field)</title>
</head>
<body>
	<%
		//request.getRequestDispatcher("target").forward(arg0, arg1)
	%>
	<!-- 擷取QueryString http://...?param=value&... -->
	<jsp:forward page="paramprocess.jsp">
		
		<jsp:param value="${param.name }" name="myname"/>
		
	</jsp:forward>
</body>
</html>