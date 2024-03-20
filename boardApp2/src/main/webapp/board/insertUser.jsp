 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h2 {
	padding-left: 250px;
}
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
<h2>회원 가입 화면</h2>
<form action="insertUser.do" method="post">
	<table border="1"> 
		<tr>
			<td class="tdTitle">아이디</td>
			<td class="tdContent"><input type="text" name="id" required="required" > </td>
		</tr>
		<tr>
			<td class="tdTitle">비밀번호</td>
			<td class="tdContent"><input type="password" name="password" required="required" > </td>
		</tr>
		<tr>
			<td class="tdTitle">이름</td>
			<td class="tdContent"><input type="text" name="name" required="required" > </td>
		</tr>
		<tr>
			<td class="tdTitle">권한</td>
			<td class="tdContent tdRadio">
			   <input type="radio" name="role" value="USER" checked> USER 
			   <input type="radio" name="role" value="ADMIN" > ADMIN
			</td>
		</tr>
		<tr>
			<td colspan="2" class="tdSubmit">
				<input type="submit" value="회원가입" > 
				<input type="reset" value="가입취소" > 
			</td>
		</tr>

	
	</table>

</form>


</body>
</html>