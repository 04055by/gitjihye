<%@page import="DTO.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page errorPage="/WEB-INF/errors/boardError.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="/css/basic.css" rel="stylesheet" />
<style>

.headerWrap{
	width: 100%;
	margin:0 auto;
}
.headerWrap ul{
	height: 50px;
	margin: 20px 0;
	display: flex;
	flex-direction: row;	
}
.headerWrap li>a{
	display: inline-block;
	padding: 5px 20px;
}
ul,li{
list-style: none;
}

</style>

</head>
<body>
	<div class="headerWrap">
	<h1>Jsp_Servlet_Shop</h1>
    <ul>
    <li><a href="index.jsp">홈으로</a>
    <li>
	<c:if test="${user==null}">
		<a href="insertUserView.do">회원가입</a>&nbsp;&nbsp;&nbsp;
		<a href="loginView.do">로그인</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">게시판</a>&nbsp;&nbsp;&nbsp;
	</c:if>
	<c:if test="${user!=null}">
		<a href="insertUserView.do">회원가입</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">게시판</a>&nbsp;&nbsp;&nbsp;
		<a href="logout.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
	</c:if>	
	</li>

	
	</ul>
<%--
	UserDTO user = (UserDTO) session.getAttribute("user");
--%>
<%--
<%	if(user == null) { %>
	<a href="/board/insertUser.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="login.do">로그인</a>&nbsp;&nbsp;&nbsp;
<%	} else { %>
	<a href="insertBoard.do">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="logout.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
<%	} %>
 --%>	
	
	</div>
</body>
</html>