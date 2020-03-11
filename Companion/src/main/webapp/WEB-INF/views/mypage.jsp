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
		<title>Companion MYpage</title>
		<script type="text/javascript">
			var body;
			var menu;
			var form;
				$(function(){
					form=$('#memberModal form');
					form.submit(function(){
						if($('#memberModal').modal('hide'));
					});
				});
					
			$(document).on('click','#member',function(){
					// 회원 상세 정보 페이지
				$('#memberModal').modal();
			});
			
		</script>
		
	</head>
	<body>
	<!-- header -->
	<header class="header">
		<div class="container-fluid">
		</div>
	</header>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		  <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar">1</span>
				<span class="icon-bar">2</span>
				<span class="icon-bar">3</span>
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
		  <button type="button" class="btn btn-default navbar-btn navbar-left">000님 환영합니다</button>
		  <p class="navbar-text navbar-left" id="member"><a href="#" class="navbar-link">회원정보</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">주문내역</a></p>
		  <p class="navbar-text navbar-left"><a href="shoppingcart" class="navbar-link">장바구니</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">문의하기</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">적립금 조회</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">쿠폰 조회</a></p>
		  <p class="navbar-text navbar-left"><a href="#" class="navbar-link">호텔 예약 조회</a></p>
		</div><!-- /.container-fluid -->
	</nav>
	<!-- side bar -->
	<div class="btn-group-vertical" role="group" aria-label="...">
 		 <button type="button" class="btn btn-default">주문조회</button>

		  <div class="btn-group" role="group">
	  		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	  		   나의 쇼핑 활동
	  		    <span class="caret"></span>
	 		   </button>
		   <ul class="dropdown-menu">
	 		     <li><a href="#">주문 내역 조회</a></li>
	 		     <li><a href="#">구매 후기</a></li>
	 		     <li><a href="#">상품 문의</a></li>
	 		     <li><a href="#">1:1 문의</a></li>
		    </ul>
	  		</div>
	</div>
	
	<!-- side bar end -->
	
	<!-- 회원정보 Modal -->
	
		<div class="modal fade" id="memberModal" tabindex="-1" role="dialog">
		  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">회원 정보 상세</h4>
		      </div>
		      <div class="modal-body">
		      <form class="form-horizontal">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label"> ID </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="mb_id" placeholder="기본값?">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label"> 이름 </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="mb_name" placeholder="text">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label"> 휴대전화 </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="mb_tel" placeholder="text">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label"> E-mail </label>
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="mb_email" placeholder="Email">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label"> 주소 </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="mb_addr" placeholder="김진우">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label"> 구매 횟수 </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="point" placeholder="총 61건">
				    </div>
		    	  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label"> 적립금 </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="point" placeholder="500원">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label"> 쿠폰 </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="coupon" placeholder="3">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <div class="checkbox">
				        <label>
				          <input type="checkbox"> Remember me
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">Sign in</button>
				    </div>
				  </div>
			</form>
		      </div><!-- modal body end  -->
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-primary">내 정보 수정하기</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
			
<!-- Modal END -->
	<!-- content -->
	
	
	<!--content  -->
	<!-- footer -->
	<footer class="navbar-fixed-bottom">
		<div class="container navbar-inverse">
					상호:COMPANION | 대표 : 최길동 | 개인정보보호관리책임자 : 최길동 | 전화 : 02-0000-0000 | 이메일 : companion@companion.com<br />
				주소 : 서울특별시 서초구 강남대로 459 (서초동, 백암빌딩) 3층 | 사업자등록번호 : 000-00-00000 | 통신판매 : 2020-서울강남-0000 호스팅제공자 : ㈜Companion<br />
				[홈페이지 이용약관] [개인정보취급방침]<br />
				Copyright ⓒ 2020 COMPANION All rights reserved.
		</div>
	</footer>  
	</body>
	</html>