<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<!-- 파비콘 -->
 <link href="../images/homeIcon.jpg" rel="icon" type="image/jpg" />
</head>
<link href="../css/basic.css" rel = "stylesheet" type = "text/css" />
<link href="../css/header.css" rel = "stylesheet" type = "text/css" />

<style>
 topNav { 
        list-style-type: none; 
        float: left;
        text-align: center;
        border-top: 1px solid black;
    }
    
 topRight>li {
        float: right;
        text-align: 10px;
        margin-bottom: 50px;
    }

</style>
<body>
<h1></h1>
    <div class="topRight-1"><a href="#">ADMIN님 로그인 성공&nbsp;&nbsp;</a></div>
    <div class="topRight-2"><a href="#">로그아웃&nbsp;&nbsp;</a></div>

    <!-- <div class="wrap"> -->
        
        <div class="topNav">
            <ul>
                <li><a href="#">회원관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="#">상품관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="#">주문관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="#">디자인관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="#">통계관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a href="#">게시판관리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li><br>
            </ul>   
        </div>   
        
        </div>

 <%--       <div class="topInfo">
            <ul>
                <li><a href="#">AAAA</a></li>
                <li><a href="#">프로그램</a></li>
                <li><a href="#">열린공간</a></li>
                <li><a href="#">동아리 모임</a></li>
                <li><a href="#">이용안내</a></li>
                <li><a href="#">자료실</a></li>
                <li><a href="#">오시는길</a></li><br>
            </ul>

        </div> --%>

</body>
</html>