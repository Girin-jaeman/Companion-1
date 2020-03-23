<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- jQuery-UI -->
	<link rel="stylesheet" href="${root }css/jquery-ui.css">
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
	<!-- Our Custom CSS -->
	<link rel="stylesheet" href="${root}css/main.css">
	<!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

	<title>컴패니언::Companion::룸미리보기</title>
</head>
<body>
<!-- .wrapper start  -->
<div class="wrapper">
	<!-- Sidebar -->
	<jsp:include page="../common/sidebar.jsp"/>
	<!-- #content start -->
	<div id="content">
		<!-- #container start -->
		<div id="container">
			<!-- nav start -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<!-- .container-fluid start -->
			    <div class="container-fluid">
					<!-- menu toggle button start -->
			        <button type="button" id="sidebarCollapse" class="btn btn-info">
			            <i class="fas fa-align-left"></i>
			            <span>메뉴</span>
			        </button>
			        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
			            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			            aria-expanded="false" aria-label="Toggle navigation">
			            <i class="fas fa-align-justify"></i>
			        </button>
			        <!-- menu toggle button end -->
			        <!-- top menu bar start -->
			         <div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item">
								<a class="nav-link" href="${root }hotel/infouse">이용안내</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${root }hotel/reservation">예약하기</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${root }hotel/preroom">룸미리보기</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${root }hotel/infocare">돌보미정보</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${root }hotel/infoloc">위치정보</a>
							</li>
						</ul>
			        </div>
			        <!-- top menu bar end -->
			    </div>
			    <!-- .container-fluid end -->
			</nav>
		    <!-- nav end -->
		    
		    <!-- section start -->
			<section class="section">
				<!-- .row start -->
				<div class="row">
					<div class="col-12">
						<h1>룸미리보기</h1>
						<p>내용을 채워주세요</p>
					</div>
				</div>
				<!-- .row end -->
			</section>
			<!-- section end -->
		</div>
		<!-- #container end -->
	</div>
	<!-- #content end -->
</div>
<!-- .wrapper end  -->
<!-- jQuery -->
<script src="${root}js/jquery-1.12.4.js"></script>
<!-- jQuery-UI -->
<script src="${root }js/jquery-ui.js"></script>
<!-- Popper.JS -->
<script src="${root}js/bootstrap/popper.js"></script>
<!-- Bootstrap JS -->
<script src="${root}js/bootstrap/bootstrap.js"></script>
<!-- MAIN JS -->
<script src="${root }js/main.js"></script>

</body>
</html>