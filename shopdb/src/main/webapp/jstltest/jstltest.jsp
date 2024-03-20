<%@ page language= "java" contentType= "text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--

	jstl(jsp standard tag library)
	core 태그 : 변수 선언, 삭제 등 병수와 관련된 작업, if, for문과 같은 제어 기능
	url 처리로 페이지 이동 기능 제공
	formatting 태그
	sql 태그
	function 태그
	
	<c:out> </c:out> 출력하는 데 사용
	<c:if> </c:if>
	...
	
	EL(Expression Language) : 표현 언어,
	간단한 구문으로 변수/객체를 참조할 수 있고
	데이터가 없거나 null 객체를 참조할 때 에러가 발생하지 않음
	
	${ 10 + 20 }	//30
	${user.name}
	${true && false} // false
	${user.name == "홍길동" ? "학생" : "외부인" }
	${test[0]}

--%>

<! DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">
<title>jstl 및 el 태그 연습</title>
</head>
<body>
<h1>jstl 연습</h1>


<c:set var="product1" value='Th3>hello jstl phone</h3>" ></c:set> -- %>
<c:set var="product1" value="<h3>hello jstl phone</h3>" />
<c:set var="product2" value="<h3>jstl 연습 전화</h3>" />
<c:set var="intArr" value=${[10, 20, 30, 40]} " />

<p> <%-- out 출력, EL로 대체 --%>
	<c:out value="${product1} " />
	EL : ${product1} <br>
	${product2}
</p>

	<c:out value="${intArr[2]}" />
	${intArr[0]}

<div>
<c:forEach var="num" varStatus= "i" items="${intArr}"></c:forEach>
<h2>${i.index} : ${num}</h2>

</div>
</body>
</html>
