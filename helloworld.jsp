<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.gjun.domain.Users,java.io.*"%>
<%@ page info="HelloWorld測試語法的頁面"  import="java.util.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我是JSP</title>
<!-- action element-XML -->
<%
	//定義區域變數
	String banner="menu/banner.jsp";
%>
<jsp:include page="<%=banner%>"/>
<script type="text/javascript">
	//Query寫法
	$(document).ready(
		//埋入事件程序
		function(){
			alert('Hi jQuery');
		}
	);
</script>
</head>
<body>
<!-- 要進行jsp jspInit()方法覆寫 進行網頁物件產生的初始化 -->
<%!
	//Declare 語法
	//定義屬性Attribute
	private String companyName;
	//Override 覆寫父親的方法
	public void jspInit(){
		this.companyName="巨匠電腦";
		//...
	}
	//自訂方法
	public String helloWorld(String who){
		return String.format("%s 您好！！",who);
	}
%>
<div style="color:red;font-size:48px">您好! 我是Javascript</div>
<%
	//scriptlet
	//建構一個Users物件
	Users users=new Users();
	users.setName("王小明");
	users.setUserName("8877");
	users.setPassword("123");
%>
<br/>
<div>姓名</div>
<!-- Expression表達式 -->
<input type="text" value="<%=users.getName()%>"/>
<br/>
<%=this.helloWorld("王小華")%>
<br/>
<%=companyName%>
<br/>
<%=this.getServletInfo()%>
</body>
</html>