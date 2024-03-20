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

   h1{
      width:640px;
      text-align: center;
   }
</style>
</head>
<body>
 <h1>${pro.name} 상품 상세 정보</h1>
    <hr>
   <br>
   <table border="1">
      <tr>
         <th>상품번호</th>
         <th>상 품 명</th>
         <th>상품가격</th>
         <th>입 고 일</th>
      </tr>
   
      <tr>
          <td>${pro.id}</td>
          <td>${pro.name}</td>
          <td>${pro.price}</td>
          <td>${pro.date}</td>
      </tr>

   </table>
</body>
</html>