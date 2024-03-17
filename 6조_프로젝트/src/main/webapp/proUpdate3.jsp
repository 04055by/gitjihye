<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품 수정</title>
<style>
/* 노출/숨김 */
*{

}

.display, .design {
	display: flex;
	float: left;
	padding-right: 100px;
}

.design {
	margin-bottom: 10px;
	padding-top: 15px;
}

/* 상품코드 */
.depth3_box, .design {
	display: flex;
	float: left;
}

.depth3_box {
	margin-right: 150px;
}

.proDesc>h6 {
	margin-top: 0;
	margin-left: 255px;
}

.design-2, .design-2>a {
	margin-top: 20px;
}

/* 상품명 */
.nameUpd, .proName {
	margin-top: 35px;
}

.design-3 {
	margin-left: 175px;
	margin-top: 0px;
	margin-bottom: 20px;
}

.proName { /* 소용없는듯? 삭제?? */
	margin-top: 10px;
	margin-bottom: 900px;
}


</style>
<head>
<script>
</script>
</head>
<body class="">
	<br>
	<h3>상품수정</h3>
	<br>
	<hr>

	<div class="UpdPart">
		<h4>상품 기본수정</h4>
		<hr>

		<!-- 상품노출/숨김 -->
		<div class="updateBox">
			<ul class="ul">
				<div class="depth1_box">
					<p>상품 노출/숨김</p>
				</div>
				<ul>
					<label class='design-1'><input type=radio id='_viewY'
						name='_view' value='Y' checked>노출
					</label>
					<label class='design-1'><input type=radio id='_viewN'
						name='_view' value='N'>숨김</label>
				</ul>
		</div>
		<br> <br>


		<!-- 상품코드 -->
		<div class="updateBox-2">
			<div class="depth2_box">
				<p>상품코드</p>
			</div>
				<ul>
				<label class="design-2"><input type="text" id="proCode-1" value="JELLY-001-001" placeholder="상품코드" readonly="readonly"></label>
				<label class="design-22"><a href="#">상품상세페이지</a></label>
				<!-- <a class="design-22" href="#none" onclick="#">상품상세페이지</a> -->
				</ul>
				<div class="proDesc">
				<h6>※ 최초 상품 등록 시 자동으로 지정되며, 수정이 불가합니다.</h6>
				</div>
				</li></div>





	<ul class="ul3">
			<div class="depth4_box">
				<p>상품명</p>
			</div>
			<ul>
				<label class="proName"> <input type="text" class="design-3"
				placeholder="상품명" style="width: 200px" readonly="readonly"> 
			</div>
				<!-- <div class="proNameDesc">
				<h6>※ 최초 상품 등록 시 자동으로 지정되며, 수정이 불가합니다.</h6> -->
	</div>
	</li>
	</ul>
	</div>




		<br><hr><div class="UpdPart-2">
			<h4>가격 및 옵션</h4>
			<hr><br></div>
			
			<table class="tablePrice">
				<colgroup>
					<col width="180">
					<col width="*">
					<col width="180">
					<col width="*">
				</colgroup>
				<tr>
					<th class="proPriceCon">상품가격</th>
					<td>
						<div class="lineup-row">
							<span class="fr_tx t_blue t_bold">정상가</span> <input type="text"
								name="_screenPrice" class="design number_style t_right"
								value="21" placeholder="0" style="width: 100px"> <span
								class="fr_tx">원</span>
							<div class="dash_line">
								<!-- 점선라인 -->
							</div>
							<span class="fr_tx t_red t_bold">판매가</span> <input type="text"
								name="_price" class="design number_style t_right" value="20"
								placeholder="0" style="width: 100px"> <span
								class="fr_tx">원</span> <input type="text"
								class="design number_style t_right js_percent_view" value="5"
								placeholder="0" style="width: 70px" disabled> <span
								class="fr_tx">% 할인</span>
						</div>
						<div class="tip_box">
							<div class='c_tip'>할인이 없을 경우 정상가에 0을 입력하거나 판매가와 동일하게 입력해주세요.<br>
												정상가가 판매가와 동일하여 할인율이 0이거나, 정상가가 판매가보다 낮으면 할인율은 노출되지 않습니다.<br>
												할인율은 소수점 반올림 계산되며 소수점 이하인 경우에도 노출되지 않습니다.</div>
						</div>
					</td>
				</tr>
				<tr>
					<th>재고량</th>
					<td>
						<div class="lineup-row">
							<input type="text" name="_stock" class="design number_style"
								value="1000" placeholder="0" style="width: 70px"> <span
								class="fr_tx">개</span>
						</div>
						<div class='c_tip '>재고량이 0인 경우 품절로 표시되며, 옵션 사용시 옵션 재고량을
							우선합니다.</div>
						<div class='c_tip '>
							상품상세페이지 설정에서 재고량을 숨김처리 할 수 있습니다. <a
								href='/totalAdmin/_config.display.pinfo.php' target='_blank'><em>노출설정
									바로가기</em></a>
						</div>
					</td>
					<th>판매량</th>
					<td>
						<div class="lineup-row">
							<input type="text" name="_salecnt" class="design number_style"
								value="4" placeholder="0" style="width: 70px"> <span
								class="fr_tx">개</span>
						</div>
						<div class='c_tip '>주문이 완료된 건수로서 상품목록에서 인기순으로 정렬할때 사용되며,
							높은수록 먼저 노출됩니다.</div>
					</td>
				</tr>
				<tr></tr></table>








					<li class="li js-sub-menu-container  " data-amuid="88"><a
						href="#none" onclick="return false;" class="ctg2 js-sub-menu-ctl"
						data-amuid="88">상품 진열 관리</a>
						<div class="depth3_box">
							<ul>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_config.display.main.php?menuUid=89"
									class="ctg3">메인 노출 상품</a></li>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_config.display.category.php?menuUid=265"
									class="ctg3">메인 카테고리 베스트 상품</a></li>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_config.display.timesale.php?menuUid=324"
									class="ctg3">타임세일 상품설정</a></li>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_config.display.search.php?menuUid=90"
									class="ctg3">상품 검색 설정</a></li>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_config.display.type.php?menuUid=240"
									class="ctg3">타입별 상품관리</a></li>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_product_icon.list.php?menuUid=311"
									class="ctg3">상품 아이콘 관리</a></li>
							</ul>
						</div> <!-- end depth3_box --></li>
					<li class="li js-sub-menu-container  " data-amuid="326"><a
						href="#none" onclick="return false;" class="ctg2 js-sub-menu-ctl"
						data-amuid="326">상품 상세페이지 설정</a>
						<div class="depth3_box">
							<ul>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_config.display.pinfo.php?menuUid=327"
									class="ctg3">노출 항목설정</a></li>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_product.guide.list.php?menuUid=328"
									class="ctg3">이용안내 관리</a></li>
							</ul>
						</div> <!-- end depth3_box --></li>
					<li class="li js-sub-menu-container  " data-amuid="92"><a
						href="#none" onclick="return false;" class="ctg2 js-sub-menu-ctl"
						data-amuid="92">카테고리 관리</a>
						<div class="depth3_box">
							<ul>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_category.list.php?menuUid=93"
									class="ctg3">상품 카테고리</a></li>
								<li class=""><a
									href="//responsive-food.onedaynet.co.kr/totalAdmin/_brand.list.php?menuUid=94"
									class="ctg3">브랜드 설정</a></li>
							</ul>
						</div> <!-- end depth3_box --></li>
	</ul>
	</div>
	<!-- end ctg_box -->
	</div>
	<!-- end aside -->
	<div class="aside_bg_close js-menu-ctl" onclick="return false;"></div>

	<div class="section ">

		<div class="page_top">
			<div class="tit">
				배송상품 수정</strong>
			</div>
			<a
				href="http://www.onedaynet.co.kr/manual/hyssence_plus/pages/item_1.html#1_1"
				class="m_btn" target="_blank" title="매뉴얼보기"></a> <a href="#none"
				onclick="return false;" class="btn_open_sub js-menu-ctl">MENU</a> <span
				class="location">상품관리 > 상품 관리 > 배송상품 목록</span>
		</div>
		<!-- end page_top -->




		<form name="frm" method="post" ENCTYPE="multipart/form-data"
			action="_product.pro.php">
			<input type="hidden" name="_mode" value="modify"> <input
				type="hidden" name="_PVSC" value="Jm1lbnVVaWQ9Nzc="> <input
				type="hidden" name="_code" value="A0344-N7288-E3075"> <input
				type="hidden" id="_time_sale_bak" value="N"> <input
				type="hidden" name="_cpid" value="gobeyond">




			<div class="group_title">
				<strong class="t_green">배송상품 기본설정</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th class="">상품 노출</th>
							<td colspan="3"><label class='design'><input
									type=radio id='_viewY' name='_view' value='Y' checked>노출</label><label
								class='design'><input type=radio id='_viewN'
									name='_view' value='N'>숨김</label></td>
						</tr>
						<tr>
							<th class="">상품코드</th>
							<td>
								<div class="lineup-row type_multi">
									<input type="text" name="" class="design"
										value="A0344-N7288-E3075" placeholder="상품코드"
										style="width: 200px" readonly="readonly"> <a
										href="#none"
										onclick="window.open('/?pn=product.view&pcode=A0344-N7288-E3075'); return false;"
										class="c_btn sky">미리보기</a>
								</div>
								<div class='c_tip '>최초 상품 등록 시 자동으로 지정되며, 수정이 불가합니다.</div>
								<div class='c_tip '>상품 고유번호로 사용되며, 주문/배송 등 검색 시 정확하게 검색이
									가능합니다.</div>
							</td>
							<th>순위</th>
							<td>
								<div class="lineup-row">
									<input type="text" name="_sort_group"
										class="design number_style" value="100" placeholder="0"
										style="width: 70px"> <input type="hidden"
										name="_sort_idx" class="design" value="29.0"> <input
										type="hidden" name="_idx" class="design" value="30"> <span
										class="fr_tx">위</span>
								</div>
								<div class='c_tip '>상품목록에서 추천순이며, 낮은 숫자가 먼저 노출됩니다. (숫자 1이상
									입력)</div>
								<div class='c_tip '>숫자가 같은 상품이 있을 경우 최신 등록한 상품이 먼저 노출됩니다.</div>
							</td>
						</tr>

						<tr>
							<th class="ess">상품명</th>
							<td colspan="3"><input type="text" name="_name"
								class="design" value="미니 초콜릿 컵케이크" placeholder="상품명"
								style="width: 500px"></td>
						</tr>
						<tr>
							<th class="">부가 상품명</th>
							<td colspan="3"><textarea type="text" name="_subname"
									class="design" placeholder="상품설명" rows="3"></textarea>
								<div class='c_tip '>
									상품상세페이지 설정에서 설명문구를 숨김처리 할 수 있습니다. <a
										href='/totalAdmin/_config.display.pinfo.php' target='_blank'><em>노출설정
											바로가기</em></a>
								</div></td>
						</tr>

						<tr>
							<th>등록일</th>
							<td>2023-03-18 <span class="t_light">(16:23:56)</span></td>
							<th>최종 수정일</th>
							<td>2023-03-29 <span class="t_light">(17:40:48)</span></td>
						</tr>
					</tbody>
				</table>
			</div>


			<div class="group_title">
				<strong>가격 및 옵션</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th class="ess">상품가격</th>
							<td>
								<div class="lineup-row">
									<span class="fr_tx t_blue t_bold">정상가</span> <input type="text"
										name="_screenPrice" class="design number_style t_right"
										value="21" placeholder="0" style="width: 100px"> <span
										class="fr_tx">원</span>
									<div class="dash_line">
										<!-- 점선라인 -->
									</div>
									<span class="fr_tx t_red t_bold">판매가</span> <input type="text"
										name="_price" class="design number_style t_right" value="20"
										placeholder="0" style="width: 100px"> <span
										class="fr_tx">원</span> <input type="text"
										class="design number_style t_right js_percent_view" value="5"
										placeholder="0" style="width: 70px" disabled> <span
										class="fr_tx">% 할인</span>
								</div>
								<div class="tip_box">
									<div class='c_tip '>할인이 없을 경우 정상가에 0을 입력하거나 판매가와 동일하게
										입력해주세요.</div>
									<div class='c_tip '>정상가가 판매가와 동일하여 할인율이 0이거나, 정상가가 판매가보다
										낮으면 할인율은 노출되지 않습니다.</div>
									<div class='c_tip '>할인율은 소수점 반올림 계산되며 소수점 이하인 경우에도 노출되지
										않습니다.</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>재고량</th>
							<td>
								<div class="lineup-row">
									<input type="text" name="_stock" class="design number_style"
										value="1000" placeholder="0" style="width: 70px"> <span
										class="fr_tx">개</span>
								</div>
								<div class='c_tip '>재고량이 0인 경우 품절로 표시되며, 옵션 사용시 옵션 재고량을
									우선합니다.</div>
								<div class='c_tip '>
									상품상세페이지 설정에서 재고량을 숨김처리 할 수 있습니다. <a
										href='/totalAdmin/_config.display.pinfo.php' target='_blank'><em>노출설정
											바로가기</em></a>
								</div>
							</td>
							<th>판매량</th>
							<td>
								<div class="lineup-row">
									<input type="text" name="_salecnt" class="design number_style"
										value="4" placeholder="0" style="width: 70px"> <span
										class="fr_tx">개</span>
								</div>
								<div class='c_tip '>주문이 완료된 건수로서 상품목록에서 인기순으로 정렬할때 사용되며,
									높은수록 먼저 노출됩니다.</div>
							</td>
						</tr>
						<tr>
							<th>옵션사용</th>
							<td colspan="3"><label class='design'><input
									type=radio id='_option_type_chknooption'
									name='_option_type_chk' value='nooption'
									class='_option_type_chk' checked>미사용</label><label
								class='design'><input type=radio
									id='_option_type_chk1depth' name='_option_type_chk'
									value='1depth' class='_option_type_chk'>1차 옵션</label><label
								class='design'><input type=radio
									id='_option_type_chk2depth' name='_option_type_chk'
									value='2depth' class='_option_type_chk'>2차 옵션</label><label
								class='design'><input type=radio
									id='_option_type_chk3depth' name='_option_type_chk'
									value='3depth' class='_option_type_chk'>3차 옵션</label>
								<div class="in_option_list option_type" style="display: none;">
									<dl class="init_depth1_type init_depth_type">
										<dt>1차 옵션</dt>
										<dd>
											<label class='design'><input type=radio
												id='p_option1_typenormal' name='p_option1_type'
												value='normal' class="btn_hide_input ">일반</label><label
												class='design'><input type=radio
												id='p_option1_typecolor' name='p_option1_type' value='color'
												class="btn_hide_input " checked>컬러</label><label
												class='design'><input type=radio
												id='p_option1_typesize' name='p_option1_type' value='size'
												class="btn_hide_input ">사이즈</label> <input type="text"
												name="p_option1_title" class="design" value=""
												placeholder="1차 옵션 타이틀" style="width: 500px">
										</dd>
									</dl>

									<dl class="init_depth2_type init_depth_type">
										<dt>2차 옵션</dt>
										<dd>
											<label class='design'><input type=radio
												id='p_option2_typenormal' name='p_option2_type'
												value='normal' class="btn_hide_input " checked>일반</label><label
												class='design'><input type=radio
												id='p_option2_typecolor' name='p_option2_type' value='color'
												class="btn_hide_input ">컬러</label><label class='design'><input
												type=radio id='p_option2_typesize' name='p_option2_type'
												value='size' class="btn_hide_input ">사이즈</label> <input
												type="text" name="p_option2_title" class="design" value=""
												placeholder="2차 옵션 타이틀" style="width: 500px">
										</dd>
									</dl>

									<dl class="init_depth3_type init_depth_type">
										<dt>3차 옵션</dt>
										<dd>
											<label class='design'><input type=radio
												id='p_option3_typenormal' name='p_option3_type'
												value='normal' class="btn_hide_input " checked>일반</label><label
												class='design'><input type=radio
												id='p_option3_typecolor' name='p_option3_type' value='color'
												class="btn_hide_input ">컬러</label><label class='design'><input
												type=radio id='p_option3_typesize' name='p_option3_type'
												value='size' class="btn_hide_input ">사이즈</label> <input
												type="text" name="p_option3_title" class="design" value=""
												placeholder="3차 옵션 타이틀" style="width: 500px">
										</dd>
									</dl>
								</div></td>
						</tr>
						<tr>
							<th>옵션등록</th>
							<td>
								<div class="lineup-row">
									<a href="#none"
										onclick="option_popup('A0344-N7288-E3075'); return false;"
										class="c_btn h27 blue">필수옵션 설정하기</a> <a href="#none"
										onclick="addoption_popup('A0344-N7288-E3075');"
										class="c_btn h27 blue line">추가옵션 설정하기</a>
								</div>
								<div class='c_tip '>필수옵션을 사용할 경우에만 추가옵션을 사용할 수 있습니다.</div>
							</td>
							<th>자주쓰는 옵션</th>
							<td>
								<div class="lineup-row">
									<a href="#none"
										onclick="common_option_popup('A0344-N7288-E3075'); return false;"
										class="c_btn sky">자주쓰는 옵션 선택</a> <a
										href="/totalAdmin/_product.common_option_set.list.php"
										class="c_btn sky line" target="_blank">자주쓰는 옵션관리 바로가기</a>
								</div>
								<div class='c_tip '>미리 등록해둔 옵션을 선택하면 편리하게 옵션추가가 가능합니다.</div>
							</td>
						</tr>


						<tr>
							<th>참고사항</th>
							<td colspan="3">
								<div class='c_tip red'>옵션이 등록되지 않거나 옵션 판매가의 0원이 포함되어 있는 경우
									옵션 오류 상품으로 저장되니 주의해주세요.</div>
								<div class='c_tip red'>옵션유형을 변경하시면 기존에 등록하셨던 옵션의 형태가 변경되므로
									주의해주세요.</div>
								<div class='c_tip '>주문 내역이 있는 상품의 옵션은 기존 주문건에 대한 정보의 혼선이
									있을 수 있으니 수정에 주의해주세요.</div>
								<div class='c_tip '>추가옵션은 차수나 유형선택이 불가하고 무조건 2차 옵션으로
									일반유형으로만 등록가능합니다.</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>








			<div class="group_title">
				<strong>카테고리 및 부가정보</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th class="ess">카테고리</th>
							<td colspan="3">


								<div class="lineup-row type_process">
									<select name='pass_cate01' id="pass_cate01"
										onchange="category_select2(1);"><option value=''>1차
											카테고리</option>
										<option value='147'>BREAD</option>
										<option value='144'>CAKE</option>
										<option value='1'>DESSERT</option>
										<option value='2'>GIFT</option>
										<option value='447'>ETC 기타</option>
										<option value='510'>ICE CREAM</option>
										<option value='500'>샌드위치·샐러드</option>
										<option value='519'>교환권</option></select> <select name='pass_cate02'
										id="pass_cate02" onchange="category_select2(2);"><option
											value=''>2차 카테고리</option></select> <select name='pass_cate03'><option
											value=''>3차 카테고리</option></select> <a href="#none"
										onclick="category_add();" class="c_btn h27 blue">선택 카테고리
										추가</a>
								</div> <SCRIPT LANGUAGE="JavaScript">
	// - 카테고리 목록 ---
	function category_list() {
		$.ajax({
			url: "_product.inc_category_pro.php",
			type: "POST",
			data: "_cmode=list&_code=A0344-N7288-E3075",
			success: function(data){
				$("#_product_cateogry_list").html(data);
			}
		});
	}
	// - 카테고리 목록 ---
	// - 카테고리 삭제 ---
	function category_delete(_cuid) {
		if( confirm('정말 삭제하시겠습니까?') ){
			if( _cuid ){
				$.ajax({
					url: "_product.inc_category_pro.php",
					type: "POST",
					data: "_cmode=delete&_code=A0344-N7288-E3075&_cuid=" + _cuid ,
					success: function(data){
						category_list();
					}
				});
			}
			else {
				alert("3차 카테고리를 선택해주시기 바랍니다.");
			}
		}
	}
	// - 카테고리 삭제 ---
	// - 카테고리 추가 ---
	function category_add() {
		$.ajax({
			url: "_product.inc_category_pro.php",
			type: "POST",
			data: "_cmode=add&_code=A0344-N7288-E3075&pass_parent01=" + $("select[name=pass_cate01]").val() + "&pass_parent02=" + $("select[name=pass_cate02]").val() + "&pass_parent03=" + $("select[name=pass_cate03]").val() ,
			success: function(data){
				/*
				console.log("_mode=add&_code=A0344-N7288-E3075&pass_parent01=" + $("select[name=pass_cate01]").val() + "&pass_parent02=" + $("select[name=pass_cate02]").val() + "&pass_parent03=" + $("select[name=pass_cate03]").val());
				console.log(data);
				*/
				category_list();
			}
		});
	}
	// - 카테고리 추가 ---
	// - 카테고리 선택 ---
	function category_select2(_idx) {
        $.ajax({
            url: "/program/categorysearch.pro.php",
			cache: false,
			dataType: "json",
			type: "POST",
            data: "pass_parent03_no_required=&pass_parent01=" + $("[name=pass_cate01]").val() + "&pass_parent02=" + $("[name=pass_cate02]").val()+"&pass_idx=" + _idx ,
            success: function(data){
                if(_idx == 2) {
					//$("select[name=pass_cate02]").val(apppass_cate03); // 현재정보 적용
					$("select[name=pass_cate03]").find("option").remove().end().append('<option value="">3차 카테고리</option>');
					var option_str = '';
					for (var i = 0; i < data.length; i++) {
						option_str += '<option value="' + data[i].optionValue + '" >' + data[i].optionDisplay + '</option>';
					}
					$("select[name=pass_cate03]").append(option_str);
				}
				else if(_idx == 1){
					$("select[name=pass_cate02]").find("option").remove().end().append('<option value="">2차 카테고리</option>');
					var option_str = '';
					for (var i = 0; i < data.length; i++) {
						option_str += '<option value="' + data[i].optionValue + '" >' + data[i].optionDisplay + '</option>';
					}
					$("select[name=pass_cate02]").append(option_str);
					$("select[name=pass_cate03]").find("option").remove().end().append('<option value="">3차 카테고리</option>');
				}
            }
		});
	}
	// - 카테고리 선택 ---
