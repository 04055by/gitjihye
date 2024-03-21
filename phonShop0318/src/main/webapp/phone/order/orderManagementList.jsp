<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


<style>
	.wrapper{
		width: 100%;
	  	height: 100vh;
	  	
	}

	.wrap{
		margin-top: 100px;
		margin-left: 200px;
		width: 80%;
		height: 80%;
		display: block;
		float: right;
	}
	
      .left{
            width: 19%;
            height: 700px;
            margin-right: 10px;
            background-color: bisque;
            float:  left;  /*자식요소에 float을 넣어줌*/
        }

        .right{
            float: left; /*자식요소에 float을 넣어줌*/
            width: 79.9%;
            height: 700px;
           
        }
        .hr{ 
                border-color: 1px rgb(238, 229, 229);
                width: 100%;
            }
            .divAllButton{
            display: flex ;  /* 반드시 부모요소에 주어야합니다.*/
            flex-direction: row ;   /* row: 옆으로 column : 수직으로  */
          
            }
          .divleft{
            
          
          }
          .divRight{
         margin-left: 65%;
           
          }

          button{
            background-color: rgb(255, 255, 255);
            border-color: rgb(255, 255, 255);
           
            border: none;
            border-radius: 20px;
            padding: 8px 10px;
            background-color: #c9c8c8; /* 초록색 배경 */
            color: rgb(0, 0, 0); /* 글자색 */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 8px;
            cursor: pointer;
        
          }

          .CenterBnt{
            margin-left: 50%;
            font-size: 13px;
          
            border: none;
            border-radius: 20px;
            padding: 10px 20px;
            background-color: #1e1f1e; /* 초록색 배경 */
            color: white; /* 글자색 */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            
            
          }

          .table1{
            width: 70%;
            margin-left: 20%;
            border-color:  rgb(238, 229, 229);
            
            
          }

          .table2{
            width: 100%;
            border-color:  rgb(238, 229, 229);
            
           
          }

          tr{
            height: 39px;
          }

          .nhr{  /* 점선 */
            border: dashed 1px rgb(238, 229, 229);
                width: 100%;
          }
     
          /*리스트 버튼*/

</style>
</head>
<body>
	<header>
		 <jsp:include page="header.jsp" flush="true"/>		
	</header>
<div class=".wrapper">
	<div class= "wrap">
		 <h3>회원목록</h3>
                    <br>
                    <hr>
                    <br>
                    <h6>검색</h6>
  
            
                <br>
                <table border="1" class="table1"> <!-- border라는 것을 줘야 테이블이 생성된다.-->
                    <tr style="height: 70px;">
                        <th>검색어</th>
                        <th>
                            <label for="allUser"></label>
                            <select id="allUser" name="allUser">
                            <option value="all">전체</option>
                              <option value="name">이름</option>
                              <option value="email">이메일</option>
                              <option value="phone">핸드폰</option>
                            </select>

                            <input type="checkbox2"  name="checkbox">

                        </th>

                        <th>가입구분</th>
                        <th>
                            <input type="checkbox"  name="checkbox">
                            <label for="checkbox">일반</label>
                            <input type="checkbox" name="checkbox2">
                            <label for="checkbox2">카카오</label>
                        </th>
                    </tr>
        
                    <tr>
                        <th>회원등급</th>
                        <th> 
                            <select id="allUser" name="allUser">
                            <option value="allGrade">전체등급</option>
                              <option value="bronze">Bronze</option>
                              <option value="gold">Gold</option>
                              <option value="silver">Silver</option>
                            </select>
                        </th>
                        <th>이메일수신</th>
                        <th> 
                            <form>
                                <input type="radio" id="emailAll" name="email" value="emailAll">
                                <label for="male">전체</label>
                                <input type="radio" id="emailAccept" name="email" value="emailAccept">
                                <label for="female">수신허용</label>
                                <input type="radio" id="emailRefusal" name="email" value="emailRefusal">
                                <label for="other">수신거부</label>
                              </form>
                        </th>
                    </tr>
        
                  
        
                </table>        
	<div class="container">
                <div id="toolbar">
		<select class="form-control">
				<option value="">Export Basic</option>
				<option value="all">Export All</option>
				<option value="selected">Export Selected</option>
		</select>
</div>

<table id="table" 
			 data-toggle="table"
			 data-search="true"
			 data-filter-control="true" 
			 data-show-export="true"
			 data-click-to-select="true"
			 data-toolbar="#toolbar"
       class="table-responsive">
	<thead>
		<tr>
			<th data-field="state" data-checkbox="true"></th>
			<th data-field="prenom" data-filter-control="input" data-sortable="true">First Name</th>
			<th data-field="date" data-filter-control="select" data-sortable="true">Date</th>
			<th data-field="examen" data-filter-control="select" data-sortable="true">Examination</th>
			<th data-field="note" data-sortable="true">Note</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="bs-checkbox "><input data-index="0" name="btSelectItem" type="checkbox"></td>
			<td>Jitender</td>
			<td>01/09/2015</td>
			<td>Français</td>
			<td>12/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="1" name="btSelectItem" type="checkbox"></td>
			<td>Jahid</td>
			<td>05/09/2015</td>
			<td>Philosophie</td>
			<td>8/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="2" name="btSelectItem" type="checkbox"></td>
			<td>Valentin</td>
			<td>05/09/2015</td>
			<td>Philosophie</td>
			<td>4/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="3" name="btSelectItem" type="checkbox"></td>
			<td>Milton</td>
			<td>05/09/2015</td>
			<td>Philosophie</td>
			<td>10/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="4" name="btSelectItem" type="checkbox"></td>
			<td>Gonesh</td>
			<td>01/09/2015</td>
			<td>Français</td>
			<td>14/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="5" name="btSelectItem" type="checkbox"></td>
			<td>Valérie</td>
			<td>07/09/2015</td>
			<td>Mathématiques</td>
			<td>19/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="6" name="btSelectItem" type="checkbox"></td>
			<td>Valentin</td>
			<td>01/09/2015</td>
			<td>Français</td>
			<td>11/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="7" name="btSelectItem" type="checkbox"></td>
			<td>Eric</td>
			<td>01/10/2015</td>
			<td>Philosophie</td>
			<td>8/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="8" name="btSelectItem" type="checkbox"></td>
			<td>Valentin</td>
			<td>07/09/2015</td>
			<td>Mathématiques</td>
			<td>14/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="9" name="btSelectItem" type="checkbox"></td>
			<td>Valérie</td>
			<td>01/10/2015</td>
			<td>Philosophie</td>
			<td>12/20</td>
		</tr>
		<tr>
			<td class="bs-checkbox "><input data-index="10" name="btSelectItem" type="checkbox"></td>
			<td>Eric</td>
			<td>07/09/2015</td>
			<td>Mathématiques</td>
			<td>14/20</td>
		</tr>
		<tr>
		<td class="bs-checkbox "><input data-index="11" name="btSelectItem" type="checkbox"></td>
			<td>Valentin</td>
			<td>01/10/2015</td>
			<td>Philosophie</td>
			<td>10/20</td>
		</tr>
	</tbody>
</table>
</div>                      
			</section>
	</div>
	<aside class="side">
	 <jsp:include page="orderaside.jsp" flush="true"/>
	</aside>
</div>
	<footer>
		<jsp:include page="footer.jsp" flush="true"/>
	</footer>
	<script src="../../js/boot.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>