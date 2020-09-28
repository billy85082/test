<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorhandler.jsp"%>

<%
	//Header 跟 request and response 有關
	String apikey=request.getHeader("apikey");
	//判斷是否有
	if(apikey==null){
		response.sendError(401); //採用預設的error page
	}if(apikey.equals("")){
		response.sendError(401);
	}
%>


${header.apikey}