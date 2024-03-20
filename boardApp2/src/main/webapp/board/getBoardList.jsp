
<%@page import="com.choong.biz.board.BoardDTO"%>
<%@page import="com.choong.biz.board.BoardDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.search {
	height: 40px;
	width: 700px;
	margin-bottom: 10px;
}

.search>select, .sub {
	width: 100px;
	height: 30px;
	text-align: center;
}

.search>input[type=text] {
	width: 400px;
	height: 25px;
}

.th1, .td1 {
	width: 150px;
	height: 40px;
	line-height: 40px;
	text-align: center;
}
.td1:nth-child(4) {
	width: 250px;
}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>

	<form action="getBoardList.do" method="post">
		<div class="search">
			<select name="searchCondition">
				<option value="TITLE">제목</option>
				<option value="CONTENT">내용</option>
			</select> <input name="searchKeyword" type="text" />
			 <input type="submit" value="검색" class="sub" />
		</div>
	</form>
	<%-- 검색 종료 --%>

	<table border="1">
		<tr>
			<th class="th1">번호</th>
			<th class="th1">제목</th>
			<th class="th1">작성자</th>
			<th class="th1">등록일</th>
			<th class="th1">조회수</th>
		</tr>

		<c:forEach items="${boardList}" var="b" varStatus="i">
		<tr>
			<td class="td1">${b.getSeq()}</td>
			<td class="td1"><a href="getBoard.do?seq=${b.getSeq()}">${ b.getTitle()}</a></td>
			<td class="td1">${b.getWriter()}</td>
			<td class="td1">${b.getRegDate()}</td>
			<td class="td1">${b.getCount()}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>