<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="eric" uri="http://www.eric.com.tw/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<eric:helloTag/>
	<%
		out.println("Hello Java Web");
		String pname="photos/guineaPig1.jpg";
		pageContext.setAttribute("photo", pname);
	%>
	<br/>
	<eric:showPhoto photoName="<%=pname%>" size="small"/>
	<br/>
	<eric:showPhoto photoName="${photo}" size="middle"/>
	<br/>
	<eric:showPhoto photoName="photos/guineaPig1.jpg" size="big"/>

	<br/>
	<eric:helloBody>
		<div style="color:red ; font-size:30px">Hello World by body</div>
		<%
			out.println("<li>您好！");
		%>
	</eric:helloBody>
	
	<eric:bodyProcess>
		<div style="color:red;font-size:30px">世界和平</div>
	</eric:bodyProcess>
	
</body>
</html>