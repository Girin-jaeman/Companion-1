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
	<link rel="stylesheet" href="${root}css/hotel/hotelInfo1.css">
	<!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

	<title>컴패니언::Companion::이용안내</title>
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
								<a class="nav-link active" href="${root }hotel/infouse">이용안내</a>
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
		    <div class="categories">
                <a href="#homeSubmenu">
                    <i class="fas fa-building"></i>
                    호텔서비스
                </a>
                <span>></span>
                <a href="#">
                    <i class="fas fa-clipboard"></i>
                    이용안내
                </a>
                <hr class="mb-4">
            </div>
		    <!-- section start -->
			<section class="section">
                <!-- main title -->
				<div class="main--title">
						<h1>이용 안내</h1>
                </div>
                <!-- 운영시간 안내 -->
                <div class="useinfo row">
                    <div class="icon"><img src="${root}imgs/infotime.png" alt="time"></div>
                    <div>
                        <h2 class="sub--title">운영시간</h2>
                        <h3 class="third--title">매일 10:00 ~ 21:00</h3>
                    </div>
               
                    <table class="table">
                        <tr>
                            <td>컴패니언은 연중 무휴로 운영됩니다.</td>
                        </tr>
                        <tr>
                            <td>모든 서비스는 100% 회원 예약제로 운영됩니다.</td>
                        </tr>
                        <tr>
                            <td>사전 입실 시 대기시간이 발생 할 수 있으니 양해해 주시기 바랍니다.</td>
                        </tr>
                    </table>
                </div>  
                
                <!-- 상담시간 안내 -->
                <div class="useinfo row">
                    <div class="icon"><img src="${root}imgs/infotalk.png" alt="time"></div>
                    <div>
                        <h2 class="sub--title">상담문의</h2>
                        <h3 class="third--title">매일 09:00 ~ 20:00</h3>
                    </div>
               
                    <table class="table">
                        <tr>
                            <td>컴패니언 TEL : 02) 123-0424</td>
                        </tr>
                        <tr>
                            <td>예약 및 상담은 상담시간 내에만 가능합니다.</td>
                        </tr>
                        <tr>
                            <td>비상 연락은 카카오톡 ID : Companion 친구추가 후 가능합니다.</td>
                        </tr>
                    </table>
                </div>    
                <!-- 안내사항 안내 -->
                <div class="useinfo row">
                    <div class="icon"><img src="${root}imgs/infochk.png" alt="time"></div>
                    <div>
                        <h2 class="sub--title">유의사항</h2>
                        <h3 class="third--title">이용 시 주의사항</h3>
                    </div>
               
                    <table class="table">
                        <tr>
                            <td>1년 이내 5가지 접종(종합, 코로나, 켄넬코프, 신종 인플루엔자, 광견병) 받지 않은 반려견은 입실이 제한됩니다.<br/>
                                * 접종기록은 접종병원명이 꼭 필요하므로 증빙 자료는 미리 준비해주세요.</td>
                        </tr>
                        <tr>
                            <td>1살 미만의 반려견인 경우 항체 검사가 필수 입니다.<br/>
                                (단, 1살 이상 시 재접종 기록 확인)</td>
                        </tr>
                        <tr>
                            <td>생리,건강문제 또는 공격성이 강해 타 고객의 이용에 피해가 되는 반려견 일 경우 입실이 제한됩니다.</td>
                        </tr>
                    </table>
                </div>    
            </section>
			<!-- section end -->
		</div>
		<!-- #container end -->
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