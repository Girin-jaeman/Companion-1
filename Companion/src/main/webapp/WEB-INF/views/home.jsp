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
<<<<<<< HEAD
		<table class="table">
			<tr>
				<td class="row" colspan="7">
					<div class="col-lg-2">상품목록</div>
					<div class="col-lg-8"></div>
					<div class="col-lg-2 td_right">
						<a class="btn btn-default btn-lg" href="#" role="button">등록하기</a>
					</div>
				</td>
			</tr>
			<tr>
				<td class="row" colspan="7">
					<div class="col-lg-1">총 XX건</div>
					<div class="col-lg-7"></div>
					<div class="col-lg-4">
						<form class="navbar-form navbar-left">
					        <div class="form-group">
					          <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
					        </div>
					        <button type="submit" class="btn btn-default">검색</button>
					    </form>
					</div>
				</td>
			</tr>
			<tr>
					<td>번호</td>
					<td>상품명</td>
					<td>1차 분류</td>
					<td>2차 분류</td>
					<td>가격</td>
					<td>수량</td>
					<td>등록일</td>
			</tr>
<!-- 리스트 호출 for문-->
			<tr>
					<td>1</td>
					<td>사료</td>
					<td>강아지</td>
					<td>사료</td>
					<td>5000원</td>
					<td>400</td>
					<td>2020/01/02</td>
			</tr>
<!-- 리스트 호출 끝-->
		</table>
=======
>>>>>>> 4acbc8df5f47c36c25c8e2c5f3f7c438e3cb5aef
		
		</div>
	</section>
	
	<!-- footer -->
	<footer class="section">
		<div class="container navbar-inverse">
				Copyright ⓒ 2020 COMPANION All rights reserved.
		</div>
	</footer>  
	</body>
	</html>