</SCRIPT>
								<div id="_product_cateogry_list" class="category_result_wrap">
									<!-- 상품카테고리 목록 노출 -->

									<div class='category_result'>
										<ul>


											<li>
												<div class='category_name'>
													<strong>CAKE</strong>
												</div> <a href='#none' onclick="category_delete('144');"
												class='c_btn h22 black line'>삭제</a>
											</li>

											<li>
												<div class='category_name'>
													<strong>BREAD</strong><em>&gt;</em><strong>SNACK</strong>
												</div> <a href='#none' onclick="category_delete('206');"
												class='c_btn h22 black line'>삭제</a>
											</li>

											<li>
												<div class='category_name'>
													<strong>GIFT</strong>
												</div> <a href='#none' onclick="category_delete('2');"
												class='c_btn h22 black line'>삭제</a>
											</li>

											<li>
												<div class='category_name'>
													<strong>BREAD</strong>
												</div> <a href='#none' onclick="category_delete('147');"
												class='c_btn h22 black line'>삭제</a>
											</li>

											<li>
												<div class='category_name'>
													<strong>BREAD</strong><em>&gt;</em><strong>COOKED</strong>
												</div> <a href='#none' onclick="category_delete('491');"
												class='c_btn h22 black line'>삭제</a>
											</li>

										</ul>
									</div>
								</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div> <a href="/totalAdmin/_category.list.php" class="c_btn sky line"
								target="_blank">카테고리 설정 바로가기</a>
							</td>
						</tr>
						<tr>
							<th>브랜드</th>
							<td>
								<div class="lineup-row">
									<select name='_brand'><option value=''>브랜드 선택</option>
										<option value='24'>DEF</option>
										<option value='32'>가나다</option>
										<option value='33'>JKL</option>
										<option value='30' selected>ABC</option>
										<option value='28'>365BRAND</option>
										<option value='27'>타파하</option>
										<option value='23'>GHI</option>
										<option value='22'>마바사</option>
										<option value='26'>아자차</option>
										<option value='34'>MNO</option>
										<option value='36'>GOGO</option></select> <a href="#none"
										class="c_btn sky line js_brand_preview" target="_blank">미리보기</a>
								</div>
								<div class='c_tip '>브랜드를 선택하면 상세페이지에 노출되며, 스킨에 따라 위치는 상이할
									수 있습니다.</div>
								<div class='c_tip '>해당 브랜드를 클릭하거나, 별도 브랜드 목록페이지에서도 상품이
									노출됩니다.</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div> <a href="/totalAdmin/_brand.list.php" class="c_btn sky line"
								target="_blank">브랜드 설정 바로가기</a>
							</td>
							<th>상품 아이콘</th>
							<td><label class='design'><input type='checkbox'
									name='_icon[]' value='4' checked><span
									class="item_icon"
									style="background-color: #000000; color: #ffffff; border-color: #000000;">HOT</span></label><label
								class='design'><input type='checkbox' name='_icon[]'
									value='3' checked><span class="item_icon"
									style="background-color: #ffffff; color: #000000; border-color: #000000;">NEW</span></label>
								<div class='c_tip '>상품목록과 상세페이지에 노출되며, 스킨에 따라 위치는 상이할 수
									있습니다.</div>
								<div class='c_tip '>자동적용 아이콘은 상품 설정값에 따라 자동으로 노출됩니다.</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div> <a href="/totalAdmin/_product_icon.list.php"
								class="c_btn sky line" target="_blank">아이콘 설정 바로가기</a></td>
						</tr>
						<tr>
							<th class="ess">정보제공고시</th>
							<td colspan="3">
								<div class="lineup-row">
									<a href="#none" onclick="reqinfo_popup();"
										class="c_btn h27 blue">개별 설정하기</a> <a href="#none"
										onclick="reqinfo_default_setting_popup();"
										class="c_btn h27 blue line">배송상품 샘플 설정하기</a>
								</div>
								<div class='c_tip '>전자상거래 등에서의 소비자 보호에 관한 법률에 의해 필수적으로
									입력해야 합니다.</div>
								<div class='c_tip '>샘플항목으로 설정해두면 상품등록시마다 동일하게 입력되며, 개별로
									수정도 가능합니다.</div>
							</td>
						</tr>

						<tr>
							<th>제조사</th>
							<td><input type="text" name="_maker" class="design"
								value="뷰티홀릭" placeholder="제조사" style=""></td>
							<th>원산지</th>
							<td><input type="text" name="_orgin" class="design"
								value="한국" placeholder="원산지" style=""></td>
						</tr>
					</tbody>
				</table>
			</div>



			<div class="group_title">
				<strong>판매 이벤트 설정</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th class="">기간판매</th>
							<td colspan="3"><label class='design'><input
									type=radio id='_sale_typeA' name='_sale_type' value='A' checked>상시판매</label><label
								class='design'><input type=radio id='_sale_typeT'
									name='_sale_type' value='T'>기간판매</label>
								<div class='c_tip blue'>기간판매 사용시에는 타임세일을 사용할 수 없습니다.</div>
								<div class="js_sale_type_wrap" id="_sale_typeT_date_box"
									style="display: none;">
									<div class="dash_line">
										<!-- 점선라인 -->
									</div>
									<div class="lineup-row type_date">
										<input type="text" name="_sale_sdate" readonly
											value="2023-03-09" class="design js_pic_day"
											style="width: 85px"> <input type="hidden"
											name="_sale_sdateh" ID="sale_dateh" value='00'
											class="input_text" />
										<!-- 시 -->
										<input type="hidden" name="_sale_sdatem" ID="sale_datem"
											value='00' class="input_text" />
										<!-- 분 -->
										<span class="fr_tx">~</span> <input type="text"
											name="_sale_edate" readonly value="2024-03-09"
											class="design js_pic_day" style="width: 85px"> <input
											type="hidden" name="_sale_edateh" ID="sale_edateh" value='23' />
										<!-- 시 -->
										<input type="hidden" name="_sale_edatem" ID="sale_edatem"
											value='59' />
										<!-- 분 -->
									</div>
									<div class='c_tip '>설정한 기간이 지나면 사용자페이지에 노출은 되지만 구매가
										불가합니다.</div>
								</div></td>
						</tr>
						<tr>
							<th class="">타임세일</th>
							<td colspan="3"><label class="design"><input
									type="checkbox" id="_time_saleY" name="_time_sale" value="Y">타임세일
									사용</label>
								<div class='c_tip blue'>상시판매일 경우에만 타임세일을 사용할 수 있습니다.</div>
								<div id="_time_saleY_date_box" style="display: none;">
									<div class="dash_line">
										<!-- 점선라인 -->
									</div>
									<div class="lineup-row type_date">
										<input type="text" name="_time_sale_sdate" readonly
											value="2023-03-09" class="design js_pic_day"
											style="width: 85px"> <input type="time"
											name="_time_sale_sclock" value="00:00"
											class="design type_time input_text" /> <span class="fr_tx">~</span>
										<input type="text" name="_time_sale_edate" readonly
											value="2024-03-09" class="design js_pic_day"
											style="width: 85px"> <input type="time"
											name="_time_sale_eclock" value="00:00"
											class="design type_time" /> <a href="/?pn=product.time_list"
											class="c_btn sky" target="_blank">미리보기</a>
									</div>
									<div class="dash_line">
										<!-- 점선라인 -->
									</div>
									<a href="/totalAdmin/_config.display.timesale.php"
										class="c_btn sky line" target="_blank">타임세일 상품설정 바로가기</a>
								</div></td>
						</tr>

						<tr>
							<th>네이버페이</th>
							<td colspan="3"><label class='design'><input
									type=radio id='npay_useY' name='npay_use' value='Y' checked>사용</label><label
								class='design'><input type=radio id='npay_useN'
									name='npay_use' value='N'>미사용</label>
								<div class='c_tip '>정상적으로 계약이 된 경우 장바구니/구매하기 버튼 하단에 네이버페이
									구매 버튼이 노출됩니다.</div>
								<div class='c_tip '>네이버페이 사용 시 상품별 설정이 가능하며 미사용 설정 시 네이버정책
									위반이 될 수 있으므로 주의하시기 바랍니다.</div>
								<div class='c_tip '>네이버페이 결제 또는 재고 문제가 있을 시 해당 설정을 통해
									네이버페이를 일시적으로 미사용 처리 할 수 있습니다.</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div> <a href="/totalAdmin/_config.pg_naver.form.php"
								class="c_btn sky line" target="_blank">네이버페이 설정 바로가기</a></td>
						</tr>
						<tr>
							<th>1회 최대 구매개수</th>
							<td>
								<div class="lineup-row">
									<input type="text" name="_buy_limit"
										class="design number_style" value="0" placeholder="0"
										style="width: 70px"> <span class="fr_tx">개</span>
								</div>
								<div class="tip_box">
									<div class='c_tip '>주문 시 한번에 구매할 수 있는 상품의 수량을 설정할 수
										있습니다.(모든 옵션 동일)</div>
									<div class='c_tip '>0으로 입력 시 제한없이 구매가 가능합니다.</div>
								</div>
							</td>
							<th>중복구매 가능여부</th>
							<td><label class='design'><input type=radio
									id='_duplicate_useY' name='_duplicate_use' value='Y' checked>가능</label><label
								class='design'><input type=radio id='_duplicate_useN'
									name='_duplicate_use' value='N'>불가능</label>
								<div class='c_tip blue'>불가능으로 설정할 경우 본상품은 1회만 구매 가능합니다.</div>
								<div class='c_tip '>
									중복구매는 <strong>회원</strong> 주문시에 한해서 판별되며 주문취소, 비회원주문건은 제외됩니다.
								</div>
								<div class='c_tip '>무통장/가상계좌는 결제대기 부터, 그외는 결제완료를 기준으로
									체크됩니다.</div></td>
						</tr>
					</tbody>
				</table>
			</div>



			<div class="group_title">
				<strong>할인/혜택 설정</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>상품쿠폰</th>
							<td><label class='design'><input type=radio
									id='_coupon_type' name='_coupon_type' value='' checked>미사용</label><label
								class='design'><input type=radio id='_coupon_typeprice'
									name='_coupon_type' value='price'>할인액(원)</label><label
								class='design'><input type=radio id='_coupon_typeper'
									name='_coupon_type' value='per'>할인율(%)</label>
								<div class="lineup-column type_auto cls_coupon_wrap">
									<div class="cls_coupon_type price per">
										<div class="dash_line">
											<!-- 점선라인 -->
										</div>
										<div class="lineup-row type_multi">
											<span class="fr_tx t_black" style="width: 40px">쿠폰명</span> <input
												type="text" name="_coupon_title" class="design " value=""
												placeholder="쿠폰명 (최대 15자)" style="width: 150px"
												maxlength="15">
										</div>
									</div>

									<div class="cls_coupon_type price">
										<div class="lineup-row">
											<span class="fr_tx t_orange" style="width: 40px">할인액</span> <input
												type="text" name="_coupon_price" class="design number_style"
												value="0" placeholder="0" style="width: 100px"> <span
												class="fr_tx">원</span>
										</div>
									</div>

									<div class="cls_coupon_type per">
										<div class="lineup-row">
											<span class="fr_tx t_orange" style="width: 40px">할인율</span> <input
												type="text" name="_coupon_per" class="design number_style"
												data-decimals="1" value="0.0" placeholder="0"
												style="width: 70px"> <span class="fr_tx">%</span> <span
												class="fr_tx">최대</span> <input type="text"
												name="_coupon_max" class="design number_style" value="0"
												placeholder="0" style="width: 100px"> <span
												class="fr_tx">원</span>
										</div>
									</div>
								</div>

								<div class="dash_line">
									<!-- 점선라인 -->
								</div>
								<div class='c_tip '>주문 시 별도로 선택해서 사용하는 쿠폰과는 별개이며 상품에
									자동적용되는 혜택입니다.</div>
								<div class='c_tip '>사용할 경우 자동아이콘(상품쿠폰 아이콘)이 상품목록과 상세에
									노출되며, 스킨에 따라 위치는 상이할 수 있습니다.</div></td>
							<th>회원등급 추가혜택</th>
							<td><label class='design'><input type=radio
									id='_groupset_useY' name='_groupset_use' value='Y'
									class='_groupset_use'>적용</label><label class='design'><input
									type=radio id='_groupset_useN' name='_groupset_use' value='N'
									class='_groupset_use' checked>미적용</label>
								<div class='c_tip '>적용할 경우 등급관리에 설정해둔 혜택 (할인율/적립율)이 적용됩니다.</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div> <a href="/totalAdmin/_member_group_set.list.php"
								class="c_btn sky line" target="_blank">회원등급 설정 바로가기</a></td>
						</tr>
					</tbody>
				</table>
			</div>



			<div class="group_title">
				<strong>정산 및 배송정보</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>

						<tr>
							<th class="ess">입점업체</th>
							<td>
								<div class='c_tip '>
									입점업체 미사용 <a
										href="https://www.onedaynet.co.kr/p/solution_plus.html#page_entershop"
										target="_blank"><em>신청하기</em></a>
								</div>
							</td>
							<th>업체 정산형태</th>
							<td>
								<div class="lineup-row">
									<label class="design" style="width: 80px"><input
										type="radio" name="_commission_type" value="공급가" checked>공급가</label>
									<input type="text" name="_sPrice" id="comSaleTypeTr1"
										class="design number_style t_right" value="0" placeholder="0"
										style="width: 100px"> <span class="fr_tx">원
										(매입가)</span>
								</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div>
								<div class="lineup-row">
									<label class="design" style="width: 80px"><input
										type="radio" name="_commission_type" value="수수료">수수료</label> <input
										type="text" name="_sPersent" id="comSaleTypeTr2"
										class="design number_style t_right" value="0.00"
										placeholder="0" style="width: 70px" disabled> <span
										class="fr_tx">%</span>
								</div>
							</td>
						</tr>
						<tr>
							<th>상품 과세여부</th>
							<td colspan="3"><label class="design"><input
									type="radio" name="p_vat" value="Y" checked>과세</label> <label
								class="design"><input type="radio" name="p_vat"
									value="N">면세</label>
								<div class='c_tip '>기본설정에서 복합과세를 선택한 경우 과세와 면세를 상품별로 선택할 수
									있습니다.</div>
								<div class='c_tip '>과세 : 부가세가 포함되어 세금계산서 또는 현금영수증(현금결제 시)이
									발행됩니다.</div>
								<div class='c_tip '>면세 : 부가세 없이 세금계산서 또는 현금영수증(현금결제 시)이
									발행됩니다.</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div> <a href="/totalAdmin/_config.vat.form.php"
								class="c_btn sky line" target="_blank">과세설정 바로가기</a></td>
						</tr>
						<tr>
							<th>배송비 설정</th>
							<td colspan="3">
								<div class="lineup-row">
									<label class="design"><input type="radio"
										name="_shoppingPay_use" class="_shoppingPay_use" value="N"
										checked>쇼핑몰 정책</label> <label class="design"><input
										type="radio" name="_shoppingPay_use" class="_shoppingPay_use"
										value="P">상품별 배송비</label> <label class="design"><input
										type="radio" name="_shoppingPay_use" class="_shoppingPay_use"
										value="Y">개별 배송비</label> <label class="design"><input
										type="radio" name="_shoppingPay_use" class="_shoppingPay_use"
										value="F">무료 배송</label>
									<!-- 무료배송비 일때 -->
								</div>

								<div class="shoppingPayP" style="width: 100%">
									<div class="lineup-row">
										<div class="dash_line">
											<!-- 점선라인 -->
										</div>
										<input type="text" name="_shoppingPayPdPrice"
											class="design number_style" placeholder="0" value="0"
											style="width: 100px" disabled> <span class="fr_tx">원</span>
										<input type="text" name="_shoppingPayPfPrice"
											class="design number_style" placeholder="0" value="0"
											style="width: 100px" disabled> <span class="fr_tx">원
											이상 무료배송</span>
									</div>
								</div>

								<div class="shoppingPayY" style="width: 100%">
									<div class="lineup-row">
										<div class="dash_line">
											<!-- 점선라인 -->
										</div>
										<input type="text" name="_shoppingPay"
											class="design number_style t_right" id="_shoppingPay_use_Y"
											placeholder="0" value="0" style="width: 100px" disabled>
										<span class="fr_tx">원</span>
									</div>
								</div>

								<div class="shoppingPayN" style="width: 100%">
									<div class="dash_line">
										<!-- 점선라인 -->
									</div>
									<a href="#none" onclick="entershop_view(); return false;"
										class="c_btn h27 sky line">배송비 정책설정 바로가기</a>
								</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div>
								<div class='c_tip '>쇼핑몰 정책 : 쇼핑몰 통합관리자가 설정한 정책으로 자동적용됩니다.</div>
								<div class='c_tip '>입점업체 정책 : 입점업체 기능을 사용 할 경우 상품에 선택된 업체의
									정책으로 적용하며, 해당 업체에서 배송정책을 미사용한 경우 쇼핑몰 기본정책이 적용됩니다.</div>
								<div class='c_tip '>상품별 배송비 : 이 상품에만 별도의 배송비와 무료배송비를 설정할 수
									있습니다.</div>
								<div class='c_tip '>개별 배송비 : 이 상품에만 별도의 배송비를 무조건 부과할 수
									있습니다.</div>
								<div class='c_tip '>무료배송 : 이 상품에 대해서만 무료배송을 적용하며, 무료배송
									아이콘이 노출됩니다.</div>
							</td>
						</tr>
						<tr>
							<th>추가 배송정보</th>
							<td colspan="3"><input type="text" name="_delivery_info"
								class="design" value="" placeholder="배송정보 (예 : 로젠택배 (2~3일 소요))"
								maxlength="20">
								<div class='c_tip '>상세페이지 기본 택배사 등의 배송정보에 추가적으로 노출되</div></td>
						</tr>
					</tbody>
				</table>
			</div>


			<div class="group_title">
				<strong>상세설명 및 부가정보</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>상세 설명</th>
							<td>
								<div class="mobile_tip">에디터 기능은 모바일에서 제한적일 수 있습니다.</div> <textarea
									name="_content" class="input_text SEditor"><img
										src="/upfiles/smarteditor/202212161503471433267848.jpg"
										title="" alt="딸기 밀크 마카롱"><br style="clear: both;"></textarea>
							</td>
						</tr>
						<tr>
							<th>해시태그</th>
							<td>

								<div class="lineup-row type_multi">
									<input type="text" name="_hashtag_search" id="_hashtag_search"
										class="design" placeholder="해시태그 자동완성" value=""
										style="width: 150px"> <a href="#none"
										onclick="addField(document.frm._hashtag);" class="c_btn blue">추가하기</a>
								</div>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div> <textarea name="_hashtag" rows="5" cols="" class="design"
									placeholder="해시태그 입력"></textarea> <label class="design"><input
									type="checkbox" name="_hashtag_shuffle" value="Y">무작위
									순서로 노출</label>
								<div class="tip_box">
									<div class='c_tip '>해시태그 등록 시 상품상세페이지에 노출되며, 클릭 시 같은
										해시태그로 등록된 상품을 검색할 수 있습니다.</div>
									<div class='c_tip '>다른 상품에 등록된 해시태그를 1글자 이상 입력하시면 자동 완성된
										해시태그를 선택할 수 있습니다.</div>
									<div class='c_tip '>해시태그를 콤마(,)로 구분하여 직접 입력 후 추가할 수 있습니다.</div>
								</div> <script>
		$(document).ready(function(){
		$('input[name=_hashtag_search]').on('keypress',function(e){ if ( e.which == 13 ) e.preventDefault(); });
		var availableTags = [{ value:'케이크', label:'케이크' },{ value:'빵', label:'빵' },{ value:'디저트', label:'디저트' },{ value:'컵케이크', label:'컵케이크' },{ value:'도넛', label:'도넛' },{ value:'샌드위치', label:'샌드위치' },{ value:'간식', label:'간식' },{ value:'마카롱', label:'마카롱' },{ value:'패밀리케이크', label:'패밀리케이크' },{ value:'미니츄러스', label:'미니츄러스' }];
		$( '#_hashtag_search' ).autocomplete({
			source: availableTags,
			focus: function( event, ui ) { $( '[name=_hashtag_search]' ).val( ui.item.value ); return false; },
			select: function( event, ui ) { $( '[name=_hashtag]' ).val( ui.item.value + ',' + $('[name=_hashtag]').val() ); $( '#_hashtag_search' ).val(''); return false; }
		});
	});
	//관련상품삭제
	function delField(objTemp) {
		objTemp.value='';
	}
	// 추가하기
	function addField() {
		if($( '#_hashtag_search' ).val().trim() !='' ) {
			$( '[name=_hashtag]' ).val( $( '#_hashtag_search' ).val() + ($('[name=_hashtag]').val() != '' ? ',' + $('[name=_hashtag]').val() : '') );
			$( '#_hashtag_search' ).val('');
		}else{
			alert('태그를 입력해주세요.');
		}
		return false;
	}
