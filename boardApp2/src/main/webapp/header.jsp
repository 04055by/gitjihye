
<%@page import="com.choong.biz.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="../WEB-INF/errors/boardError.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.headerWrap{
		width: 100%;
		height: 100px;
		line-height: 100px;
		background-color: rgb(241,218,54);
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<div class="headerWrap">


<c:if test="${user==null}">
	<a href="insertUserView.do">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="loginView.do">로그인</a>&nbsp;&nbsp;&nbsp;
</c:if>
<c:if test="${user!=null}">
	<a href="insertBoardView.do">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="logout.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
</c:if>	
	
	
<%
	UserDTO user = (UserDTO) session.getAttribute("user");
%>
<%--
<%	if(user == null) { %>
	<a href="./board/insertUser.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="login.do">로그인</a>&nbsp;&nbsp;&nbsp;
<%	} else { %>
	<a href="insertBoard.do">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="logout.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
<%	} %>
 --%>	
	
	</div>
</body>
</html>