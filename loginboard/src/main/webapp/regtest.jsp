<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<form action="" method="post" name="regtest" onsubmit="return regFunction()">
	아이디: <input type="text" name="id" id="id"><br>
	전화번호: <input type="text" name="phone" id="phone"><br>
	<input type="submit" value="체크">
</form>

<script>
	function regFunction(){
		//정규표현식: /정규표현식 /플래그 [ https://regexr.com/5mhou ]
		// | - 또는, () 그룹, [] 괄호안의 어떤 문자든 {^} 괄호안의 어떤 문자가 아닐때
		// (?: ) 찾지만 기억하지 않음
		
		// ? - 없거나 있거나
		// * - 없거나 있거나 많거나		
		// + 하나 또는 더 많이
		// {n} - n번 반복
		// {min, max}
		// ^ - 문자의 시작
		// $ - 문장의 끝
		// \ - 특수문자
		// . - 어떤 글자나
		// \d - 숫자
		// \D - 숫자가 아님
		// \w - 문자
		// \W - 문자가 아님
		// \s - 공백
		
//		[ 1 ] 핸드폰번호; 010시작? 숫자몇자리?
//		let id = document.querySelector("#id").value;
		let id = document.regtest.id.value;
		let phone = document.regtest.phone.value;
//		let reg=/^[0-9]{11}$/;
//		let reg=/^010[0-9]{8}$/;	//010으로 시작하고, 0-9사이 값을 여덟자리로 쓸게	
		let reg=/^\d{3}-\d{4}-\d{4}$/;
		
/*		if(!reg.test(phone)){
			alert("010으로 시작하고 숫자만 입력 가능");
			return false;
		} else {
			alert("정상적으로 등록되었습니다.");
			return;
		} //if-else 끝	*/
		
		
//		[ 2 ] 아이디; 첫글자 알파벳(대/소문자ok), 숫자로 시작 가능

//		let regId = /^[A-C]$/ ;		//첫글자는 A B C 중 하나
/*		let regId = /^[0-9A-Za-z]{5,10}$/ ;	// 최소5, 최대10글자 제한	한글: ㄱ-ㅎ
		
		if(!reg.test(id)){
			alert("첫글자는 숫자/영문 대소문자만 가능");
			return false;
		} else {
			alert("정상적으로 등록되었습니다.");
			return;
		} //if-else 끝 */
		
//		[ 3 ] 비밀번호; 알파벳 대소문자,숫자,특수문자 필수 포함
		// 1) 
//		const regPwd = /^[a-zA-z0-9,#%]{4,6}$/ ;	//글자수제한 4-6
		const regPwd = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&]).{4,8}$/ ;	//글자수제한 4-6
		
		if(!regPwd.test(id)){
			alert("알파벳 대소문자,숫자,특수문자가 포함되어야 합니다.");
			return false;
		} else {
			alert("정상적으로 등록되었습니다.");
			return;
		} //if-else 끝
		
		
		
	}

</script>

</body>
</html>