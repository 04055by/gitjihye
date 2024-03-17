<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품 수정</title>
<style>
* {
  width: 100%;
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
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
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

.displayStatusBox {
float: left;
padding-right:0px;
}
.proStatus {
padding-left: 0px;
margin-left: 0px;
}
#displayStatusBoxY, displayStatusBoxY {
padding-left: 0px;
margin-left: 0px;
margin: 0px;
}

.proStatus {
  display: flex; /* 내부 요소들을 가로로 정렬하기 위해 flexbox 사용 */
}

.displayStatusBox {
  margin-right: 10px; /* 각 요소 사이의 간격 조절 */
}


</style>

<script>
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
/*해시태그 추가*/
function hashtagsForm() {
    // 폼에서 입력한 값 가져오기
    var proHashtags = document.getElementById("hashtagsInput").value;

    // 여기에 폼 데이터를 서버로 전송하는 코드 작성

    // 예시: 간단히 콘솔에 입력한 값을 출력하는 코드
    console.log("추가할 해시태그: " + proHashtags);

    // 폼 제출 방지 (페이지 새로고침 방지)
    event.preventDefault();
}

</script>

</head>
<body>
<div class="cssmenu1"></div>
<div class="cssmenu2"></div>
    <br>
   <h3>상품수정</h3>
     <br>
     <hr>
    <!-- <hr style="border:solid 1px black;"> --> 
	<div class="containerUdt"> 
	<div class="proUdt-1">기본 설정 <hr>
	<div class="proStatus">상품 노출/숨김</div>
    		<tr>
				<th class="">상품 노출</th>
				<td colspan="3">
											<label class='design'><input type=radio id='_viewY' name='_view' value='Y'  checked >노출</label><label class='design'><input type=radio id='_viewN' name='_view' value='N'  >숨김</label>									</td>
			</tr>
</div>
</div>


	<div class="proCode">상품코드
	<label class="procodeBox">
		<input type="text" class="design" value="JELLY-001-001" placeholder="상품코드" style="width:200px" readonly="readonly">
		<a href="#none" onclick="#">상품상세페이지</a>
	<!-- <div class="proDesc">최초 상품 등록 시 자동으로 지정되며, 수정이 불가합니다.</div>  -->	
	</label></div>

	<div class="proName">상품명
	<label class="proNameBox">
		<input type="text" class="design" placeholder="상품명 입력" style="width:200px">
	</label></div>

	<br>
	<br>
	<hr>
	
	<div class="proUdt-2">가격 및 옵션 설정<hr>
	
	<div class="proPrice">상품가격
	<label class="proPriceBox-1">
		<p>정상가</p><input type="text" class="proOriginal" style="width:200px"><p>원</p>
	<label class="proPriceBox-2">	
		<p>판매가</p><input type="text" class="proSale" style="width:200px"><p>원</p>
	<div class="proDesc">할인이 없을 경우 정상가에 0을 입력하거나 판매가와 동일하게 입력해주세요.<br>
정상가가 판매가와 동일하여 할인율이 0이거나, 정상가가 판매가보다 낮으면 할인율은 노출되지 않습니다.<br>
할인율은 소수점 반올림 계산되며 소수점 이하인 경우에도 노출되지 않습니다.</div>  	
	</label></label></div>
	
	<div class="proStock">재고량
	<label class="proStockBox">
		<input type="text" style="width:200px"><p>개</p>
	</label></div>

	<div class="proStock">판매량
	<label class="proSaleBox">
		<input type="text" style="width:200px"><p>개</p>
	</label></div>
	
	<br>
	<br>
	<hr>
	
	<div class="proCtg">카테고리 및 부가설정<hr>
	
	<div class="proCtgBox"><p>1차 카테고리</p>
    	<!--  <div class="form_wrap">-->
    	<select name="proCtg-1">
	        <option value="proCtg1-1" selected>삼성</option>
	        <option value="proCtg1-2" >애플</option>
	        <option value="proCtg1-3" >샤오미</option>
        </select>
        <br>
    <div class="proCtgBox"><p>2차 카테고리</p>
    	<select name="proCtg-2">
	        <option value="proCtg2-1" selected>하드</option>
	        <option value="proCtg2-2" >젤리</option>
	        <option value="proCtg2-2" >가죽</option>
	        <option value="proCtg2-3" >z-플립</option>
        </select></div>
                
    <div class="proSalesMethod">판매방식
		<label class="proMethodBox">
		<input type="text" class="design" placeholder="항시판매" style="width:200px" readonly="readonly">
		<!-- <a href="#none" onclick="#">상품상세페이지</a> -->
		</label></div>       
	
	<div class="proPaymentMethod">결제방식
		<label class="proPaymentMethodBox">
		<input type="text" class="design" placeholder="무통장입금" style="width:200px" readonly="readonly">
		<!-- <a href="#none" onclick="#">상품상세페이지</a> -->
		</label></div>    	
	 
	 
	<div class="proQuantity">1회 최대 구매개수
	<label class="proQuantityBox">
		<input type="text" class="design" style="width:200px" readonly="readonly">
		<a href="#none" onclick="#">상품상세페이지</a>
		<div class="proDesc">주문 시 한번에 구매할 수 있는 상품의 수량을 설정할 수 있습니다.(모든 옵션 동일<br>0으로 입력 시 제한없이 구매가 가능합니다.</div> 	
	</label></div>
	
  	<div class="proDCRate">할인율 설정
	<label class="proDCRateBox"> 
		<hr style="border:dashed 0.5px black;"> 
		<input type="text" class="design" placeholder="0" style="width:200px" readonly="readonly"><p>%</p>
		<div class="proDesc">상품에 자동적용되는 혜택입니다.<br>설정할 경우 자동아이콘(상품쿠폰 아이콘)이 상품목록과 상세페이지에 노출됩니다.</div> 	
		<hr style="border:dotted 1px black;"> 
	</label></div>
               
    <br>
	<br>
	<hr>
	           
    <div class="proDescription">상세설명 및 해시태그<hr>
    
    <div class="proDescriptionBox">상세설명 설정 API씀?</div>
	<div class="proImage">이미지 등록
    
    <div class="proImageBox">이미지 등록</div>
    
    <div class="proHashtagsBox">해시태그</div>           
      	<input type="text" id="hashtagsInput" class="design" placeholder="해시태그 입력" style="width:200px" readonly="readonly">          
		<button type="button" onclick="hashtagsForm()">추가하기</button>
		
</div></div></div>


</body>
</html>
