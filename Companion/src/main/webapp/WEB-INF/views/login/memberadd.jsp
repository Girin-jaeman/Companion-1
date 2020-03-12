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
		<label for="mb_id">ID</label>
		<input type="text" name="mb_id" id="mb_id" placeholder="ID">
		
		<label for="mb_pw">PW</label>
		<input type="password" name="mb_pw" id="mb_pw" placeholder="PW">
		
		<label for="mb_name">NAME</label>	
		<input type="text" name="mb_name" id="mb_name" placeholder="name">
		
		<label for="mb_tel">TEL</label>
		<input type="text" name="mb_tel" id="mb_tel" placeholder="일반전화">
		
		<label for="mb_phone">PHONE</label>
		<input type="text" name="mb_phone" id="mb_phone" placeholder="phone number without -">
		
		<label for="mb_email">E-MAIL</label>
		<input type="text" name="mb_email" id="mb_email" placeholder="E-mail contains @">
		
		<label for="mb_addr1">우편번호</label>
		<input type="text" name="mb_addr1" id="mb_addr1" placeholder="5글자 숫자">
		
		<label for="mb_addr2">기본주소</label>		
		<input type="text" name="mb_addr2" id="mb_addr2" placeholder="XX시 XX구 XX동">
		
		<label for="mb_addr3">상세주소</label>
		<input type="text" name="mb_addr3" id="mb_addr3" placeholder="XXX번지 XX XXX아파트 XXX동 XXX호">
		
		<input type="hidden" name="mb_code" id="mb_code" value="2">
		
		<button type="submit">가입</button>
		<button type="button" onclick="history.back();">뒤로</button>
	</form>
</body>
</html>