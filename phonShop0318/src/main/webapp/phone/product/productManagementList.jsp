<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdn.datatables.net/2.0.2/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.0.2/js/dataTables.bootstrap5.js"></script>
<style>
.wrap {
	margin-top: 150px;
	width: 80%;
	height: 80%;
	display: block;
	float: right;
}

.user_btn_update {
	display: inline-block;
	padding: 5 10px;
	font-size: 10px;
	text-align: center;
	text-decoration: none;
	cursor: pointer;
	border: 0.1px #f8f9fa;
	border-radius: 5px;
	background-color: #f8f9fa;
	color: #c5c1c1;
	transition: background-color 0.3s, color 0.3s, border-color 0.3s;
}

/* 버튼 호버 효과 */
.user_btn_update:hover {
	background-color: #ffffff;
	color: #5898d8;
}

.user_btn_delete {
	margin-left: 10px;
	display: inline-block;
	padding: 5 10px;
	font-size: 10px;
	text-align: center;
	text-decoration: none;
	cursor: pointer;
	border: 0.1px #f8f9fa;
	border-radius: 5px;
	background-color: #f8f9fa;
	color: #c5c1c1;
	transition: background-color 0.3s, color 0.3s, border-color 0.3s;
}

/* 버튼 호버 효과 */
.user_btn_delete:hover {
	background-color: #ffffff;
	color: #d85872;
}

.th2, .td2 {
	text-align: center;
}
</style>

<script>
	document.addEventListener('DOMContentLoaded', function() {

		new DataTable('#example', {
			// 표시 건수기능 숨기기
			lengthChange : false,
			// 정보 표시 숨기기
			info : false,
			lengthMenu : [ 10, 20, 30, 40, 50 ], // -셋트1(같이사용해야 기능이 사용됩니다.)
			// 기본 표시 건수를 20건으로 설정
			displayLength : 20, // -셋트1(같이사용해야 기능이 사용됩니다.)
			// 검색 기능 숨기기

			columnDefs : [
			// 1번재 항목 열을 숨김
			{
				targets : 0,
				width : 70
			},

			// 2번째 항목의 넓이를 100px로 설정
			{
				targets : 4,
				width : 100
			} ]

		});

	});
</script>
</head>
<body>
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
						<header>
							<jsp:include page="header.jsp" flush="true" />
						</header>
						<div class=".wrapper">
							<div class="wrap">

								<table id="example" class="table table-striped"
									style="width: 100%">
									<thead>
										<tr>
											<th class="th1">순위(판매가)</th>
											<th class="th1">등록일</th>
											<th class="th1">상품명</th>
											<th class="th1">판매가</th>
											<th class="th1">재고량</th>
											<th class="th1">할인중</th>
											<th class="th1">정렬</th>
											<th id="proMenu-9" colspan="2">관리</th>

										</tr>
									</thead>
									<tbody>

										<c:forEach items="${orderList}" var="pr" varStatus="i">
											<tr>
												<td class="td1"><a
													href="productListServlet.do3=${pr.getProductDisplayStatus()}"></a>${pr.getProductDisplayStatus()}</td>
												<td class="td1">${pr.getProductSalePrice()}</td>
												<td class="td1">${pr.getProductInventoryQuantity()}</td>
												<td class="td1">${pr.getProductRegistrationDate()}</td>
												<td class="td1">${pr.getProductName()}</td>
												<td class="td1">${pr.getProductSaleCount()}</td>
												<td class="td1">${pr.getProductDiscountStatus()}</td>
												<td class="td1">${pr.getProductOriginalPrice()}</td>
												<td class="td1">${pr.getProductCostPrice()}</td>
												<td class="td1">${pr.getProductPaymentType()}</td>
												<td class="td1">${pr.getProductContent()}</td>
												<td class="td1">${pr.getProductImage()}</td>
												<td class="td1">${pr.getProductHashtags()}</td>
												<td class="td1">${pr.getMainCategory()}</td>
												<td class="td1">${pr.getSubCategory()}</td>
												<td class="td1">${pr.getProductBest()}</td>
												<td class="td1">${pr.getProductCode()}</td>


												<td class="td2">
													<form action="productListServlet.do3" method="post">
														<input type="hidden" name="productCode"
															value="${pr.getproductCode()}">
														<button class="user_btn_update">수정</button>
													</form>
													<form action="productListServlet.do3" method="post">
														<input type="hidden" name="productCode"
															value="${pr.getproductCode()}">	<%--productDelete ? productCode --%>
														<button class="user_btn_delete">삭제</button>
													</form>
												</td>
											</tr>
										</c:forEach>
									</tbody>
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