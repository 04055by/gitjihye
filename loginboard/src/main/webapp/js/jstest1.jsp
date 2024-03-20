<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script scr=""></script>
<script>
window.onload = function(){ //document.addEventListener('DOMContentLoaded',()=>{})
/* 객체: 여러 자료를 다룰 때 | 배열도 객체 [배열은 대괄호]

	const products = { 키:값 }
	const products = { 
		product: '사과',
		price: 2500;
		region: '대구',
		}				
	[ ▼호출 ]
	products['price']
	products.product  -> 사과
	products.price 	  -> 2500
*/

	const student = { 
			name : '홍길동',
			age: 20,
			phone: '0101245124',
			fruit: ['사과','딸기'],
				checkFunction:function(food){		// <- 객체 안 함수 = 메소드
					alert(this.name + '은' + food + '을 먹습니다.')
					}
	}
	//[ ▼배열안에 객체를 추가 : 객체명.속성=값 ]
	student.score = 90;	// object 배열 안에 score=90 추가
	student.hobby = '농구';

	//[ ▼배열안에 객체를 삭제 : delete.객체명.속성; ]
	delete.student.hobby;
	
	//[ ▼출력 ]
	student.checkFunction('바나나');
	alert(student.score);
	
	let div = document.querySelector("#objtest");
	div.innerHTML = student.hobby;
	div.textContent = student.hobby;
//	div.textContent = '가나다';	//html코드 자체를 문자로 인식
	
/*	JSON (Javascript Object Notation) : 자바스크립트의 객체처럼 자료를 표현하는 방식
	함수 사용할 수 없음
	값을 표현할 때는 문자열, 숫자, boolean 자료형만 사용
	문자열은 반드시 큰따옴표(홑따옴표X-자바에서 문자로 처리하기 때문)
	키(key)에도 반드시 따옴표 붙여야 함
	대부분의 프로그래밍 언어는 JSON 형식의 문자열을 읽어들이는 기능이 있음
	자바스크립트의 객체를 JSON 문자열로 변환 : JSON.stringify()
	JSON.stringify(data), JSON.stringify(data, null, 2)
	
*/
*}
</script>
<script>
	//[ ▼자바스크립트의 객체 ]
	const data = [{ 
			name : "홍길동",
			age : 20,
			score : 90 },
		{ 
			name : "김디비",
			age : 30,
			score : 70 },
		{ 
			name : "한사랑",
			age : 25,
			score : 50
		}]

	//[ ▼자바스크립트 객체 자료 -> JSON으로 변환 ]
	const json = JSON.stringify(data);
	console.log(json);
	
	
	//[ ▼JSON문자열 -> 자바스크립트 객체로 변환 ]
	console.log(JSON.parse(json));
	
	
</script>
</head>
<body>
	<div id = "objtest"></div>
</body>
</html>