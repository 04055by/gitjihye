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
/* 1. 기본설정 */
.updateBox ul {   /* 노출숨김 */
   display: flex;
    list-style: none;    
}

 /* 노출/숨김 라디오 버튼 간격 조정 */
.updateBox ul label {
    margin-right: 10px;
  } 
  
#_viewY, #_viewN {
   margin-left: 50px;
   margin-top: 20px;
  } 

/* 2. 상품코드 */
.depth3_box>p {
    display: flex; /* 부모 요소를 flex container로 설정 */
    float: center;
    margin-top: 5px;
    padding-top: 1px;
}

.depth2_box p {
    margin-right: 10px; /* 텍스트와 텍스트상자 간격 조정 */
}


.proCode {
margin-left: 150px;
padding-top: 0px;
}
    
.proDesc {
margin-left: 235px;
margin-top: 0;
}

/* 상품명 */
.depth3_box, .proName {
   margin-top: 35px;
}

.design-3 {
   margin-left: 150px;
   margin-top: 0px;
   margin-bottom: 50px;
}

.proName { /* 삭제?? */
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
                        class="design" placeholder="상품명 입력"
                        style="width: 500px"></td>
                  </tr>
                  <tr>
                     <th class="">부가 상품명</th>
                     <td colspan="3"><textarea type="text" name="_subname"
                           class="design" placeholder="상품설명 입력" rows="3"></textarea>
                        <div class='c_tip '>
                           상품상세페이지 설정에서 설명문구를 숨김처리 할 수 있습니다. <a
                              href='/totalAdmin/_config.display.pinfo.php' target='_blank'><em>노출설정
                                 바로가기</em></a>
                        </div></td>
                  </tr>

                  <tr>
                     <th>등록일</th>
                     <td>2024-03-10 <span class="t_light">(16:23:56)</span></td>
                     <th>최종 수정일</th>
                     <td>2024-03-16 <span class="t_light">(17:40:48)</span></td>
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
                  </tr>
                  <tr>
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
                              <option value='147'>애플</option>
                              <option value='144'>삼성</option>
                          <!--     <option value='1'>DESSERT</option>
                              <option value='2'>GIFT</option>
                              <option value='447'>ETC 기타</option>
                              <option value='510'>ICE CREAM</option>
                              <option value='500'>샌드위치·샐러드</option>
                              <option value='519'>교환권</option></select>  -->
                              <select name='pass_cate02'
                              id="pass_cate02" onchange="category_select2(2);">
                              <option value=''>2차 카테고리</option></select> 
                              <select name='pass_cate03'><option value=''>3차 카테고리</option></select> <a href="#none"
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
                           <!-- 상품카테고리 목록 노출 -->
                        <!-- <div id="_product_cateogry_list" class="category_result_wrap">

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
                           점선라인 
                        </div> <a href="/totalAdmin/_category.list.php" class="c_btn sky line"
                        target="_blank">카테고리 설정 바로가기</a>
                     </td> 
                  </tr>
                  <tr> -->
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
                  </tr>
               </tbody>
            </table>
         </div>



         <div class="group_title">
            <strong>할인율 설정</strong>
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
                           </div></tr>
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
                     </td></tr>
               
                <tr>
                     <th>해시태그</th>
                     <td>

                        <div class="lineup-row type_multi">
                           <input type="text" name="_hashtag_search" id="_hashtag_search"
                              class="design" placeholder="해시태그 입력" value=""
                              style="width: 150px"> <a href="#none"
                              onclick="addField(document.frm._hashtag);" class="c_btn blue">추가하기</a>
                        </div></td></tr>

                           </div>
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
                                          data-img="https://responsive-food.onedaynet.co.kr/upfiles/product/auto_s_1118414415.jpg">상세페이지</a>
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
<!--   <script>
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



   // 상세이미지 등록폼 추가 버튼
   $(document).on('click', '.js_addimg_btn', function(){
      if($('.js_img_idx').length>=5){
         alert('상세 이미지는 최대 5개까지만 등록가능합니다.');
         return false;
      }

      var html = '';
         html += '<dl>';
         html += '   <dt><font class="js_img_idx">0번</font></dt>';
         html += '   <dd>';
         html += '      <div class="lineup-row">';
         html += '         <div class="input_file hyperLinkDiv" style="display:none;width:250px">';
         html += '            <input type="text" name="" class=" hyperLink design" value="" style="width:100%;" placeholder="http(s)://를 포함하여 입력해주세요." disabled>';
         html += '         </div>';
         html += '               <div class=\"input_file\" style=\"width:250px\">         <input type=\"text\" class=\"fakeFileTxt\" readonly=\"readonly\" placeholder=\"파일찾기\" disabled=\"\">         <div class=\"fileDiv\">            <input type=\"button\" class=\"buttonImg\" value=\"파일찾기\">            <input type=\"file\" name=\"\" class=\"realFile\" onchange=\"$(this).closest(\'.input_file\').find(\'.fakeFileTxt\').val(this.value);\">         </div>      </div>   ';
         html += '         <a href="#none" class="c_btn h27 js_delimg_btn">삭제</a>';
         html += '      </div>';

         html += '         <label class="design"><input type="checkbox" class="js_use_hyperlink" name="_use_hyperlink[]" value="">외부 이미지</label>';
         html += '      <div class=\'c_tip \'>권장사이즈 : 590 x 590 (pixel)</div>';
         html += '   </dd>';
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

</script>-->
</body>
</html>