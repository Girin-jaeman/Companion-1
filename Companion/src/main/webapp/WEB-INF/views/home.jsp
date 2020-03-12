<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
		<title>Collapsible sidebar using Bootstrap 4</title>
	
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/home.css">
	
		<!-- Font Awesome JS -->
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	
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
	
		<div class="wrapper">
			<!-- Sidebar  -->
			<nav id="sidebar">
				<div class="sidebar-header">
					<h3>Bootstrap Sidebar</h3>
					<strong>BS</strong>
				</div>
	
				<ul class="list-unstyled components">
					<li class="active">
						<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
							<i class="fas fa-home"></i>
							Home
						</a>
						<ul class="collapse list-unstyled" id="homeSubmenu">
							<li>
								<a href="#">Home 1</a>
							</li>
							<li>
								<a href="#">Home 2</a>
							</li>
							<li>
								<a href="#">Home 3</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-briefcase"></i>
							About
						</a>
						<a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
							<i class="fas fa-copy"></i>
							Pages
						</a>
						<ul class="collapse list-unstyled" id="pageSubmenu">
							<li>
								<a href="#">Page 1</a>
							</li>
							<li>
								<a href="#">Page 2</a>
							</li>
							<li>
								<a href="#">Page 3</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-image"></i>
							Portfolio
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-question"></i>
							FAQ
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-paper-plane"></i>
							Contact
						</a>
					</li>
				</ul>
	
				<ul class="list-unstyled CTAs">
					<li>
						<a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">Download source</a>
					</li>
					<li>
						<a href="https://bootstrapious.com/p/bootstrap-sidebar" class="article">Back to article</a>
					</li>
				</ul>
			</nav>
	
			<!-- Page Content  -->
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
	
				<h2>Collapsible Sidebar Using Bootstrap 4</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	
				<div class="line"></div>
	
				<h2>Lorem Ipsum Dolor</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	
				<div class="line"></div>
	
				<h2>Lorem Ipsum Dolor</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	
				<div class="line"></div>
	
				<h3>Lorem Ipsum Dolor</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
	
		<!-- jQuery -->
		<script src="${root}js/jquery-1.12.4.js"></script>
		<!-- Popper.JS -->
		<script src="${root}js/bootstrap/popper.js"></script>
		<!-- Bootstrap JS -->
		<script src="${root}js/bootstrap/bootstrap.js"></script>
	
		<script type="text/javascript">
			$(document).ready(function () {
				$('#sidebarCollapse').on('click', function () {
					$('#sidebar').toggleClass('active');
				});
			});
		</script>
	</body>
	
	</html>