<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/" var ="root"></c:url>

<%
    String name = (String)request.getAttribute("name");
    String email = (String)request.getAttribute("email");
    String phone = (String)request.getAttribute("phone");
    String address = (String)request.getAttribute("address");
    System.out.println(name);
    System.out.println(email);
    System.out.println(phone);
    System.out.println(address);
%>
<c:url value="/" var ="root"></c:url>
	<!DOCTYPE html>
	<html>
	
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
		<title>주문해주셔서 감사합니다.</title>
	
		<!-- Bootstrap CSS CDN -->
		<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/home.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/main.css">
	
		<!-- Font Awesome JS -->
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	
	</head>
	
	<body>
	
		<div class="wrapper">
			 <!-- Sidebar  -->
		<jsp:include page="../common/sidebar.jsp"/>
	
			<!-- menu  -->
			<div id="content">
	
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<div class="container-fluid">
	
						<button type="button" id="sidebarCollapse" class="btn btn-info">
							<i class="fas fa-align-left"></i>
							<span>Toggle Sidebar</span>
						</button>
						<button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<i class="fas fa-align-justify"></i>
						</button>
	
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="nav navbar-nav ml-auto">
								<li class="nav-item active">
									<a class="nav-link" href="#">Page</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">Page</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">Page</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">Page</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
				<!-- menu -->
				
				<!--content  -->
	<div class="page-header">
		<h1>주문 / 결제</h1>
				<hr class="mb-5">
	
	</div> <!-- <div class="w-100"></div> 강제 줄바꿈-->
	<div class="container">
		<hr class="mb-5">
	<div class="row"> 
		
		<h1>주문이 완료되었습니다!</h1>
	</div><!-- row end -->
 	<a href="${root }" class="btn btn-primary" id="payApi" role="button"> 메인페이지로 돌아가기. </a> 
<!-- 	<button onclick="window.open='../order/payApi'">결제하기</button> -->
<!-- 	<a class="btn btn-primary" id="payApi" href="../order/payApi" role="button"> 결제하기 </a> -->
<a href="${root }mypagechk" class="btn btn-primary" role="button">주문 내역 확인하기.</a> 
	
	
				<div class="col-sm-2"></div> 
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>						
	</div><!-- container end -->
</div><!-- content 끝나는 곳. -->
		</div><!-- Wrapper ENd -->
	
		<!-- jQuery CDN - Slim version (=without AJAX) -->
	 	<script src="${root}js/jquery-1.12.4.js"></script> 
		<!-- Popper.JS -->
		<script src="${root}js/bootstrap/popper.js"></script>
		<!-- Bootstrap JS -->
		<script src="${root}js/bootstrap/bootstrap.js"></script>
		<!-- MAIN JS -->
   		<script src="${root }js/main.js"></script>		
					
	
	</body>
	
	</html>