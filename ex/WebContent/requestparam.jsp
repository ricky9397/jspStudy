<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String name, id, pw, major, protocol;
	String[] hobbys;
%>

<%
	request.setCharacterEncoding("utf-8");

	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	major = request.getParameter("major");
	protocol = request.getParameter("protocol");
	
	hobbys = request.getParameterValues("hobby");
%>

이름 : <%= name %><br/>
아이디 : <%= id %><br/>
비밀번호 : <%= pw %><br/>
취미 : <%= Arrays.toString(hobbys) %><br/>
전공 : <%= major %><br/>
프로토콜 : <%= protocol %><br/>
</body>
</html>