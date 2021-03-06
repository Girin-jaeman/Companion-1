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
								<a class="nav-link active" href="${root }hotel/preroom">룸미리보기</a>
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
		    <div class="categories">
                <a href="#homeSubmenu">
                    <i class="fas fa-building"></i>
                    호텔서비스
                </a>
                <span>></span>
                <a href="#">
                    <i class="fas fa-home"></i>
                    룸미리보기
                </a>
                <hr class="mb-4">
            </div>
		    <!-- section start -->
			<section class="section">
                             
                  <div class="album py-5 bg-light">
                    <div class="container">
                        <span class="h2">VIP Room</span>
                        <p>개별 마당이 있으며, 다양한 서비스를 추가로 받을 수 있습니다.<br/>
                            평소 넓은 공간에서 지내고 있는 반려견을 위한 객실입니다.<br/>
                            객실크기 : 100cm × 102cm × 90cm<br/>
                            개별마당 : 60cm × 80cm × 90cm</p>
                      <div class="row"> <!-- viproom .row start -->
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <img class="card-img-vip"src="../imgs/viproom1.png" alt="viproom1">
                              <div class="card-body">
                                <p class="card-text">VipRoom 1</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-4">
                            <div class="card mb-4">
                                <img class="card-img-vip"src="../imgs/viproom1.png" alt="viproom1">
                              <div class="card-body">
                                <p class="card-text">VipRoom 3</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-4">
                            <div class="card mb-4">
                                <img class="card-img-vip" src="../imgs/viproom1.png" alt="viproom1">
                              <div class="card-body">
                                <p class="card-text">VipRoom 3</p>
                              </div>
                            </div>
                          </div>
                        </div><!-- viproom .row end-->  
                        
                          <span class="h2">Standard Room</span>
                          <p>넓은 공간에서 논 후 스트레스 없이 안심하고 쉴 수 있는 객실입니다.<br/>
                            객실크기 : 73cm × 59cm × 57cm</p>
                          <div class="row"><!-- standard .row start--> 
                          <div class="col-md-3">
                            <div class="card mb-3">
                                <img class="card-img-std" src="../imgs/stdroom1.png" alt="stdroom1">
                              <div class="card-body">
                                <p class="card-text">WoodRoom1</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-3">
                            <div class="card mb-3">
                                <img class="card-img-std" src="../imgs/stdroom1.png" alt="stdroom1">
                              <div class="card-body">
                                <p class="card-text">WoodRoom2</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-3">
                            <div class="card mb-3">
                                <img class="card-img-std" src="../imgs/stdroom1.png" alt="stdroom1">
                              <div class="card-body">
                                <p class="card-text">WoodRoom3</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-3">
                            <div class="card mb-3">
                                <img class="card-img-std" src="../imgs/stdroom1.png" alt="stdroom1">
                              <div class="card-body">
                                <p class="card-text">WoodRoom4</p>
                              </div>
                            </div>
                          </div>
                          <hr class="mb-2">
                        </div><!-- standard .row end--> 
            </section>
			<!-- section end -->
		</div>
			<!-- Footer  -->
				<jsp:include page="../common/footer.jsp"/>
			<!-- Footer end -->
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