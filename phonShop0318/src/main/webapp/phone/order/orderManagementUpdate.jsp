<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/css/insert.css" rel="stylesheet"/> 
<link href="${pageContext.request.contextPath}/css/baisc.css" rel="stylesheet"/> 
<!DOCTYPE html>
<html>
<head>
<style>
	.wrapper{
		width: 100%;
		display: flex;	  	
	}
</style>
</head>
<body>
<div class="wrap">
	<header>
		 <jsp:include page="header.jsp" flush="true"/>		
	</header>

<div class="wrapper">
	<article>
	</div>
	<aside class="side">
	 <jsp:include page="orderaside.jsp" flush="true"/>
	</aside>
	</article>
	<article>
	<div class="container">
  <h2>회원 주문</h2>
  <form>
    <div class="form-group">
      <label for="orderID ">주문번호:</label>
      <input type="text" id="orderID " name="orderID" required>
    </div>
    <div class="form-group">
      <label for="orderProductName">주문상품명:</label>
      <input type="text" id="orderProductName" name="orderProductName" required>
    </div>
    <div class="form-group">
      <label for="orderProductCount">수량:</label>
      <input type="number" id="orderProductCount" name="orderProductCount" required>
    </div>
    <div class="form-group">
      <label for="orderProductPrice">상품금액:</label>
      <input type="number" id="orderProductPrice" name="orderProductPrice" required>
    </div>
    <div class="form-group">
      <label for="orderDeliveryCost">배송비:</label>
      <input type="number" id="orderDeliveryCost" name="orderDeliveryCost" required>
    </div>
    <div class="form-group">
      <label for="orderTotalAmount">총주문액:</label>
      <input type="number" id="orderTotalAmount" name="orderTotalAmount" required>
    </div>
    <div class="form-group">
      <label for="orderDate">주문일시:</label>
      <input type="datetime-local" id="orderDate" name="orderDate" required>
    </div>
    <div class="form-group">
      <label for="orderUserName">주문자:</label>
      <input type="text" id="orderUserName" name="orderUserName" required>
    </div>
    <div class="form-group">
      <label for="orderRecipientName">수령자:</label>
      <input type="text" id="orderRecipientName" name="orderRecipientName" required>
    </div>
    <div class="form-group">
      <label for="orderPaymentType">결재방법:</label>
      <select id="orderPaymentType" name="orderPaymentType" required>
        <option value="creditCard">신용카드</option>
        <option value="bankTransfer">무통장입금</option>
        <!-- 기타 결제 방법 추가 -->
      </select>
    </div>
    <div class="form-group">
      <label for="orderPhoneNumber">핸드폰:</label>
      <input type="tel" id="orderPhoneNumber" name="orderPhoneNumber" required placeholder="-을 제외하고 입력">
    </div>
    <div class="form-group">
      <label for="orderTrackingNumber">운송장번호:</label>
      <input type="text" id="orderTrackingNumber" name="orderTrackingNumber" required>
    </div>
    <div class="form-group">
      <label for="orderDeliveryCompanyName">배송회사:</label>
      <input type="text" id="orderDeliveryCompanyName" name="orderDeliveryCompanyName" required>
    </div>
    <div class="form-group">
      <label for="orderRecipientAddress">받는사람주소:</label>
      <textarea id="orderRecipientAddress" name="orderRecipientAddress" required></textarea>
    </div>
    <div class="form-group">
      <label for="orderDeliveryRequest">배송시요청사항:</label>
      <textarea id="orderDeliveryRequest" name="orderDeliveryRequest"></textarea>
    </div>
    <div class="form-group">
      <label for="orderDelivery">배송상태:</label>
      <select id="orderDelivery" name="orderDelivery" required>
        <option value="processing">배송대기</option>
        <option value="shipped">배송중</option>
        <option value="delivered">배송완료</option>
        <!-- 기타 배송 상태 추가 -->
      </select>
     
    </div>
    <div class="form-group">
      <button type="submit">주문 확인</button>
    </div>
  </form>
  </article>
</div>


	<footer>
		<jsp:include page="footer.jsp" flush="true"/>		
	</footer>
</body>
</html>