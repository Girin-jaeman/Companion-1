<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- jQuery -->
	<script src="${root}js/jquery-1.12.4.js"></script>
	<!-- Popper.JS -->
	<script src="${root}js/bootstrap/popper.js"></script>
	<!-- Bootstrap JS -->
	<script src="${root}js/bootstrap/bootstrap.js"></script>
	<!-- MAIN JS -->
	<script src="${root }js/main.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="${root}css/main.css">
<link rel="stylesheet" href="${root}css/order/goodsdetail.css">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead> 
		<tr>
		<td>문의글 목록</td>


		<td>아이디</td>
		<td>문의 제목</td>
		<td>문의 내용</td>
		<td>작성 날짜</td>
		</tr>
		
		
		</thead>
		<tbody>
		<tr></tr>
		
		<tr>
		<c:forEach items="${ReplyList}" var="bean">
		<td></td>
		<td>${bean.member_id }</td>
		<td>${bean.question_title }</td>
		<td>${bean.question_content }</td>
		<td id="question_date">${bean.question_date }</td>
		</c:forEach>
		</tr>
		
		</tbody>
	</table>

</body>
<script>
var question_date = $("#question_date").val();
		question_date = new Date(this.question_date);
		question_date = question_date.toLocaleDateString("ko-US");
	console.log(question_date);
</script>


</html>










