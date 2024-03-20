<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/WEB-INF/css/basic.css" rel="stylesheet" />
    <style>
        table {
            border-collapse: collapse;
            border-spacing: 0;
            margin : 0 auto;
        }
        /* 회원가입 양식 캡션 부분 */
        caption{  
            height: 50px;
            line-height: 50px;
            font-size: 1.5rem;
        }
        /* 제목 부분(th) */
        .tTitle{
            width: 150px;
            height: 40px;
            background-color: rgb(183, 244, 206);
            letter-spacing: 2px;
            font-size: 1.1rem;
        }
      
        /* 입력양식이 있는 부분 */
        .tCont{
            width: 650px;
            box-sizing: border-box; /* 크기를 테두리까지 */
            padding-left: 10px;
        }
        .input1{
            width: 250px;
            height: 26px;            
        }
        .btn{
            width: 100px;
            height: 26px;
            background-color: beige;
            border: 0.5px solid gray;
            border-radius: 5px;  /* 테두리 모서리 둥글리기 */
        }
        .iphone{
            width: 100px;
        }
        .ipost{
            width: 130px;
        }
        .iaddress{
            width: 350px;
        }
        .sub{
            height: 40px;
            text-align: center;
        }
        tr:last-child{
            border-left: none;
            border-right: none;
            border-bottom: none;
            background-color: rgb(214, 250, 165);
        }
    </style>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>

      document.addEventListener('DOMContentLoaded', function() {
         
         //#. 우편번호 검색
         const zipbtn = document.querySelector("#zipbtn");
         
         //버튼이 눌려 졌을 때만 동작
         zipbtn.addEventListener('click', function() {    //() =>{} 
               
               new daum.Postcode({
                  oncomplete : function(data) {
//                     // 폼명.우편번호코드입력할_input_태그의_이름.값 = 넘어온 데이터의 zonecode 값 넘겨 주기
                     document.userMember.zipcode.value = data.zonecode;
                     //주소 전체를 받기 위한 변수
                     let fullAddress ='';
                     //추가 주소, 건물명/동명을 받을 변수
                     let extendAddress='';
                     
                     //기본주소 (R-도로명, J-지번)
                     if(data.userSelectedType === 'R'){
                        fullAddress = data.roadAddress;
                     }else{
                        fullAddress = data.jibunAddress;
                     }
                     // 확인용 - 제대로 지번과 도로명이 찍히는지 확인
                     //document.userMember.address1.value = fullAddress;
                     
                     
                     //추가 주소 - 법정동/법정리 이름,  건물명   
                     //빌딩명과 법정동/법정리가 있을 수도 있고 없을 수도 있음
                     if(data.userSelectedType === 'R'){
                        if(data.bname !== ''){ //법정동/법정리가 있으면
                           extendAddress += data.bname;
                        }
                        
                        if(data.buildingName !== ''){ //건물명이 있으면
                           extendAddress += (extendAddress !=='' ? ', ' + data.buildingName : data.buildingName);
                           
                        }
                     
                        //기본주소 (추가 주소) 
                        fullAddress +=(extendAddress !=='' ? '(' + extendAddress + ')' : '');
                     }
                    
                     //폼에 찍기-확인
                     document.userMember.address1.value = fullAddress;
                     document.userMember.address2.focus();         
                     
                  }
               }).open();
         });//zipbtn이 클릭되었을 때 동작의 끝

      });

      
   // 아이디 중복체크, 외부 자바스크립트로 뺄 것
      function registerFunction(){
      	let id = $('#id').val();
      	
//      	$.ajax({ 경로, 동기화여부, 성공하면 할 일 })
//      	$.ajax({ url:'경로', async: true/false, success: function(result){성공하면 할 일})
      	
      	
      	$.ajax({
      		type:'POST',	//전달방식(=경로), 데이터를 넣어줘야 함
      		
      		url:'UserRegisterCheck.do',	//URLMapping 방식을 쓰기 때문
      			// 파라미터: 값
      		data:{id:id},
      		success:function(result){
      			if (result == 1){
      				 $('#idText').text('사용할 수 있는 아이디입니다.');
      			} else {
      				 $('#idText').text('사용할 수 없는 아이디입니다.');
      			}
      		
      		}

      	});
}   	

	// 비밀번호 확인