</script>
							</td>
						</tr>
						<tr>
							<th>관련상품</th>
							<td><label class='design'><input type=radio
									id='_relation_typenone' name='_relation_type' value='none'
									checked>미사용</label><label class='design'><input
									type=radio id='_relation_typecategory' name='_relation_type'
									value='category'>자동지정</label><label class='design'><input
									type=radio id='_relation_typemanual' name='_relation_type'
									value='manual'>수동지정</label>
								<div class="lineup-row js_relation_hide" style="display: none;">
									<a href="#none" onclick="relationWin('all');return false;"
										class="c_btn h27 blue">관련상품 설정하기</a> <a href="#none"
										onclick="relationWin('select');return false;"
										class="c_btn blue line  js_relation_select">선택상품 : 총 <span
										class="js_relation_cnt">0</span>개
									</a> <a href="#none" onclick="relationWin('reset');return false;"
										class="c_btn h27 black line  js_relation_reset">설정상품 초기화</a>
								</div>

								<div class="dash_line js_relation_wrap">
									<!-- 점선라인 -->
								</div> <textarea name="" rows="5" cols="" placeholder="관련 상품 설정"
									class="js_relation_view js_relation_wrap design disabled"
									readonly="" onclick="relationHelp(); return false;"></textarea>
								<input type="hidden" name="_relation" value="">

								<div class='c_tip '>자동지정 : 동일 카테고리 상품이 랜덤으로 노출됩니다.</div>
								<div class='c_tip '>수동지정 : 직접 선택한 상품이 순서대로 노출됩니다.</div>
								<div class='c_tip '>관련상품은 상세페이지 로딩을 고려하여 최대 50개까지만 노출됩니다.</div>
								<script>
	//관련상품삭제
	function delField(objTemp) {
		objTemp.value='';
	}

	//관련상품수정/입력
	function relationWin(type){
		if(type=='all'){
			setCookie('relation_prop_code_A0344-N7288-E3075', $('input[name=_relation]').val());
			window.open('_product.relation.pop.php?relation_code=A0344-N7288-E3075&search_type=all','relation', 'width=1350, height=700, scrollbars=yes');
		}else if(type=='select'){
			
			setCookie('relation_prop_code_A0344-N7288-E3075', $('input[name=_relation]').val());
			window.open('_product.relation.pop.php?relation_code=A0344-N7288-E3075&search_type=select','relation', 'width=1350, height=700, scrollbars=yes');
		}else{
			
			// 초기화
			var value = $('input[name=_relation]').val();
			$('.js_relation_select').hide();
			$('input[name=_relation]').val('');
			$('.js_relation_view').text('');
			$('.js_relation_cnt').text('0');
			controller_realtion_display();
		}
	}

	//관련상품 안내문구
	function relationHelp() {
		if(!$('.js_relation_view').hasClass('disabled')){
			alert('위 "관련상품 설정하기"버튼을 이용하여 입력해 주시기 바랍니다.   ');
		}
	}

	// 관련상품 노출 설정시
	$(document).ready(controller_realtion_display);
	$(document).on('click', 'input[name=_relation_type]', controller_realtion_display);
	function controller_realtion_display(){
		var selected = $('input[name=_relation_type]:checked').val();

		if(selected == 'manual'){
			$('.js_relation_wrap').show();
			$('.js_relation_hide').show();
			$('.js_relation_view').removeClass('disabled');
		}
		else{
			$('.js_relation_wrap').hide();
			$('.js_relation_hide').hide();
			$('.js_relation_view').addClass('disabled');
		}

		var _relation = $('[name="_relation"]').val();
		if( _relation == ''){
			$('.js_relation_select').hide();
			$('.js_relation_reset').hide();
		}else{
			$('.js_relation_select').show();
			$('.js_relation_reset').show();
		}


	}

	// 관련상품 변경시 관련상품 개수 갱싱
	//$(document).ready(sync_relation_cnt);
	$(document).on('change', 'input[name=_relation]', sync_relation_cnt);
	function sync_relation_cnt(){
		var value = $('input[name=_relation]').val();
		var cnt = 0;
		if(value != '') cnt = value.split('|').length;
		$('.js_relation_cnt').text(cnt.toString().comma());
	}
