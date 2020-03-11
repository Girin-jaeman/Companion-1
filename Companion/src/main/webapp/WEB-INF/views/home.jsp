<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<!-- add reset css -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
		<!-- add Bootstrap core CSS -->
		<link rel="stylesheet" type="text/css" href="${root }css/bootstrap/bootstrap.css">
		<!-- add main css -->
		<link rel="stylesheet" type="text/css" href="${root }css/main.css">
		<!-- add jquery-1.12.4 -->
		<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
		<!-- add Bootstrap core js -->
		<script type="text/javascript" src="${root }js/bootstrap/bootstrap.js"></script>
		<title>Companion</title>
		<style type="text/css">
			.row{
				padding:0;
				padding-bottom:0;
			}
		</style>
	</head>
	<body>
	<!-- header -->
	
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		  <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
			  </button>
			  <a class="navbar-brand" href="#">Companion</a>
			</div>
		
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <form class="navbar-form navbar-left">
				<div class="form-group">
				  <input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			  </form>
			  <ul class="nav navbar-nav navbar-right">
				<li><a href="#">쇼핑하기</a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">호텔서비스 <span class="caret"></span></a>
				  <ul class="dropdown-menu">
					<li><a href="#">예약하기</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">이용안내</a></li>
					<li><a href="#">서비스소개</a></li>
					<li><a href="#">돌보미소개</a></li>
					<li><a href="#">호텔위치</a></li>
				  </ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">알림 <span class="caret"></span></a>
					<ul class="dropdown-menu">
					  <li><a href="#">이벤트</a></li>
					  <li><a href="#">공지사항</a></li>
					  <li><a href="#">Q&A</a></li>
					</ul>
				  </li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
			
		  <div class="container-fluid sign-group">
		  <button type="button" class="btn btn-default navbar-btn navbar-left">로그인</button>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">회원가입</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">아이디찾기</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">비밀번호찾기</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">회원가입 후 첫 주문시 1000원 할인 쿠폰 지급</a></p>
		</div><!-- /.container-fluid -->
	</nav>
	
	<!-- section -->
	<section class="section">
		<div class="container">
			<h1>최재만</h1>
		
		</div>
	</section>
	
	<!-- footer -->
	<footer class="navbar-fixed-bottom">
		<div class="container navbar-inverse">
				Copyright ⓒ 2020 COMPANION All rights reserved.
		</div>
	</footer>  
	</body>
	</html>