//	자바스크립트
//	let password1 = document.querySelector("#password1").value;
//	let password2 = document.querySelector("#password2");	//.value 생략가능
//		if (password1 !== password2) {
//			let span = document.querySelector("#passwordText");
//			span.textContent = "비밀번호가 일치하지 않습니다.";
//		} else {
//		}
	
//	jQuery
function passwordCheckFunction(){
	let password1 =$('#password1').val();	//value값
	let password2 =$('#password2').val();	//value값
		if (password1 !== password2) {
			$('#passwordText').text("비밀번호가 일치하지 않습니다.")
		} else {
			$('#passwordText').text('');
//			$('#password2').attr('disabled', true);	//비활성화(true), 활성화(false)
//			$('#password2').prop('readonly', true);	//읽기전용(true), 읽기쓰기(false)
			$('#password2').prop('readonly', true);	//읽기전용(true), 읽기쓰기(false)
		}
}
</script>

 
</head>
<body>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<hr>
<br>

    <!-- 입력 양식 -->
    <form action="membership.do" method="post" name="userMember" >
        <!-- 회원가입 양식 -->
        <table border="1">
            <caption>회원가입 양식</caption>
          
            <tr>
                <th class="tTitle"><label for="id">아이디</label></th>
                <td class="tCont"><input type="text" class="input1" name="id" id="id" required="required">
                            <button type="button" class="btn" id="overlapCheck" onclick="registerFunction()">중복체크</button><br>
                            <span id="idText"></span>
                </td>
            </tr>
            <tr>
                <th class="tTitle"><label for="pwd">비밀번호</label></th>
                <td class="tCont"><input type="password" class="input1" name="password1" id="password1"  required="required">
                 
                </td>
            
            </tr>
            <tr>
                <th class="tTitle"><label for="pwd1">비밀번호 확인</label></th>
                <td class="tCont"><input type="password" class="input1" name="password2" id="password2" onkeyup="passwordCheckFunction()" required="required">
                <br><span id="passwordText"></span>
                </td>
            
            </tr>
            <tr>
                <th class="tTitle"><label for="name">이 름</label></th>
                <td class="tCont"><input type="text" class="input1" name="name" id="name" required="required"></td>
            </tr>
            <tr >
                <th class="tTitle"><label for="phone">휴대폰번호</label></th>
                 <td  class="tCont"><input type="text" class="input1 iphone" name="phone" id="phone" required="required">  
                </td>
            </tr>
            <tr>
                <th class="tTitle"><label for="post">우편번호</label></th>
                <td class="tCont"> <button type="button" class="btn" id="zipbtn">우편번호</button>
                              <input type="text" class="input1 ipost" name="zipcode" id="post"></td>
            </tr>           
            
            
            <tr>
                <th class="tTitle"><label for="address">주소</label></th>
                <td class="tCont"><input type="text" class="input1 iaddress" name="address1" id="address1" readonly="readonly"></td>
            </tr>
            <tr>
                <th class="tTitle"><label for="address1">상세주소</label></th>
                <td class="tCont"><input type="text" class="input1 iaddress" name="address2" id="address2"></td>
            </tr>
            <tr>
                <th class="tTitle"><label for="email">회원구분</label></th>
                <td class="tCont"><input type="text" class="input1" name="role" id="role"></td>
            </tr>
            <tr>
              <td colspan=2 class="sub"><input type="submit" class="btn" value="가입하기">
                                              <input type="reset" class="btn" value="새로작성">
              </td>
            </tr>
        </table>
    </form>
    <br>
<hr> 

<%
//	String messageContent = (String) session.getAttribute("messageContent");
//	String messageType = (String) session.getAttribute("messageType");
	String messageContent = null;
	String messageType = null;
                		
    if(session.getAttribute("messageContent") != null) {
    	messageContent = (String) session.getAttribute("messageContent");
    }
    if(session.getAttribute("messageType") != null) {
    	messageType = (String) session.getAttribute("messageType");
    } 
	if(messageContent != null) {
%>
	
	<h3>${messageType}</h3>	
	<h3><%= messageContent%></h3>
	<h3>${messageContent}</h3>

<%	
	//한번 출력한 후에는 다시 나오지 않도록
	session.removeAttribute("messageContent");
	session.removeAttribute("messageType");

	} %>
	
<%@ include file="/WEB-INF/layout/footer.jsp" %>
</body>
</html>