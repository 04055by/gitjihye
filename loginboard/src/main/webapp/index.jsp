<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<title>Insert title here</title>
<style>
  th,td{
     text-align: center;
  }
</style>


</head>
<body>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<hr>
<br><br>
<script>

  //javascript를 통해 서버로 정보를 담아보내 줄 request 객체를 생성
  let request = new XMLHttpRequest();	// ◀ javascript를 통해 서버로 정보를 담아보내줄 request객체를 생성
  
  function searchBoardFuction(){
 		//서블릿 컨트롤러에게 요청하면 처리를 한 후 JSON을 넘겨줌
		//request.open("HTTP요구방식-GET/POST", "정보를요청할URI(요구할정보)-문자열", true;비동기식/false;동기식)

     request.open("POST", "ajaxSearch?writer="+encodeURIComponent(document.querySelector("#boardWriter").value), true);
  
		//JSON 처리
//		request.onreadystatechage = function(){};	// 서버에 응답을 처리할 함수 생성 및 지정
     request.onreadystatechange=serarchProcess; // 성공적으로 요청 동작이 끝나면 받아온걸 처리해줘
     request.send(null);  // 대상 서버에 값을 전달
  
  }

  function serarchProcess(){
     let table = document.querySelector("#ajaxTable");
     table.innerHTML="";
           			/* readyState : 데이터 응답상태 
						4 - 처리 및 응답준비 완료
						3 - request를 처리 중
						2 - 서버가 request를 받음
						1 - 서버와 연결이 성사됨 	*/ 
						//200 - 요청 성공, 404(Not Found)-페이지없음, 							500(Internal Server Error)-서버오류발생,, 	*/
			
     if(request.readyState === 4 && request.status===200 ){ //200 - 요청 성공, 404(Not Found)-페이지 없음
                                                 //500(Internal Server Error) : 서버 오류 발생,...
       let result=null;
       { let object = window.eval('(' + request.responseText+')');
          result = object.result;
       } 	// let object = eval('('+request.reponseText+')') 	<-- 이 방식은 절대 쓰지 말것...
         
       for(let i=0;i<result.length; i++){
          let row = table.insertRow(0);  
          for(let j=0; j<result[i].length; j++){
             let cell = row.insertCell(j);
             cell.innerHTML = result[i][j].key;
          } //end of for(안)
       }//end of for(밖)
          
       }//end of if                                         
                                                 
  }//end of function
  document.addEventListener('DOMContentLoaded', function(){
     searchBoardFuction();  	//처음부터 게시판이 나오도록 함수를 호출
     
  });
  
  
</script>
<div class="container"">
<form>
   <div class="form-group form-row">
      <div class="col-md-3">
         <input class="form-control" type="text" id="boardWriter" onkeyup="searchBoardFuction()" placeholder="검색어어어어어">
      </div>      
      <div class="col-md-2">
         <button class="btn btn-primary" type="button" onclick="searchBoardFuction()" >검색</button>
      </div>      
   </div>
</form>
<table class="table table-bordered">
   <thead>	<%-- 위; thead, 아래; tbody --%>
      <tr>	<%-- db에서 검색해옴 --%>
         <th class="bg-info text-white">작성자</th>
         <th class="bg-warning text-white">제목</th>
         <th class="bg-danger text-white">내용</th>
         <th class="bg-success text-white">등록일</th>
      </tr>
   </thead>
   <tbody id="ajaxTable">

   </tbody>
</table>

</div>


</body>
</html>