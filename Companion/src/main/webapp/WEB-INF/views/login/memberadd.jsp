<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<label for="mbId">ID</label>
		<input type="text" name="mbId" id="mbId" placeholder="ID">
		
		<label for="mbPw">PW</label>
		<input type="password" name="mbPw" id="mbPw" placeholder="PW">
		
		<label for="mbName">NAME</label>	
		<input type="text" name="mbName" id="mbName" placeholder="name">
		
		<label for="mbTel">TEL</label>
		<input type="text" name="mbTel" id="mbTel" placeholder="일반전화">
		
		<label for="mbPhone">PHONE</label>
		<input type="text" name="mbPhone" id="mbPhone" placeholder="phone number without -">
		
		<label for="mbEmail">E-MAIL</label>
		<input type="text" name="mbEmail" id="mbEmail" placeholder="E-mail contains @">
		
		<label for="mbAddr1">우편번호</label>
		<input type="text" name="mbAddr1" id="mbAddr1" placeholder="5글자 숫자">
		
		<label for="mbAddr2">기본주소</label>		
		<input type="text" name="mbAddr2" id="mbAddr2" placeholder="XX시 XX구 XX동">
		
		<label for="mbAddr3">상세주소</label>
		<input type="text" name="mbAddr3" id="mbAddr3" placeholder="XXX번지 XX XXX아파트 XXX동 XXX호">
		
		<input type="hidden" name="mbCode" id="mbCode" value="2">
		
		<button type="submit">가입</button>
		<button type="button" onclick="history.back();">뒤로</button>
	</form>
</body>
</html>