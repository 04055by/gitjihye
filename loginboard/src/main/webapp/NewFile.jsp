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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	document.addEventListener('DOMContentLoaded',function(){
    	//#.우편번호 검색
		new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
        }
    }).open();
	});
</script>
            
</head>
<body>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<hr>
<br>

    <!-- 입력 양식 -->
    <form action="" method="post" name="userMemeber" >
        <!-- 회원가입 양식 -->
        <table border="1">
            <caption>회원가입 양식</caption>
          
            <tr>
                <th class="tTitle"><label for="id">아이디</label></th>
                <td class="tCont"><input type="text" class="input1" name="id" id="id" onkeyup="idCheckFunction()" required="required">
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
<%@ include file="/WEB-INF/layout/footer.jsp" %>
</body>
</html>