<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="shopdb/calc" method="get" name="calcForm">
		<input type="text" name="number1">
			<select name="selectOption">
				<option> + </option>	
				<option> - </option>	
				<option> * </option>	
				<option> / </option>	
			</select> 
		
		<input type="text" name="number2">	<br>
		<input type="submit" name="계산하기">
		<input type="reset" name="다시입력">	
	
	</form>

</body>
</html>