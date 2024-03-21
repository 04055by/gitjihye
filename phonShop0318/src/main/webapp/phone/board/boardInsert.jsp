<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>공지사항 입력</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/announcement.css?ver=1"/>
<style>
	.wrapper{
		width: 100%;
	  	height: 100vh;
	  	
	}

</style>
</head>
<body>
<div class="wrap">
	<header>
		 <jsp:include page="header.jsp" flush="true"/>		
	</header>
	<div class=".wrapper">
	<div class="board-container">
    <form>
        <h1>공지사항</h1>
        <br>
        <div class="form-group">
          <label for="title">제목:</label>
          <input type="text" id="title" name="title" required>
        </div>
        <br>
        <div class="form-group">
          <label for="content">내용:</label>
          <textarea id="content" name="content" required></textarea>
        </div>
        <br>
        <div class="form-group">
          <label for="attachment">첨부파일:</label>
          <input type="file" id="attachment" name="attachment">
        </div>
        <div class="button-group">
          <button type="submit">글쓰기</button>
          <button type="button" class="cancel-button" onclick="window.history.back();">취소</button>
        </div>
      </form>
	</div>
	<aside class="side">
	 <jsp:include page="boardaside.jsp" flush="true"/>
	</aside>
</div>
</div>
	<footer>
		<jsp:include page="footer.jsp" flush="true"/>
	</footer>
</body>
</html>