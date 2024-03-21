<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.wrapper {
	margin-top: 200px;
    height: 80%;
    display: block;
    float: right; 
    border-radius: 50px;
	border-radius: 30px;
	width: 80%;
	background-repeat: no-repeat;
	font-size: 20px;
	padding: 12px 12px 12px 12px;
	border: 2px solid black;
	
}

.form_wrap {
width:70%;
height: 100px;
display: flex; /* Flexbox 사용 */
    justify-content: space-between; /* 요소들 사이의 간격을 균등하게 배치 */
    align-items: center; /
border-radius: 50px;
border: 1px solid black;
margin-bottom: 20px;
padding-right: 30px;
}

#myInput {
	width: 100%;
	font-size: 16px;
	padding: 12px 12px 12px 12px;
}

#myTable {
	width: 100%;
	padding: 12px 12px 12px 12px;
	justify-content: around-space;
	display: inline-block;
}

#myTable th, #myTable td {
	padding: 12px;
    width: auto; /* 열의 너비를 자동으로 설정 */
}

#myTable th {
border-radius: 10px;
    background-color: #f1f1f1;
	font-size: 18px;
	font-weight: normal;
}

#myTable td {
	font-size: 16px;
}

tr.content {
	background-color: #f8f9fa;
}

#myTable tr:hover {
	background-color: #ffffff;
}

.drop {
	background-color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	color: #fff;
	margin-top: 25px;
}
select, .design, .design-2 {
	display: inline-block;
	margin-top: 30px;
	height: auto;
	border: none;
	padding: 10px 20px;
	border-radius: 50px;
	margin-right: 10px;
	vertical-content: center;
}

.search_input {
	display: inline-block;
	float: center;
	margin-left: 10px; /* select와의 간격 조정 */
	margin-top: 0px;
	margin-bottom: 0px;
	text-align: center;
	border: 2px solid #f8f9fa;
	border-radius: 50px;
}

.design {
	outline: none;
	margin-left: 300px; /* 아이콘과 검색 입력 필드 사이의 간격 조정 */
}
/* 상품등록 연필 아이콘 */
.design-2 {
float: right:
margin-left: 5px;
	padding-left: 5px;
}


#icon1, #icon2 {
	display: inline-block;
	vertical-align: middle;
}

#icon1 {
	margin-top: 20px;
	margin-right: 5px; /* 아이콘과 검색 입력텍스트박스 사이의 간격 조정 */
}

#icon2 {
	margin-top: 20px;
	padding-left: 10px; /* 아이콘과 검색 입력텍스트박스 사이의 간격 조정 */
}

#proUpd {
width:auto;
text-align: center;
border-radius: 30px;
}

#proDel {
	text-align: center;
	padding-left: 0px;
	white-space: nowrap; /* 텍스트를 가로로 출력 */
}


#proMenu-1, #proMenu-2, #proMenu-3, #proMenu-4, #proMenu-5, #proMenu-6,
	#proMenu-7, #proMenu-8, #proMenu-9 {
	text-align: center;
	width: auto;
}


/* 수정,삭제 버튼 사이의 왼,오여백 0 */
.proUpd+.proDel {
	margin-left: 0; 
	margin-right: 0; 
}

/* 수정,삭제 버튼 사이의 간격 */
#proUpd, #proDel {
	margin: 0 5px; 
}

.search_input {
	position: relative;
	display: inline-block;
	float: right; /* 우측으로 이동 */
    margin-right: 10px; /* 우측 여백 추가 */
    margin-top: 25px; /* 위쪽 여백 추가 */
    text-align: center;
    border: 2px solid #f8f9fa;
    border-radius: 50px;
}

.search_input input {
	padding-right: 30px; /* 텍스트 상자의 오른쪽 여백 */
	 margin-right: auto;
}

.pro_insert {
    display: inline-block;
    float: right; /* 우측으로 이동 */
    margin-right: 10px; /* 우측 여백 추가 */
    margin-top: 25px; /* 위쪽 여백 추가 */
    text-align: center;
}
.search_icon, .insert_icon {
	position: absolute;
	top: 50%;
	right: 20px; /* 아이콘을 텍스트 상자 오른쪽에 배치 */
	transform: translateY(-50%);
}

.insert_icon {
	padding-right: 180px;
	margin-left: auto;
}

.pro_insert input {
	padding-right: 100px; /* 텍스트 상자의 오른쪽 여백 */
	text-align: center;
	height: 40px;
	width: 40px;
}

.pro_insert {
	position: relative;
	display: inline-block;
	align-items: center;
	width: 300px; /* 원하는 너비로 조정하세요 */
	margin-left: 0;
}
.search_input, .pro_insert {
    flex-grow: 1; /* 남은 공간을 동일하게 차지하도록 설정 */
    margin: 0 10px; /* 좌우 여백 추가 */
   }
