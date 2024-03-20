<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date date = new Date();

%>
	<h1>예외가 발생되었습니다.</h1>
	예외 발생 시간 : <%=date.toString() %>
</body>
</html>