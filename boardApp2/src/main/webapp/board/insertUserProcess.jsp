<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td{
	height: 40px;
	line-height: 40px;
}
.tdTitle{
	width: 200px;
	text-align: center;
	background-color: beige;
}
.tdContent{
	width: 400px;
	padding-left: 20px;
}
.tdContent>input{
	width: 250px;
	height: 30px;
	line-height: 30px;
}
.tdRadio>input{
	width: 20px;
}
.tdSubmit{
	text-align: center;
}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<h2>회원 가입 결과 화면</h2>
	<table border="1"> 
		<tr>
			<td class="tdTitle">아이디</td>
			<td class="tdContent">  </td>
		</tr>
		<tr>
			<td class='tdTitle'>비밀번호</td>
			<td class="tdContent"> </td>
		</tr>
		<tr>
			<td class='tdTitle'>이름</td>
			<td class="tdContent">   </td>
		</tr>
		<tr>
			<td class='tdTitle'>권한</td>
			<td class="tdContent tdRadio">  </td>
		</tr>

	</table>

</body>
</html>