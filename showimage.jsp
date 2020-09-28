<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>相片型錄</title>
</head>
<body>
	<!-- 設計表單頁面 挑選圖片 -->
	<form action="showphotoServlet" method="post">
		<div>請挑選圖片</div>
		<select name="photo">
			<option value="guineaPig1">啃草天竺鼠</option>
			<option value="guineaPig2">肥肥天竺鼠</option>
			<option value="guineaPig3">壽司天竺鼠</option>
		</select>
		<input type="submit" value="下載"/>
	</form>
</body>
</html>