.pro_insert input[type="submit"] {
	flex-grow: 1;
}
</style>
<script>
// 1. 검색부분
function submitForm() {
	// 선택한 드롭다운 메뉴의 값을 가져옴
	var selectedValue = document.getElementsByName("pass_input_type")[0].value;
	// 선택한 값이 있는 경우에만 폼을 전송
	if (selectedValue) {
		document.forms["searchfrm"].submit(); // 폼 전송
	}
}

function myFunction() {
	var input, filter, table, tr, td, i, txtValue;
	input = document.getElementById("myInput");
	filter = input.value.toUpperCase();
	table = document.getElementById("myTable");
	tr = table.getElementsByTagName("tr");
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[0];
		if (td) {
			txtValue = td.textContent || td.innerText;
			if (txtValue.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}

// 수정 클릭시
function updateProduct() {
	alert('상품 수정화면으로 이동..');
	// 여기에 상품 수정화면으로 이동하는 코드를 추가
}

// 삭제 클릭시 두 번 확인
function deleteProduct() {
	if (confirm('해당 상품을 정말로 삭제하시겠습니까?')) { // 첫 번째 확인 창
		alert('상품이 삭제되었습니다!');
		// 여기에 상품 삭제화면으로 이동하는 코드를 추가
	}
}
</script>
</script>
</head>
<body>
	<header>
		<jsp:include page="header.jsp" flush="true" />
	</header>
	<div class=".wrapper">
	
	<div class="wrapper">
		<div id="myinput">
			<h3>상품 관리</h3>
			<div class="comp_search">
				<div class="form_wrap">
					<select name="pass_input_type"><br>
					<br>
					<br>
						<option value="all" selected>전 체</option>
						<option value="pname">상 품 명</option>
						<option value="pcode">상품코드</option>
					</select>
					<div class="search_input">
						<input type="search" name="pass_input_value" class="design"
							value="" placeholder="검색어" /> <a href='#' id="icon1"
							class="search_icon"><span class="material-icons">search</span></a>
					</div>

					<div class="pro_insert">
						<input type="submit" name="pass_insert_value" class="design-2"
							value="상품 등록" /> <a href='#' id="icon2" class="insert_icon"><span
							class="material-icons">edit</span></a>
					</div>
				</div>
			</div>
		</div>


		<table id="myTable">
			<tr class="header">
				<th id="proMenu-1">순위(판매가)</th>
				<th id="proMenu-2">등록일</th>
				<th id="proMenu-3">상품명</th>
				<th id="proMenu-4">판매가</th>
				<th id="proMenu-5">재고량</th>
				<th id="proMenu-6">할인중</th>
				<th id="proMenu-7">정렬</th>
				<th id="proMenu-9" colspan="2">관리</th>

				<!-- <th id="proMenu-9"></th>
    <th style="width:5%;">순위(판매가)</th>
    <th style="width:10%;">등록일</th>
    <th style="width:15%;">상품명</th>
    <th style="width:10%;">판매가</th>
    <th style="width:10%;">재고량</th>
    <th style="width:5%;">할인중</th>
    <th style="width:5%;">정렬</th>
    <th style="width:10%;">관리</th>    -->

			</tr>
			<tr>
				<td id="proMenu-1">1위</td>
				<td id="proMenu-2">2024-03-03</td>
				<td id="proMenu-3">기본 젤리 케이스</td>
				<td id="proMenu-4">11000원</td>
				<td id="proMenu-5">999개</td>
				<td id="proMenu-6">N</td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">2위</td>
				<td id="proMenu-2">2024-02-13</td>
				<td id="proMenu-3">검정 하드 케이스</td>
				<td id="proMenu-4">17000원</td>
				<td id="proMenu-5">999개</td>
				<td id="proMenu-6">N</td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">3위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">4위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">5위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">6위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">7위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">8위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">9위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">10위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">11위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">12위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">13위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">14위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">15위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">16위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">17위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">18위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">19위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>

			<tr>
				<td id="proMenu-1">20위</td>
				<td id="proMenu-2"></td>
				<td id="proMenu-3"></td>
				<td id="proMenu-4"></td>
				<td id="proMenu-5"></td>
				<td id="proMenu-6"></td>
				<td id="proMenu-7">-</td>
				<td><button class="proUpd" id="proMenu-8"
						onclick="updateProduct()">수정</button></td>
				<td><button class="proDel" id="proMenu-8"
						onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
			</tr>


		</table>
	</div>
		<aside class="side">
			<jsp:include page="productaside.jsp" flush="true" />
		</aside>
	</div>
	<footer>
		<jsp:include page="footer.jsp" flush="true" />
	</footer>
</body>
</html>