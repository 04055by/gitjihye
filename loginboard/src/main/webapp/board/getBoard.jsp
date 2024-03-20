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
	<form action="updateBoard.do" method="post">
	  <input type="hidden" name="seq" value="${board.getSeq()}" >
		<table border="1">
			<tr>
				<td class="tdTitle"> 제목 </td>
				<td class="tdContent">
					<input type="text" name="title" value="${board.getTitle()}">
				</td>
			</tr>
			<tr>
				<td class="tdTitle"> 작성자 </td>
				<td class="tdContent">
					${board.getWriter() }
				</td>
			</tr>
			<tr>
				<td class="tdTitle"> 내용 </td>
				<td class="tdContent tdTextarea"> ${board.getContent()}
					<textarea name="content"  >${board.getContent()}</textarea>
				</td>
			</tr>
			<tr>
				<td class="tdTitle">등록일</td>
				<td class="tdContent">
					${board.getRegDate()}
				</td>
			</tr>
			<tr>
				<td class="tdTitle">조회수</td>
				<td class="tdContent">
					${board.getCount()}
				</td>
			</tr>
			<tr>
				<td class="tdSubmit" colspan="2">
					<input type="submit" value="글수정">
				</td>
			</tr>

		</table>
	
	</form>
 <%-- getRole()인 값이 ADMIN 일 때 처리할 부분, 
   ADMIN은 글삭제 권한이 있음 --%>

<c:if test='${user.getRole().equals("ADMIN")}'>
	   <a href="deleteBoard.do?seq=${board.getSeq()}"> 글삭제</a>
</c:if>

<%@ include file="/WEB-INF/layout/footer.jsp" %>
</body>
</html>