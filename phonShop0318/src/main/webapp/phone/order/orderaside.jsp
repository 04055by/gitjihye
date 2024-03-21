<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Sidebar</title>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link href="${pageContext.request.contextPath}/css/sidebar2.css" rel="stylesheet"/> 
	
</head>
<body>
<div class="wrapside">
	<nav class="sidebar">
         <div class="text">
            주문관리
         </div>
         <ul id="sideul">
            <li class="active"><a href="orderManagementList.jsp">전체주문관리</a></li>
            <li>
               <a href="#" class="serv-btn">배송관리
               <span class="fas fa-caret-down second"></span>
               </a>
               <ul class="serv-show">
                  <li><a href="${pageContext.request.contextPath}/phone/order/orderManagement1.jsp">배송준비</a></li>
                  <li><a href="${pageContext.request.contextPath}/phone/order/orderManagement2.jsp">배송중</a></li>
                  <li><a href="${pageContext.request.contextPath}/phone/order/orderManagement3.jsp">배송완료</a></li>
               </ul>
            </li>
         </ul>
      </nav>
</div>
      <script src="../../js/sidebar2.js"></script>
</body>
</html>