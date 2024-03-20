<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/basic.css" rel="stylesheet" />
<style>
td{
	height: 40px;
	line-height: 40px;
}
.tdTitle{
	width: 200px;
	text-align: center;
	background-color: pink;
}
.tdContent{
	width: 400px;
	padding-left: 20px;
}
.tdContent>input{
	width: 350px;
	height: 30px;
	line-height: 30px;
}
.tdTextarea{
	height: 200px;

}
.tdTextarea > textarea{
	width: 350px;
	height: 190px;
	line-height: 190px;
}

.tdSubmit{
	text-align: center;
}
</style>

</head>
<body>
<%@ include file="/WEB-INF/layout/header.jsp" %>
	<h2>게시판 글 등록 화면</h2>
	<hr>
	<form action="insertBoard.do" method="post">
		<table border="1">
			<tr>
				<td class="tdTitle"> 제목 </td>
				<td class="tdContent">
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<td class="tdTitle"> 작성자 </td>
				<td class="tdContent">
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<td class="tdTitle"> 내용 </td>
				<td class="tdContent tdTextarea">
					<textarea name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td class="tdSubmit" colspan="2">
					<input type="submit" value="글등록">
				</td>
			</tr>

		</table>
	</form>
	<%@ include file="/WEB-INF/layout/footer.jsp" %>
</body>
</html>
