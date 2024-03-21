<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>상품관리_productManagement</title>
<style>      /* https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_filter_table */
#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 80%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
  display: right;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
  width: auto; /* 열의 너비를 자동으로 설정 */
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

.drop {
  background-color:white;
  display:flex;
  justify-content:center;
  align-items:center;
  color:#fff;
  margin-top:25px;
}

select, .design {
  height:auto;
  border:none;
  padding:10px 20px;
  border-radius: 5px;
  margin-right: 10px;
}

.design {
  outline:none;
  margin-left: 0; /* 아이콘과 검색 입력 필드 사이의 간격 조정 */
  margin-top: 0;
}

.design {
}

select, .search_input {
   display: inline-block;
   float: left;
}

.search_input {
    display: inline-block;
    float: left;
    margin-right: 10px; /* select와의 간격 조정 */
    margin-top: 0px;
   margin-bottom: 0px;
}

#icon1 {
    display: inline-block;
    vertical-align: middle;
    margin-left: 0px; /* 아이콘과 검색 입력텍스트박스 사이의 간격 조정 */
    margin-left: 0; /* 아이콘과 검색 입력텍스트박스 사이의 간격 조정 */
    margin-top: 0;
}

.search_input {
	display: flex;
	text-aligh: center;
}
.material-icons {
    font-size: 30px; /* 아이콘 크기 조정 */
}

select, .design {
	border: 5px solid #ccc;
}

#proUpd {
	margin-right: 0px;
}

#proDel {
text-align: center;
padding-left:0px;
white-space: nowrap; /* 텍스트를 가로로 출력 */
}

#proUpd, #proDel {
    margin: 0 5px; /* 수정 버튼과 삭제 버튼 사이의 간격을 좁힘 */
}

#proMenu-1, #proMenu-2, #proMenu-3, #proMenu-4, #proMenu-5, #proMenu-6, #proMenu-7, #proMenu-8 {
   width: auto;
}

#proMenu-9 th {
	text-align:center;
	display: right;
}

#proMenu-10 {
margin:0px;
}

.proUpd + .proDel {
    margin-left: 0; /* 클래스 A B 버튼 사이의 왼여백을 0 */
}

.proDel + .proUpd {
    margin-right: 0; /* 클래스 B A 버튼 사이의 오여백을 0 */
}


.pass_input_type .search_input {
margin-left: 100px;
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
</head>
<body>
<div id="myinput">
<div class="cssmenu1"></div>
<div class="cssmenu2"></div>
    <br>
   <h3>상품관리</h3>
     <br>
     <hr>
        
            <div class="comp_search">
            <div class="form_wrap">
                <select name="pass_input_type">
                        <option value="all" selected>전   체</option>
                        <option value="pname" >상 품 명</option>
                        <option value="pcode" >상품코드</option>
                </select>
           <div class="search_input">
                <input type="search" name="pass_input_value" class="design" value="" placeholder="검색어" />
             <!--   <input type="submit" name="" value="" accesskey="s" class="btn_search" title="검색" />  --> 
                 <a href='#' id="icon1"><i class="material-icons">search</i></a>
           </div></div></div>
     <br><br><hr>
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
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
    </tr>
  
    <tr>
    <td id="proMenu-1">2위</td>
    <td id="proMenu-2">2024-02-13</td>
    <td id="proMenu-3">검정 하드 케이스</td>
    <td id="proMenu-4">17000원</td>
    <td id="proMenu-5">999개</td>
    <td id="proMenu-6">N</td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
    </tr>
    
    <tr>
    <td id="proMenu-1">3위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>    
     </tr>
  
    <tr>
    <td id="proMenu-1">4위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
    </tr>

    <tr>
    <td id="proMenu-1">5위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>  
    </tr>
    
    <tr>
    <td id="proMenu-1">6위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
   </tr>
    
    <tr>
    <td id="proMenu-1">7위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
     
    <tr>
    <td id="proMenu-1">8위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
    
    <tr>
    <td id="proMenu-1">9위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
    
    <tr>
    <td id="proMenu-1">10위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
  
    <tr>
    <td id="proMenu-1">11위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
   </tr>
     
    <tr>
    <td id="proMenu-1">12위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
     
    <tr>
    <td id="proMenu-1">13위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
     
    <tr>
    <td id="proMenu-1">14위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
     
    <tr>
    <td id="proMenu-1">15위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
    </tr>
    
    <tr>
    <td id="proMenu-1">16위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
    
    <tr>
    <td id="proMenu-1">17위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
    
    <tr>
    <td id="proMenu-1">18위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
   </tr>
   
    <tr>
    <td id="proMenu-1">19위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
    
    <tr>
    <td id="proMenu-1">20위</td>
    <td id="proMenu-2"></td>
    <td id="proMenu-3"></td>
    <td id="proMenu-4"></td>
    <td id="proMenu-5"></td>
    <td id="proMenu-6"></td>
    <td id="proMenu-7">-</td>
    <td><button class ="proUpd" id="proMenu-8" onclick="updateProduct()">수정</button></td>
    <td><button class ="proDel" id="proMenu-8" onclick="alert('상품이 삭제되었습니다!')">삭제</button></td>
     </tr>
  
    
</table>
</div>

</body>
</html>