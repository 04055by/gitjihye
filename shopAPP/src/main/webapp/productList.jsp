<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   th{
      width: 120px;
      height: 40px;
      line-height: 40px;
      background-color: blue;
      color:white;
   }
   
   td{
     height: 40px;
     line-height: 40px;
     text-align: center;
   }
   
   td:nth-child(2n) {
      background-color: pink;
   }
   th:nth-child(6) {
      width:280px;   
   }
h1{
   width:640px;
   text-align: center;
}
</style>
</head>
<body>

   <h1>제품전체 리스트</h1>
   <hr>
   <br>
   <table border="1">
      <tr>
         <th>일련번호</th>
         <th>상품번호</th>
         <th>상 품 명</th>
         <th>상품가격</th>
         <th>입 고 일</th>
         <th>작업선택</th>
      </tr>
   
      <c:forEach var="p" varStatus="i" items="${products}">	
      <tr>
          <td>${i.count}</td>
          <td>${p.id}</td>
          <td>${p.name}</td>
          <td>${p.price}</td>
          <td>${p.date}</td>
         <td>
            <a href="/shopAPP/pcontrol?action=info&id=${p.id}">상세</a>&nbsp;&nbsp;&nbsp;
            <a href="/shopAPP/pcontrol?action=delete&id=${p.id}">삭제</a>&nbsp;&nbsp;&nbsp;
         </td>
   
      </tr>
      </c:forEach>
   </table>
</body>
</html>