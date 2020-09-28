<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>客戶查詢結果清單</title>
</head>
<body>
	<div style="font-size:24px;color:blue;">查詢紀錄數：${requestScope.result.size() }</div>
	<br/>
	<table border="1" width="100%">
		<tr>
			<td>客戶名稱</td>
			<td>聯絡地址</td>
			<td>國家別</td>
		</tr>
		<!-- JSTL var="" 不是區域變數 預設為PageContext.setAttribute("item") -->
		<c:forEach items="${requestScope.result }" var="item">
			<tr>
				<td>${pageScope.item.name }</td>
				<td>${pageScope.item.userName }</td>
				<td>${pageScope.item.email }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>