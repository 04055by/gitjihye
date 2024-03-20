<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%--
   		[ core 라이브러리 ]
   		<c:if test="조건" [var="결과를 담을 변수"] [scope="{page | request | session | application}"]> 
   			조건이 참인 경우 출력되는 부분
   		</c:if>
   
   		[ scope ]
   		page: 현재 page 범위
   		request : request 객체 범위
   		session : session 유지되는 동안
   		application : 프로그래밍 실행동안 
   		
   		ex) <c:if test="${msg == 'user1'}" var="Result">
				${result}
			</c:if>
		
			<c: forEach [var="참조객체"] [varStatus="상태정보변수"] begin="시작" end="종료" [step="반복 단계 증가
				반복 출력문
			</c: forEach>
		
		ex) 회원이름과 이메일을 반복하여 출력
		- members 는 이전 페이지에서 전달된 리스트 객체로 가정, m리스트 아이템이 하나씩 전달됨
		- status 객체를 통해 index, 횟수 참조
		
				<c:forEach var="m" items="${members}" begin=0 end="5" varStaus ="status">
				index : ${status. index} <br>
				count : ${status.count} <br>
				name : ${m.name} <br>
 
  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td{
   width: 120px;
   height: 50px;
   line-height: 50px;
   text-align: center;
}

</style>
</head>
<body>
<%--
<%
   String number = request.getParameter("number");
    int num = Integer.parseInt(number);
%>
  <c:set var="number" value="<%=num%>"  /> 
  <c:if test="${number % 2 == 0}" >
        ${"짝수"}
  </c:if>
  <c:if test="${number % 2 == 1}" >
        ${"홀수"}
  </c:if>
  <br>
  <hr>
  <br>
  <c:choose>
        <c:when test="${number % 2 == 0}" >
           <c:out value="${number }"  />은 짝수입니다.
        </c:when>
  
        <c:when test="${number % 2 == 1}" >
           <c:out value="${number }"  />은 홀수입니다.
        </c:when>
        <c:otherwise>
           숫자가 아닙니다.
        </c:otherwise>
  </c:choose>
  --%>
  <br>
  <hr>
  <br>
  <h2>구구단</h2>
  <table border="1">
        <c:forEach var="i" begin="2" end="9">
        <tr>
           <c:forEach var="j" begin="1" end="9">
              <td> ${ i } * ${ j } = ${ i*j } </td>
           </c:forEach>
        </tr>
        </c:forEach>
  </table>
</body>
</html>