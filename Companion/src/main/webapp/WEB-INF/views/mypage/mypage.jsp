<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>이름</td>
			<td>일반전화</td>
			<td>휴대전화</td>
			<td>이메일</td>
			<td>우편번호</td>
			<td>주소</td>
			<td>상세주소</td>
		</tr>
		<tr>
			<td>${sessionScope.memberVo.member_name }</td>
			<td>${sessionScope.memberVo.member_tel }</td>
			<td>${sessionScope.memberVo.member_phone }</td>
			<td>${sessionScope.memberVo.member_email }</td>
			<td>${sessionScope.memberVo.member_addr1 }</td>
			<td>${sessionScope.memberVo.member_addr2 }</td>
			<td>${sessionScope.memberVo.member_addr3 }</td>
		</tr>
	</table>
</body>
</html>