</script></td>
						</tr>
					</tbody>
				</table>
			</div>



			<!-- 이용안내 -->


			<div class="group_title">
				<strong>이용안내</strong>
			</div>
			<div class="data_form">
				<div class="c_tab  tab_guide">
					<ul>
						<li class="hit"><a href="#none" class="btn tab_menu"
							data-idx="10"><strong>구매/배송</strong></a></li>
						<input type="hidden" name="guide_tabidx_save" value="10">
						<li class=""><a href="#none" class="btn tab_menu"
							data-idx="20"><strong>교환/반품/환불 가능</strong></a></li>
						<li class=""><a href="#none" class="btn tab_menu"
							data-idx="30"><strong>교환/반품/환불 불가능</strong></a></li>
					</ul>
				</div>

				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>사용여부</th>
							<td>
								<div id="ajax_guide_info_area">
									<div class="tab_conts" data-idx="10" style="">
										<div class="lineup-row">
											<!-- 사용여부/입력방식 선택 -->
											<label class='design'><input type=radio
												id='p_guide_type_10none' name='p_guide_type_10' value='none'
												class="js_chg_guide_type" data-idx="10" checked>미사용</label><label
												class='design'><input type=radio
												id='p_guide_type_10manual' name='p_guide_type_10'
												value='manual' class="js_chg_guide_type" data-idx="10">직접입력</label><label
												class='design'><input type=radio
												id='p_guide_type_10list' name='p_guide_type_10' value='list'
												class="js_chg_guide_type" data-idx="10">선택입력</label> <input
												type="hidden" name="p_guide_type_10_save" value="none">

											<!-- 선택입력 항목, 선택입력 선택 시 노출 -->
											<select name='p_guide_uid_10'
												onchange="set_guide_info('10');" style="display: none;"><option
													value=''>-선택-</option>
												<option value='25' selected>구매/배송안내222</option>
												<option value='8'>[상상너머] 배송 구매/배송안내 - 기본</option></select> <a
												href="/totalAdmin/_product.guide.list.php"
												class="c_btn sky line" target="_blank">이용안내 관리 바로가기</a>
										</div>

										<!-- 선택입력항목 상세내용 저장, 비노출 -->
										<textarea name="" id="guide_content_25" style="display: none;"
											readonly><p>구매/배송안내<br>
												</p></textarea>
										<textarea name="" id="guide_content_8" style="display: none;"
											readonly><p>ㅇ 배송비 : 기본배송료는 2,500원이며 상품에 따라 완전 또는 조건부 무료배송일 수 있습니다. (도서,산간,오지 일부지역은 배송비가 추가될 수 있습니다)</p><p>
													<br>
												</p><p>ㅇ 본 상품의 평균 배송일은 결제완료 후 평일기준 3일입니다.</p><p>&nbsp; - 배송지연 시 SMS로 안내 드립니다.</p><p>&nbsp; - 발송 후 수령하시는 지역 택배영업소의 상황에 따라 다소 차이가 있을 수 있습니다.</p><p>&nbsp; - 주말 및 공휴일은 발송하지 않습니다.</p></textarea>

										<!-- 직접입력항목 상세내용 저장, 비노출 -->
										<textarea name="p_guide_10" class="design"
											style="display: none;"></textarea>

									</div>
									<div class="tab_conts" data-idx="20" style="display: none;">
										<div class="lineup-row">
											<!-- 사용여부/입력방식 선택 -->
											<label class='design'><input type=radio
												id='p_guide_type_20none' name='p_guide_type_20' value='none'
												class="js_chg_guide_type" data-idx="20" checked>미사용</label><label
												class='design'><input type=radio
												id='p_guide_type_20manual' name='p_guide_type_20'
												value='manual' class="js_chg_guide_type" data-idx="20">직접입력</label><label
												class='design'><input type=radio
												id='p_guide_type_20list' name='p_guide_type_20' value='list'
												class="js_chg_guide_type" data-idx="20">선택입력</label> <input
												type="hidden" name="p_guide_type_20_save" value="none">

											<!-- 선택입력 항목, 선택입력 선택 시 노출 -->
											<select name='p_guide_uid_20'
												onchange="set_guide_info('20');" style="display: none;"><option
													value=''>-선택-</option>
												<option value='7'>[상상너머] 불가한 상품안내</option></select> <a
												href="/totalAdmin/_product.guide.list.php"
												class="c_btn sky line" target="_blank">이용안내 관리 바로가기</a>
										</div>

										<!-- 선택입력항목 상세내용 저장, 비노출 -->
										<textarea name="" id="guide_content_7" style="display: none;"
											readonly><p>ㅇ 주문취소</p><p>&nbsp; - 결제대기, 결제완료 상태인 경우에는 가능(신용카드, 휴대폰 결제 시), 무통장입금 시에는 +1일 소요됨</p><p>&nbsp; - 상품준비중, 배송중 상태인 경우 불가</p><p>&nbsp;</p><p>
													<br>
												</p><p>ㅇ 환불/반품/반송</p><p>&nbsp; - 결제대기, 결제완료 상태인 경우에는 당일 환불가능(신용카드, 휴대폰 결제 시), 무통장입금 시에는 +1일 소요됨</p><p>&nbsp; - 상품준비중, 배송중 상태인 경우 고객센터 또는 1:1문의를 통해 신청 가능, 상품이 배송중일 시 [반송비 5,000원(도서산간 10,000원)/송장 개수 기준] 무통장으로 선입금 후 환불 진행</p><p>&nbsp; - 배송완료, 구매확정 상태인 경우 수령일로부터 7일 이내 고객센터 또는 1:1문의를 통해 신청 가능, [반송비 5,000원(도서산간 10,000원)/송장 개수 기준] 무통장으로 선입금 후 환불 진행</p><p>
													<br>
												</p><p>
													<br>
												</p><p>&nbsp; ★ 환불 및 반품 절차</p><p>&nbsp; &nbsp; &nbsp;① 고객센터 또는 1:1문의를 통해 신청</p><p>&nbsp; &nbsp; &nbsp;② 반송비 5,000원을 꽁쇼핑의 무통장입금 진행(도서산간 10,000원)/송장 개수 기준</p><p>&nbsp; &nbsp; &nbsp;③ 상품이 아직 배송중인 경우 수취거부를, 이미 수령하신 경우 박스에 재포장 후 대기</p><p>&nbsp; &nbsp; &nbsp;④ 입점사에서 보낸 반송택배기사를 통해 상품 반송 진행</p><p>&nbsp; &nbsp; &nbsp;⑤ 반송된 상품이 입점사의 물류창고로 수령 및 상품 상태확인</p><p>&nbsp; &nbsp; &nbsp;⑥ 상품에 이상이 없을 경우 환불 진행</p><p>
													<br>
												</p><p>
													<br>
												</p><p>&nbsp; ★ 환불 기준</p><p>&nbsp; &nbsp; &nbsp;① 밀봉스티커 등의 밀봉처리가 된 상품은 미개봉 상태여야 함</p><p>&nbsp; &nbsp; &nbsp;② 상품 택이 있는 제품은 택을 제거하지 않아야 함</p><p>&nbsp; &nbsp; &nbsp;③ 상품 사이즈 비교 등을 위해 착장 시 화장품, 이물질 등이 묻어 변질 시 불가</p><p>&nbsp; &nbsp; &nbsp;④ 수령 시 배송 중 상품에 하자가 있는 경우 환불 가능 무통장으로 선입금 후 환불 진행</p><p>
													<br>
												</p><p>
													<br>
												</p><p>ㅇ 교환</p><p>&nbsp; - 배송완료, 구매확정 상태인 경우 수령일로부터 7일 이내 고객센터 또는 1:1문의를 통해 신청 가능, [반송비 5,000원(도서산간 10,000원)/송장 개수 기준] 무통장으로 선입금 후 교환 진행</p><p>
													<br>
												</p><p>&nbsp; ★ 교환 및 반품 절차&nbsp;</p><p>&nbsp; &nbsp; &nbsp;① 고객센터 또는 1:1문의를 통해 신청</p><p>&nbsp; &nbsp; &nbsp;② 반송비 5,000원을 꽁쇼핑의 무통장입금 진행(도서산간 10,000원)/송장 개수 기준</p><p>&nbsp; &nbsp; &nbsp;③ 상품을 박스에 재포장 후 대기</p><p>&nbsp; &nbsp; &nbsp;④ 입점사에서 보낸 반송택배기사를 통해 상품 반송 진행</p><p>&nbsp; &nbsp; &nbsp;⑤ 반송된 상품이 입점사의 물류창고로 수령 및 상품 상태확인</p><p>&nbsp; &nbsp; &nbsp;⑥ 상품에 이상이 없을 경우 교환 진행<br>
												</p><p>
													<br>
												</p><p>&nbsp; ★ 교환 기준</p><p>&nbsp; &nbsp; &nbsp;① 밀봉스티커 등의 밀봉처리가 된 상품은 미개봉 상태여야 함</p><p>&nbsp; &nbsp; &nbsp;② 상품 택이 있는 제품은 택을 제거하지 않아야 함</p><p>&nbsp; &nbsp; &nbsp;③ 상품 사이즈 비교 등을 위해 착장 시 화장품, 이물질 등이 묻어 변질 시 불가</p><p>&nbsp; &nbsp; &nbsp;④ 수령 시 배송 중 상품에 하자가 있는 경우 맞교환 가능</p><p>
													<br>
												</p><p>
													<br>
												</p><p>ㅇ 소비자분쟁해결 기준(공정거래위원회 고시)에 따라 피해를 보상받을 수 있습니다.</p><p>ㅇ A/S는 상세페이지 상단에 표기된 '상품문의 연락처'로 문의하시기 바랍니다.</p></textarea>

										<!-- 직접입력항목 상세내용 저장, 비노출 -->
										<textarea name="p_guide_20" class="design"
											style="display: none;"></textarea>

									</div>
									<div class="tab_conts" data-idx="30" style="display: none;">
										<div class="lineup-row">
											<!-- 사용여부/입력방식 선택 -->
											<label class='design'><input type=radio
												id='p_guide_type_30none' name='p_guide_type_30' value='none'
												class="js_chg_guide_type" data-idx="30" checked>미사용</label><label
												class='design'><input type=radio
												id='p_guide_type_30manual' name='p_guide_type_30'
												value='manual' class="js_chg_guide_type" data-idx="30">직접입력</label><label
												class='design'><input type=radio
												id='p_guide_type_30list' name='p_guide_type_30' value='list'
												class="js_chg_guide_type" data-idx="30">선택입력</label> <input
												type="hidden" name="p_guide_type_30_save" value="none">

											<!-- 선택입력 항목, 선택입력 선택 시 노출 -->

											<a href="/totalAdmin/_product.guide.list.php"
												class="c_btn sky line" target="_blank">이용안내 관리 바로가기</a>
										</div>

										<!-- 선택입력항목 상세내용 저장, 비노출 -->

										<!-- 직접입력항목 상세내용 저장, 비노출 -->
										<textarea name="p_guide_30" class="design"
											style="display: none;"></textarea>

									</div>
								</div>
							</td>
						</tr>
						<tr class="js_guide_use_content" style="display: none;">
							<th>내용</th>
							<td>
								<div class="mobile_tip">에디터 기능은 모바일에서 제한적일 수 있습니다.</div> <!--
											<div class="guide_layout" style="position: absolute;width: 100%;height: 100%;background: rgba(98, 98, 98, 0.38); z-index:5; bottom:17px;"></div>
										--> <textarea name="" class="design SEditor guide_viewer"
									style="width: 100%; height: 300px;"></textarea>
							</td>
						</tr>
					</tbody>
				</table>

				<script>
		// 입점업체 변경시
		$(document).on('change', '[name=_cpid]', function(){
			var cpid = $(this).val();
			$.ajax({
				url:'/totalAdmin/_product.inc_guide.ajax.php',
				data:'_code=A0344-N7288-E3075&_cpid=' + cpid,
				type:'get',
				dataType:'html',
				success:function(data){
					$('#ajax_guide_info_area').html(data);
					$('.tab_guide').find('li.hit').find('.tab_menu').trigger('click');
				}
			});
		});
		// 이용내역 적용타입 선택
		$(document).on('change', '.js_chg_guide_type', function(){
			var idx = $(this).data('idx');

			// 변경전 값 저장
			var sv = $('input[name=p_guide_type_'+idx+'_save]').val();
			$('input[name=p_guide_type_'+idx+'_save]').val($(this).val());

			var type = $('input[name=p_guide_type_'+ idx +']:checked').val();
			$('select[name=p_guide_uid_'+ idx +']').hide();

			// 변경전 값이 직접입력이라면 직접입력 값 저장
			if(sv=='manual' && type!=sv){
				// 불러온내용 에디터에 적용
				var id = $('.guide_viewer').attr('id');
				var _bak = '';
				if(oEditors.length > 0){
					_bak = oEditors.getById[id].getContents();
				}

				$('[name=p_guide_'+ idx +']').val(_bak);
			}

			$('.js_guide_use_content').show();

			if(type=='none'){
				// 사용안함/글쓰기방지 레이아웃 노출
				$('.guide_layout').css({'background-color':'rgba(98, 98, 98, 0.38)'}).show();

				// 저장된 내용 불러오기
				var _text = $('[name=p_guide_'+ idx +']').val()
				// 불러온내용 에디터에 적용
				var id = $('.guide_viewer').attr('id');
				if(oEditors.length > 0){
					oEditors.getById[id].exec("SET_IR", [_text]);
					oEditors.getById[id].exec('RESIZE_EDITING_AREA_BY',[true]);
				}

				$('.js_guide_use_content').hide();

			}else if(type=='manual'){

				// 사용안함/글쓰기방지 레이아웃 노출
				$('.guide_layout').hide();



				// 저장된 내용 불러오기
				var _text = $('[name=p_guide_'+ idx +']').val()
				// 불러온내용 에디터에 적용
				var id = $('.guide_viewer').attr('id');
				if(oEditors.length > 0){
					oEditors.getById[id].exec("SET_IR", [_text]);
					oEditors.getById[id].exec('RESIZE_EDITING_AREA_BY',[true]);
				}

			}else if(type=='list'){



				// 사용안함/글쓰기방지 레이아웃 노출
				$('.guide_layout').css({'background-color':'rgba(239, 239, 239, 0.38)'}).show();

				$('select[name=p_guide_uid_'+ idx +']').show();
				set_guide_info(idx);

			}
		});

		$(document).on('click', '.tab_menu', function(){

			var idx = $(this).data('idx');

			// 변경전 값 저장
			var sv = $('input[name=guide_tabidx_save]').val();
			$('input[name=guide_tabidx_save]').val(idx);

			var type = $('input[name=p_guide_type_'+ sv +']:checked').val();

			// 변경전 값이 직접입력이라면 직접입력 값 저장
			if(type=='manual'){
				// 불러온내용 에디터에 적용
				var id = $('.guide_viewer').attr('id');
				var _bak = '';
				if(oEditors.length > 0){
					_bak = oEditors.getById[id].getContents();
				}

				$('[name=p_guide_'+ sv +']').val(_bak);
			}

			$('.js_chg_guide_type[data-idx='+idx+']:checked').trigger('change');
		});

		// 이용내역 본문에 삽입하기
		function set_guide_info(idx){
			if(!idx){ alert('잘못된 접근입니다. '); return false; }

			var _val = $('select[name=p_guide_uid_'+ idx +']').val();
			var _text = $('#guide_content_' + _val).val();

			if(!_val){ _text = ''; }

			// 불러온내용 에디터에 적용
			var id = $('.guide_viewer').attr('id');
			if(oEditors.length > 0){
				oEditors.getById[id].exec("SET_IR", [_text]);
				oEditors.getById[id].exec('RESIZE_EDITING_AREA_BY',[true]);
			}

		}

		// submit할때 마지막 변경내용 적용
		$(document).ready(function(){
			$('.guide_viewer').each(function(){
				$(this).closest('form').on('submit', function(){
					$('.tab_guide').find('li.hit').find('.tab_menu').trigger('click');
				});
			});
		});

	</script>

			</div>


			<div class="group_title">
				<strong>이미지 등록</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>등록방법</th>
							<td><label class="design"><input type="radio"
									name="_img_auto_resize_use" class="img_auto_resize_use"
									value="auto">자동등록</label> <label class="design"><input
									type="radio" name="_img_auto_resize_use" checked
									class="img_auto_resize_use" value="direct">직접등록</label>
								<div class='c_tip '>자동등록 : 대표 이미지 1개만 등록하고 다른 노출영역의 이미지를
									자동으로 생성합니다.</div>
								<div class='c_tip '>직접등록 : 각 노출 항목에 이미지를 모두 개별적으로 등록합니다.</div></td>
						</tr>
						<tr class="auto_area">
							<th>대표 이미지</th>
							<td>

								<div class="input_file" style="width: 300px">
									<input type="text" class="fakeFileTxt" readonly="readonly"
										placeholder="파일찾기" disabled="">
									<div class="fileDiv">
										<input type="button" class="buttonImg" value="파일찾기"> <input
											type="file" name="_img_main_tmp" class="realFile"
											onchange="$(this).closest('.input_file').find('.fakeFileTxt').val(this.value);">
									</div>
								</div>
								<div class='c_tip '>권장사이즈 : 590 x 590 (pixel)</div>
							</td>
						</tr>
						<tr class="direct_area">
							<th>목록 이미지</th>
							<td>
								<div class="in_option_list ">
									<dl>
										<dt>기본이미지</dt>
										<dd>
											<div class="lineup-row">
												<input type="hidden" name="backup_img_org"
													value="auto_s_1118414415.jpg||2191540315.jpg||auto_main_1118414415.jpg">
												<div class="input_file hyperLinkDiv" style="display: none;">
													<input type="text" name="_img_list_square"
														class="design  hyperLink" style="width: 100%;" value=""
														placeholder="http(s)://를 포함하여 입력" disabled>
												</div>

												<div class="input_file" style="width: 250px">
													<input type="text" class="fakeFileTxt" readonly="readonly"
														placeholder="파일찾기" disabled="">
													<div class="fileDiv">
														<input type="button" class="buttonImg" value="파일찾기">
														<input type="file" name="_img_list_square"
															class="realFile"
															onchange="$(this).closest('.input_file').find('.fakeFileTxt').val(this.value);">
													</div>
												</div>

												<div class="preview_thumb">
													<img
														src="https://responsive-food.onedaynet.co.kr/upfiles/product/auto_s_1118414415.jpg"
														class="js_thumb_img"
														data-img="https://responsive-food.onedaynet.co.kr/upfiles/product/auto_s_1118414415.jpg"
														alt="">
													<!-- 클릭하면 이미지 새창 -->
													<a href="#none" class="c_btn h27 js_thumb_popup"
														data-img="https://responsive-food.onedaynet.co.kr/upfiles/product/auto_s_1118414415.jpg">미리보기</a>
												</div>
												<label class="design"><input type="hidden"
													name="_img_list_square_OLD" class="oldFile"
													value="auto_s_1118414415.jpg"><input
													type="checkbox" class="js_del" name="_img_list_square_DEL"
													value="Y">삭제</label>
											</div>
											<label class="design"><input type="checkbox"
												class="js_use_hyperlink" name="_use_hyperlink[]"
												value="_img_list_square">외부 이미지</label>
											<div class='c_tip '>권장사이즈 : 590 x 590 (pixel)</div>

										</dd>
									</dl>
									<dl>
										<dt>오버이미지</dt>
										<dd>
											<div class="lineup-row">
												<div class="input_file hyperLinkDiv" style="display: none;">
													<input type="text" name="_img_list_over"
														class="design  hyperLink" style="width: 100%;" value=""
														placeholder="http(s)://를 포함하여 입력" disabled>

												</div>

												<div class="input_file" style="width: 250px">
													<input type="text" class="fakeFileTxt" readonly="readonly"
														placeholder="파일찾기" disabled="">
													<div class="fileDiv">
														<input type="button" class="buttonImg" value="파일찾기">
														<input type="file" name="_img_list_over" class="realFile"
															onchange="$(this).closest('.input_file').find('.fakeFileTxt').val(this.value);">
													</div>
												</div>

												<div class="preview_thumb">
													<img
														src="https://responsive-food.onedaynet.co.kr/upfiles/product/2191540315.jpg"
														class="js_thumb_img"
														data-img="https://responsive-food.onedaynet.co.kr/upfiles/product/2191540315.jpg"
														alt="">
													<!-- 클릭하면 이미지 새창 -->
													<a href="#none" class="c_btn h27 js_thumb_popup"
														data-img="https://responsive-food.onedaynet.co.kr/upfiles/product/2191540315.jpg">미리보기</a>
												</div>
												<label class="design"><input type="hidden"
													name="_img_list_over_OLD" class="oldFile"
													value="2191540315.jpg"><input type="checkbox"
													class="js_del" name="_img_list_over_DEL" value="Y">삭제</label>
											</div>
											<label class="design"><input type="checkbox"
												class="js_use_hyperlink" name="_use_hyperlink[]"
												value="_img_list_over">외부 이미지</label>
											<div class='c_tip '>권장사이즈 : 590 x 590 (pixel)</div>

										</dd>
									</dl>
								</div>
								<div class='c_tip '>기본 이미지 : 메인과 상품목록에 노출되는 이미지입니다. (필수)</div>
								<div class='c_tip '>오버 이미지 : 마우스를 오버하면 애니메이션 효과와 함께 나타나는
									이미지입니다.(선택사항)</div>
							</td>
						</tr>
						<tr class="direct_area">
							<th>상세 이미지</th>
							<td>
								<div class="in_option_list ">
									<dl>
										<dt>
											<font class="js_img_idx">1번</font>
										</dt>
										<dd>
											<div class="lineup-row">
												<div class="input_file hyperLinkDiv"
													style="display: none; width: 250px">
													<input type="text" name="_img_b1" class="hyperLink design"
														style="width: 100%;" value=""
														placeholder="http(s)://를 포함하여 입력해주세요." disabled>
												</div>

												<div class="input_file" style="width: 250px">
													<input type="text" class="fakeFileTxt" readonly="readonly"
														placeholder="파일찾기" disabled="">
													<div class="fileDiv">
														<input type="button" class="buttonImg" value="파일찾기">
														<input type="file" name="_img_b1" class="realFile"
															onchange="$(this).closest('.input_file').find('.fakeFileTxt').val(this.value);">
													</div>
												</div>

												<div class="preview_thumb">
													<img
														src="https://responsive-food.onedaynet.co.kr/upfiles/product/auto_main_1118414415.jpg"
														class="js_thumb_img"
														data-img="https://responsive-food.onedaynet.co.kr/upfiles/product/auto_main_1118414415.jpg"
														alt="">
													<!-- 클릭하면 이미지 새창 -->
													<a href="#none" class="c_btn h27 js_thumb_popup"
														data-img="https://responsive-food.onedaynet.co.kr/upfiles/product/auto_main_1118414415.jpg">미리보기</a>
												</div>
												<label class="design"><input type="hidden"
													name="_img_b1_OLD" class="oldFile"
													value="auto_main_1118414415.jpg"><input
													type="checkbox" class="js_del" name="_img_b1_DEL" value="Y">삭제</label>
												<a href="#none" class="c_btn h27 blue js_addimg_btn">추가</a>
											</div>
											<label class="design"><input type="checkbox"
												class="js_use_hyperlink" name="_use_hyperlink[]"
												value="_img_b1">외부 이미지</label>




											<div class='c_tip '>권장사이즈 : 590 x 590 (pixel)</div>
										</dd>
									</dl>
								</div>
								<div class='c_tip '>상세이미지는 최대 5개까지 등록가능하며, 상품상세페이지에서
									스와이프(롤링)형태로 노출됩니다.</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>


			<div class="group_title">
				<strong>네이버/다음 EP연동</strong>
			</div>
			<div class="data_form">
				<table class="table_form">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>네이버 EP</th>
							<td><label class='design'><input type=radio
									id='p_naver_switchY' name='p_naver_switch' value='Y' checked>적용</label><label
								class='design'><input type=radio id='p_naver_switchN'
									name='p_naver_switch' value='N'>미적용</label>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div>
								<div class="tip_box">
									<div class='c_tip '>
										전체상품 DB URL : <em>http://responsive-food.onedaynet.co.kr/addons/ep/naver/allep.php</em>
									</div>
								</div></td>
							<th>다음 EP</th>
							<td><label class='design'><input type=radio
									id='p_daum_switchY' name='p_daum_switch' value='Y' checked>적용</label><label
								class='design'><input type=radio id='p_daum_switchN'
									name='p_daum_switch' value='N'>미적용</label>
								<div class="dash_line">
									<!-- 점선라인 -->
								</div>
								<div class="tip_box">
									<div class='c_tip '>
										전체상품 DB URL : <em>http://responsive-food.onedaynet.co.kr/addons/ep/daum/allep.php</em>
									</div>
									<div class='c_tip '>
										요약상품 DB URL : <em>http://responsive-food.onedaynet.co.kr/addons/ep/daum/briefep.php</em>
									</div>
								</div></td>
						</tr>
						<tr>
							<th>참고사항</th>
							<td colspan="3"><a
								href="/totalAdmin/_config.product.form.php?menuUid=303"
								class="c_btn h46 sky line" target="_blank">EP연동 설정 바로가기</a>
								<div class='c_tip '>환경설정에서 전체 적용이 되어야 정상적으로 노출되니 설정을
									확인해주세요.</div>
								<div class='c_tip '>전체 미적용인 경우에는 상품마다 개별 설정을 해도 무조건
									미적용됩니다.</div></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="c_btnbox type_full">
				<ul>
					<li><span class="c_btn h46 red"><input type="submit"
							name="" value="확인" accesskey="s" /></span></li>
					<li><a href="_product.list.php?menuUid=77"
						class="c_btn h46 black line" accesskey="l">목록</a></li>
					<li><a href="#none" class="c_btn h46 blue line"
						id="product_copy">복사하기</a></li>
				</ul>
			</div>

			<!-- ● 스크롤 고정 등록버튼 (등록폼에서만 스크롤 내리면 고정됨/최하단 버튼 영역에 가면 사라짐) : 등록페이지 공통 -->
			<div class="fixed_save  js_fixed_save" style="display: none;">
				<div class="wrapping">
					<!-- 가운데정렬버튼 -->
					<div class="c_btnbox type_full">
						<ul>
							<li><span class="c_btn h34 red"><input type="submit"
									name="" value="확인" accesskey="s" /></span></li>
							<li><a href="_product.list.php?menuUid=77"
								class="c_btn h34 black line" accesskey="l">목록</a></li>
							<li><a href="#none" class="c_btn h34 blue line"
								id="product_copy">복사하기</a></li>
						</ul>
					</div>
				</div>
			</div>

		</form>


		<script language="javascript">
	

	// 판매기간 설정에 따른 이벤트
	$(function(){
		js_sale_type();
	});

	$(document).on('change','input[name="_sale_type"]',function(){
		js_sale_type();
	});
	function js_sale_type(){
		var $_sale_typeT_date_box = $('#_sale_typeT_date_box');
		var _sale_type = $('input[name="_sale_type"]:checked').val();
		if( _sale_type == 'T'){ // 기간판매 일 경우
			$_sale_typeT_date_box.show();
		}else{
			$_sale_typeT_date_box.hide();
		}

		js_time_sale_type();
	}

	function js_time_sale_type(){
		var _time_sale = $('input[name="_time_sale"]').is(':checked');
		var _sale_type = $('input[name="_sale_type"]:checked').val();
		
		$('input[name="_time_sale"]').prop('disabled',false);
		if( _sale_type == 'T'){
			$('input[name="_time_sale"]').prop('checked',false).prop('disabled',true);
			_time_sale = false;
		}else{
			
			var _time_sale_bak = $('#_time_sale_bak').val();
			if( _time_sale_bak == 'Y'){
				_time_sale = true;
				$('input[name="_time_sale"]').prop('checked',true).prop('disabled',false);
			}			

					}
		if( _time_sale == true){
			$('#_time_saleY_date_box').show();
			
		}else{
			$('#_time_saleY_date_box').hide();
		}
	}


	// 타임세일 설정에 따른 이벤트
	$(document).on('click','input[name="_time_sale"]',function(){
		var _time_sale = $('input[name="_time_sale"]').is(':checked');
		if( _time_sale == true){
			$('#_time_saleY_date_box').show();
		}else{
			$('#_time_saleY_date_box').hide();
		}
	});

	// 상품복사
	//$('#product_copy').on('click',function(e){
	$(document).on('click', '#product_copy', function(e){
		e.preventDefault();
		var c = confirm('상품을 복사하시겠습니까?');
		if(c){ location.href='_product.copy.php?pcode=A0344-N7288-E3075&_PVSC=Jm1lbnVVaWQ9Nzc='; }
	});


	// 정산 형태 선택
	var comm_type_check = function() {


		if($('input[name=_commission_type]:checked').val() == '공급가') {
			$('#comSaleTypeTr1').prop('disabled', false);
			$('#comSaleTypeTr2').prop('disabled', true);
		} else {
			$('#comSaleTypeTr1').prop('disabled', true);
			$('#comSaleTypeTr2').prop('disabled', false);
		}

				
	}
	$(document).on('click', 'input[name=_commission_type]', comm_type_check);
	$(document).ready(comm_type_check);


	// 배송정보 설정
	var delivery_setting = function() {

		// 배송정책따름
		if($('._shoppingPay_use:checked').val() == 'N') {
			$('.shoppingPayN').show();
		} else {
			$('.shoppingPayN').hide();
		}

		if($('._shoppingPay_use:checked').val() == 'Y') {
			$('#_shoppingPay_use_Y').removeAttr('disabled');
			$('.shoppingPayY').show();
		} else {
			$('#_shoppingPay_use_Y').attr('disabled','disabled');
			$('.shoppingPayY').hide();
		}

		 // ----- JJC : 상품별 배송비 : 2018-08-16 -----
		if($('._shoppingPay_use:checked').val() == 'P') {
			$("input[name='_shoppingPayPdPrice']").removeAttr('disabled');
			$("input[name='_shoppingPayPfPrice']").removeAttr('disabled');
			$(".shoppingPayP").show();
		} else {
			$("input[name='_shoppingPayPdPrice']").attr('disabled','disabled');
			$("input[name='_shoppingPayPfPrice']").attr('disabled','disabled');
			$(".shoppingPayP").hide();
		}
		// ----- JJC : 상품별 배송비 : 2018-08-16 -----



	}
	$(document).on('click', '._shoppingPay_use', delivery_setting);
	$(document).ready(delivery_setting);


	// 쇼핑몰/입점업체 배송비 확인하기
	function entershop_view() {
		var cpid = $('[name=_cpid]').val();
		if(!cpid) {
			alert('입점업체를 먼저 선택하세요');
		} else {
			window.open('_config.delivery.form.php?menu_idx=5');		}
	}

	// 텝메뉴
	$(document).on('click', '.tab_menu', function() {
		$parent = $(this).closest('.data_form');
		var idx = $(this).data('idx');
		// 탭변경
		$parent.find('.tab_menu').closest('li').removeClass('hit');
		$parent.find('.tab_menu[data-idx='+ idx +']').closest('li').addClass('hit');
		// 입력항목변경
		$parent.find('.tab_conts').hide();
		$parent.find('.tab_conts[data-idx='+ idx +']').show();

		// 부모창이 display:none; 일때 높이 오류 수정
		var trigger_cont_editor = $(this).data('trigger')=='Y' ? true : false;
		if(trigger_cont_editor){
			$('.tab_conts[data-idx='+ idx +'] .SEditor').each(function(){
				var id = $(this).attr('id');
				if(oEditors.length > 0){
					oEditors.getById[id].exec('RESIZE_EDITING_AREA_BY',[true]);
				}
			});
			$(this).data('trigger','N');
		}
	});


	// 옵션설정에 따른 노출
	function onoff_option() {
		// 옵션사용하지 않을 경우 옵션유형 모두 닫기
		if($('._option_type_chk:checked').val() == 'nooption') {
			$(".option_type").hide();
		}
		else {
			$(".option_type").show(); // 옵션유형 div 열기
			$(".init_depth_type").hide(); // 옵션유형 항목 일단 모두 닫기
			if($('._option_type_chk:checked').val() == '1depth') {
				$(".init_depth1_type").show(); // 1차만 열기
			}
			else if($('._option_type_chk:checked').val() == '2depth') {
				$(".init_depth1_type").show(); $(".init_depth2_type").show(); // 1차,2차 열기
			}
			else if($('._option_type_chk:checked').val() == '3depth') {
				$(".init_depth_type").show(); // 모두 열기
			}
		}
	}
	$(document).ready(onoff_option);
	$(document).on('click', '._option_type_chk', onoff_option);


	// 이미지 자동등록/직접등록
	function onoff() {
		if($('.img_auto_resize_use:checked').val() == 'auto') {
			$('.auto_area').show();
			$('.direct_area').hide();
		} else {
			$('.auto_area').hide();
			$('.direct_area').show();
		}
	}
	$(document).ready(onoff);
	$(document).on('click', '.img_auto_resize_use', onoff);


	// KAY ::: 상품쿠폰 할인율 적용  ::: 2021-03-22
	function switch_coupon(){
		var cp_type = $("[name='_coupon_type']:checked").val();
		var cp_per = $("input[name='_coupon_per']").val();
		var cp_price = $("input[name='_coupon_price']").val();

		// :[0328]
		$(".cls_coupon_type").hide();
		$('.cls_coupon_wrap').hide();
		if(cp_type == 'price' || cp_type == 'per'){ $('.cls_coupon_wrap').show(); }

		if(cp_type == "price"){ $(".cls_coupon_type.price").show();}
		if(cp_type == "per"){ $(".cls_coupon_type.per").show(); }
	}
	$(document).ready(switch_coupon);
	$(document).on("change" , "[name='_coupon_type']", switch_coupon );

	// 텝메뉴
	$(document).on('change', '[name="_brand"]', function() {
		var _brand = $("select[name='_brand']").val();
		if(_brand!=''){
			$('.js_brand_preview').show();
		}else{
			$('.js_brand_preview').hide();
		}
	});

	$(document).on("click", ".js_brand_preview", function() {
		var _brand = $("select[name='_brand']").val();
		if(_brand!=''){
			$(".js_brand_preview").attr("href", "/?pn=product.brand_list&brand=all&uid="+_brand);
		}
	});



	// 상세이미지 등록폼 추가 버튼
	$(document).on('click', '.js_addimg_btn', function(){
		if($('.js_img_idx').length>=5){
			alert('상세 이미지는 최대 5개까지만 등록가능합니다.');
			return false;
		}

		var html = '';
			html += '<dl>';
			html += '	<dt><font class="js_img_idx">0번</font></dt>';
			html += '	<dd>';
			html += '		<div class="lineup-row">';
			html += '			<div class="input_file hyperLinkDiv" style="display:none;width:250px">';
			html += '				<input type="text" name="" class=" hyperLink design" value="" style="width:100%;" placeholder="http(s)://를 포함하여 입력해주세요." disabled>';
			html += '			</div>';
			html += '					<div class=\"input_file\" style=\"width:250px\">			<input type=\"text\" class=\"fakeFileTxt\" readonly=\"readonly\" placeholder=\"파일찾기\" disabled=\"\">			<div class=\"fileDiv\">				<input type=\"button\" class=\"buttonImg\" value=\"파일찾기\">				<input type=\"file\" name=\"\" class=\"realFile\" onchange=\"$(this).closest(\'.input_file\').find(\'.fakeFileTxt\').val(this.value);\">			</div>		</div>	';
			html += '			<a href="#none" class="c_btn h27 js_delimg_btn">삭제</a>';
			html += '		</div>';

			html += '			<label class="design"><input type="checkbox" class="js_use_hyperlink" name="_use_hyperlink[]" value="">외부 이미지</label>';
			html += '		<div class=\'c_tip \'>권장사이즈 : 590 x 590 (pixel)</div>';
			html += '	</dd>';
			html += '</dl>';

		$(this).closest('.in_option_list').append(html);

		rename_img();

	});
	// 상세이미지 등록폼 삭제 버튼
	$(document).on('click', '.js_delimg_btn', function(){
		$(this).closest('dl').remove();

		rename_img();

	});
	//
	function rename_img(){
		var _img_idx = 0;
		$('.js_img_idx').each(function(){
			_img_idx++;
			// 항목명 변경
			$(this).text(_img_idx+'번');
			// input[name]변경 -- realFile
			$(this).closest('dl').find('input[type=file].realFile').attr('name','_img_b'+_img_idx);
			// input[name]변경 -- oldFile
			$(this).closest('dl').find('input[type=hidden].oldFile').attr('name','_img_b'+_img_idx+'_OLD');
			// input[name]변경 -- js_del
			$(this).closest('dl').find('input[type=hidden].js_del').attr('name','_img_b'+_img_idx+'_DEL');
			// value변경 -- js_use_hyperlink
			$(this).closest('dl').find('input[type=checkbox].js_use_hyperlink').val('_img_b' + _img_idx);
			// input[name]변경 -- hyperLink
			$(this).closest('dl').find('input[type=text].hyperLink').attr('name','_img_b'+_img_idx);
		});
	}


	// 옵션창 열기
	function option_popup(pass_code) {
		pass_mode = $('._option_type_chk').filter(function() {if (this.checked) return this;}).val();
		if(pass_mode == 'nooption' || pass_mode == undefined) {
			alert('1차~3차 옵션을 선택하세요');
			return false;
		}
		window.open('_product_option.form.php?pass_mode='+pass_mode+'&pass_code=' + pass_code ,'option','width=650,height=700,scrollbars=yes');
	}

	// -- 자주쓰는 옵션 열기
	function common_option_popup(pass_code)
	{
		pass_mode = $('._option_type_chk').filter(function() {if (this.checked) return this;}).val();
		if(pass_mode == 'nooption' || pass_mode == undefined) {
			alert('1차~3차 옵션을 선택하세요');
			return false;
		}
		window.open('_product_common_option.pop.php?pass_mode='+pass_mode+'&pass_code=' + pass_code ,'option','width=1350,height=700,scrollbars=yes');
	}

	// 추가옵션창 열기
	function addoption_popup(code) {
		pass_mode = $('._option_type_chk').filter(function() {if (this.checked) return this;}).val();
		if(pass_mode == 'nooption' || pass_mode == undefined) {
			alert('1차~3차 옵션을 선택하세요');
			return false;
		}
		window.open('_product_addoption.popup.php?pass_code=' + code,'addoption','width=650,height=700,scrollbars=yes');
	}

	// 정보제공고시창 열기
	function reqinfo_popup() {
		window.open('_product_reqinfo.popup.php?pass_code=A0344-N7288-E3075','reqinfo','width=1350,height=700,scrollbars=yes');
	}

	// 정보제공고시 기본항목 설정창 열기
	function reqinfo_default_setting_popup() {
		window.open('_product_reqinfo.popup.php?pass_code=_DEFAULT_SETTING_','default_setting','width=1350,height=700,scrollbars=yes,top=50,');
	}

	// 외부 이미지 사용 체크 이벤트
	$(document).on('click', '.js_use_hyperlink', function(){
		$parent = $(this).closest('dd');
		var trigger = $(this).is(':checked');
		if(trigger){
			$parent.find('.input_file:not(.hyperLinkDiv)').hide().find('input').attr({'disabled':'disabled'});
			$parent.find('.input_file.hyperLinkDiv').show().find('input').removeAttr('disabled');
		}else{
			$parent.find('.input_file:not(.hyperLinkDiv)').show().find('input').removeAttr('disabled');
			$parent.find('.input_file.hyperLinkDiv').hide().find('input').attr({'disabled':'disabled'});
		}
	});



	// 상품가격설정에 따른 할인율 노출
	function change_print_persent() {
		var _screenPrice =  $('input[name="_screenPrice"]').val().replace(/,/g,'')*1;
		var _price =  $('input[name="_price"]').val().replace(/,/g,'')*1;

		if( (_screenPrice >_price) && (_screenPrice!='' && _price!='' ) ){
			persent = Math.round((_screenPrice-_price)*100/_screenPrice);
		}else{
			persent = 0;
		}

		$('.js_percent_view').val(persent);
	}
	$(document).ready(change_print_persent);
	$(document).on('keyup', 'input[name="_screenPrice"]', change_print_persent);
	$(document).on('keyup', 'input[name="_price"]', change_print_persent);



	// 상품가격설정에 적립률 체크
	function change_sale_print_persent() {
		var _point_per =  $('input[name="_point_per"]').val().replace(/,/g,'')*1;
		var _price =  $('input[name="_price"]').val().replace(/,/g,'')*1;

		var point_per_ext = 0;
		if( _price > 0 && _point_per > 0){

			if( _point_per > 100){ 
				alert("적립률은 100 보다 클 수 없습니다.");
				$('input[name="_point_per"]').val(100); 
				_point_per = 100;
			}
			point_per_ext = Math.round( _price * (_point_per/100) );
		}

		$('.js_point_per_ext').val(point_per_ext.toString().comma());
		
	}
	$(document).ready(change_sale_print_persent);
	$(document).on('keyup', 'input[name="_point_per"]', change_sale_print_persent);
	$(document).on('keyup', 'input[name="_price"]', change_sale_print_persent);


	// KAY ::: 상품쿠폰 할인율 적용  ::: 2021-03-22 - Max 검증 시 콤마제거
	jQuery.validator.addMethod("max", function( value, element, param ) {
		value = value.replace(/,/,'')
		return this.optional( element ) || value <= param;
	}, "Please enter a value less than or equal to {0}.");

	// 폼 유효성 검사
	$(document).ready(function(){
		$("form[name=frm]").validate({
				ignore: ".ignore",
				rules: {
						_code: { required: true }

						,_sale_sdate: {
							required: function() {
								return ($('input[name="_sale_type"]:checked').val() == 'T'?true:false);
							}
						}
						,_sale_edate: {
							required: function() {
								return ($('input[name="_sale_type"]:checked').val() == 'T'?true:false);
							}
						}
						,_cpid: { required: true }
						,_name: { required: true }
						,_type: { required: true }
						,_price: { required: true , min: { param: 1, depends: function(element) { return ($('input[name=_price]').val().replace(/,/g,'')*1 == 0 ? 1 : 0); } } }
						,_content: { required: true }
						// -- KAY ::: 상품쿠폰 할인율 적용  ::: 2021-03-22 ----
						,_coupon_title: { required: function(){ return ($('[name=_coupon_type]:checked').val() != '' ? true : false);} }
						,_coupon_price: {
							required: function(){ return ($('[name=_coupon_type]:checked').val() == 'price' ? true : false); }
							,min:function(){ return ($('[name=_coupon_type]:checked').val() == 'price' ? 1 : false); }
							,max:function(){ return ($('[name=_coupon_type]:checked').val() == 'price' ? ($('input[name="_price"]').val().replace(/,/g,'')*1 - 1) : false); }
						}
						,_coupon_per: {
							required: function(){ return ($('[name=_coupon_type]:checked').val() == 'per' ? true : false); }
							,min:function(){ return ($('[name=_coupon_type]:checked').val() == 'per' ? 0.1 : false); }
							,max:function(){ return ($('[name=_coupon_type]:checked').val() == 'per' ? 99.9 : false); }
						}
						// -- KAY ::: 상품쿠폰 할인율 적용  ::: 2021-03-22 ----

						,_sPersent: {
							required: function(){ return ($('[name=_commission_type]:checked').val() == '수수료' ? true : false); }
							,max:function(){ return ($('[name=_commission_type]:checked').val() == '수수료' ? 99.9 : false); }
						}
				},
				invalidHandler: function(event, validator) {
					// 입력값이 잘못된 상태에서 submit 할때 자체처리하기전 사용자에게 핸들을 넘겨준다.
				},
				messages: {
						_code : { required: '상품코드를 입력해주시기 바랍니다.' }
						, _sale_sdate: { required: "판매시작일을 입력하시기 바랍니다."}
						, _sale_edate: { required: "판매종료일을 입력하시기 바랍니다."}
						,_cpid : { required: '입점업체를 선택 해주시기 바랍니다.' }
						,_name : { required: '대표상품명을 입력해주시기 바랍니다.' }
						,_price : { required: '판매가를 입력해주시기 바랍니다.' , min: '판매가를 입력해주시기 바랍니다.'}
						,_content : { required: '상품상세설명을 입력해주시기 바랍니다.' }
						// -- KAY ::: 상품쿠폰 할인율 적용  ::: 2021-03-22 ----
						,_coupon_title: { required: '쿠폰명을 입력해주시기 바랍니다.' }
						,_coupon_price: {
							required: '쿠폰 할인금액을 입력해주시기 바랍니다.'
							,min:'쿠폰 할인금액은 0보다 큰 금액으로 입력해주시기 바랍니다.'
							,max: '쿠폰 할인금액은 판매가보다 적은 금액으로 입력해주시기 바랍니다.'
						}
						,_coupon_per: {
							required: '쿠폰 할인율을 입력해주시기 바랍니다.'
							,min:'쿠폰 할인율은 0보다 큰 수를 입력해주시기 바랍니다.'
							,max: '쿠폰 할인율은 100보다 작은 수를 입력해주시기 바랍니다.'
						}
						// -- KAY ::: 상품쿠폰 할인율 적용  ::: 2021-03-22 ----

						,_sPersent: {
							required: '수수료를 입력해주시기 바랍니다.'
							,max: '수수료를 100보다 작은 수를 입력해주시기 바랍니다.'
						}
				},
				submitHandler : function(form) {
					// 폼이 submit 될때 마지막으로 뭔가 할 수 있도록 핸들을 넘겨준다.
					form.submit();
				}

		});
	});

