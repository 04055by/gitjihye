<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrapper{
		width: 100%;
	  	height: 100vh;
	  	
	}

	.wrap{
		margin-top: 100px;
		width: 80%;
		height: 80%;
		display: block;
		background-color: aliceblue;
		float: right;
	}
	
</style>
<script>
document.addEventListener('DOMContentLoaded', function(){
  new DataTable('#example',{
   // 표시 건수기능 숨기기
     lengthChange: false,
   // 정보 표시 숨기기
       info: false,
       lengthMenu: [ 10, 20, 30, 40, 50 ], // -셋트1(같이사용해야 기능이 사용됩니다.)
    // 기본 표시 건수를 20건으로 설정
       displayLength: 20,                // -셋트1(같이사용해야 기능이 사용됩니다.)   
     	columnDefs: [
        // 1번재 항목 열을 숨김
           { targets: 0, width: 70 },
           // 2번째 항목의 넓이를 100px로 설정
           { targets: 4, width: 100 }       
       ]
  });
});


  
</script>


</head>
<body>
   <header>
       <jsp:include page="header.jsp" flush="true"/>      
   </header>
<div class=".wrapper">
   <div class= "wrap">
   
   
       <table id="example" class="table table-striped" style="width:80%">
         <thead>
        <tr>
         <th class="th1" >번호</th>
         <th class="th1" >제목</th>
         <th class="th1" >작성자</th>
         <th class="th1" >등록일</th>
         <th class="th1" >조회수</th>
      </tr>
    </thead>
    <tbody>

      <c:forEach items="${boardList}" var="b" varStatus="i">
      <tr>
         <td class="td1">${b.getSeq()}</td>
         <td class="td1"><a href="getBoard.do?seq=${b.getSeq()}">${ b.getTitle()}</a></td>
         <td class="td1">${b.getWriter()}</td>
         <td class="td1">${b.getRegDate()}</td>
         <td class="td1">${b.getCount()}</td>
      </tr>
      </c:forEach>
      
      </tbody>
    <tfoot>
   
    </tfoot>
</table>

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.datatables.net/2.0.2/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.0.2/js/dataTables.bootstrap5.js"></script>
  
   </div>
   <aside class="side">
    <jsp:include page="useraside.jsp" flush="true"/>
   </aside>
</div>

	<footer>
		<jsp:include page="footer.jsp" flush="true"/>	
	</footer>

</body>
</html>