<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../css/basic.css" rel-"stylesheet"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css?ver=1"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>할머니 할아버지도 쉽게하는 관리자 페이지</title>
</head>
<body>
<div id = "wrapheader">
    <nav class="fixed-nav-bar">
    <div id='cssmenu'>
      <ul id="headerul">
        <li><a href="${pageContext.request.contextPath}/phone/user/userManagementList.jsp"><span>회원관리</span></a></li>
         <li><a href="${pageContext.request.contextPath}/phone/product/productManagementList.jsp"><span>상품관리</span></a></li>
         <li><a href="${pageContext.request.contextPath}/phone/order/orderManagementList.jsp"><span>주문관리</span></a></li>
         <li><a href="${pageContext.request.contextPath}/phone/statistics/statistics1.jsp"><span>통계관리</span></a></li>
         <li><a href="${pageContext.request.contextPath}/phone/board/board.jsp"><span>게시판관리</span></a></li>
         <li><a href="${pageContext.request.contextPath}/phone/design/designManagement.jsp"><span>디자인관리</span></a></li>
	
   		<div id='cssmenu2'>
        <li><a href='#' id="icon1"><i class="material-icons">home</i>HOME</a></li>
        <li><a href='#' id="icon2"><i class="material-icons">account_circle</i>Admin님 접속 성공</a></li>
        <li id="logout"><a href='#'><span>로그아웃</span></a></li>
        </div>
    </ul>
</div>



</nav>
</div>
</body>
</html>