</script>



	</div>
	<!-- end section -->
	</div>
	<!-- end container -->

	<div class="footer">
		<div class="layout_fix">© ONEDAYNET.CO.KR ALL RIGHTS RESERVED.</div>
		<a href="#none" onclick="return false;"
			class="fly_gotop js_scroll_stage" title="맨위로"></a>
	</div>


	<script>
    // 맨위로 가는 버튼
    $( document ).ready( function() {
        $( '.fly_gotop' ).click( function() {
            $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
            return false;
        } );
    } );

    // 스크롤 내리면 나타나는 스크립트
    $(window).scroll(function() {
        var scroll = $(window).scrollTop();
        if (scroll >= 30) {
            $(".js_scroll_stage").addClass("if_scroll");
        } else {
            $(".js_scroll_stage").removeClass("if_scroll");
        }
    });
</script>

	<div class="js_dialog" style="display: none">
		<!-- 다이얼로그 기본폼:: 삭제금지 -->
	</div>

	<div class="js_preview_image_popup popup" style="display: none;">
		<div class="pop_title">
			<strong>이미지 미리보기</strong> <a href="#none" class="btn_close close"
				title="닫기"></a>
		</div>
		<div class="data_list pop_conts preview_img"></div>
	</div>


	</div>
	<!-- end wrap -->

	<iframe name="common_frame" width="0" height="0" frameborder="0"
		style="display: none;"></iframe>
	<script src="/include/js/jquery.validate.setDefault.js"
		type="text/javascript"></script>
	<script
		src="//responsive-food.onedaynet.co.kr/totalAdmin/js/common.footer.js"></script>
	<script>
	// 연관되지 않는 요소 열고닫기
	$(document).on('click','.js_onoff_event',function(e){
		var data = $(this).data();
		var targetClass = data.target;
		var addClass = data.add;
		var chk = $(targetClass).hasClass(addClass);
		if( chk == true){ // 이미 있다면
			$(targetClass).removeClass(addClass);
		}else{
			$(targetClass).addClass(addClass);
		}
	});
	// 연관되지 않는 요소 열고닫기 (라벨)
    $(document).on('change','.js_onoff_label',function(e){
        var data = $(this).data();
        var targetClass = data.target;
        var addClass = data.add;
        var chk = $(targetClass).hasClass(addClass);
        if( chk == true){ // 이미 있다면
            $(targetClass).removeClass(addClass);
        }else{
            $(targetClass).addClass(addClass);
        }
    });
</script>
</body>
</html>