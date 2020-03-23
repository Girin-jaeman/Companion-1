<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:url value="/" var ="root"></c:url>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>LIKE TEST PAGE</title>
	
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/home.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/main.css">
		<!-- Font Awesome JS -->
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	<style type="text/css">
	</style>		
	
	</head>
<body>

<table class="table">
				<thead>
					<tr>
<%-- 			<th><%Integer.parseInt(" %>${orderlist.order_id }<%") %></th> --%>
						<th>좋아요 갯수 : </th>
						<th>상품 ID </th>
						<th>회원 ID </th>
					</tr>
				</thead>
					<tbody>
					<c:forEach items="${likeTest }" var="bean">
						<tr>
							<td><a>좋아요 갯수 :  ${bean.like_id }</a>	<button id="btn"> 좋아요!<img alt="없어?" src="${root }imgs/shopping/빈따봉1.jpg"></button></td>
						<%-- 	<td><a>좋아요 갯수 :  ${bean.like_id }</a>	<button> 좋아요!<img alt="없어?" src="${root }imgs/shopping/찬따봉.jpg"></button></td> --%>							<td><a>상품 ID :  ${bean.product_id }</a></td>
							<td><a>회원 ID :  ${bean.member_id }</a></td>
						</tr>
					</c:forEach>
					</tbody>
</table> 
		<!-- jQuery -->
		<script src="${root}js/jquery-1.12.4.js"></script>
		<!-- Popper.JS -->
		<script src="${root}js/bootstrap/popper.js"></script>
		<!-- Bootstrap JS -->
		<script src="${root}js/bootstrap/bootstrap.js"></script>
		<!-- MAIN JS -->
   		<script src="${root }js/main.js"></script>
		<script type="text/javascript">
	 		$(document).ready(function () {
				$('#btn').on('click', function () {
				$.ajax({
					url: '/order/likeTest',
					type:'post',
					dataType:'json',
					//data --> 클라이언트에서 서버로   dataType 서버에서 클라이언트로! 오는 데이터타입 지정
					data:{
						product_id :'${productDetailOne.product_id}',
						member_id:'${memberVo.member_id}'
					},
					success:function(data){
						console.log("성공");
					}		
				});
				});
			}); 
			
			
		</script>


</body>
</html>






























