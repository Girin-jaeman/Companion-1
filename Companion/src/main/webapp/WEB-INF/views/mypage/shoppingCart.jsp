<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>컴패니언::Companion</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/main.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
        integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
        integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
        crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
        
        <!-- Sidebar  -->
		<jsp:include page="../common/sidebar.jsp"/>

        <!-- Page Content  -->
        <div id="content">
            <div id="container">

	            <nav class="navbar navbar-expand-lg navbar-light bg-light">
	                <div class="container-fluid">
	
	                    <button type="button" id="sidebarCollapse" class="btn btn-info">
	                        <i class="fas fa-align-left"></i>
	                        <span>메뉴</span>
	                    </button>
	                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
	                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
	                        aria-expanded="false" aria-label="Toggle navigation">
	                        <i class="fas fa-align-justify"></i>
	                    </button>
	                    
	                     <div class="collapse navbar-collapse" id="navbarSupportedContent">
	                        <c:choose>
	                            <c:when test="${sessionScope.memberVo.member_id==null }">
	                                <script>
	                                	window.location.href="login";
	                                </script>
	                            </c:when>
	                            <c:otherwise>
	                                <ul class="nav navbar-nav ml-auto">
	                                    <p>${sessionScope.memberVo.member_name }님이 로그인 중입니다.</p>
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="#">주문내역</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="${root }mypagereserve">예약조회</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link active" href="${root }mypage/mycart">장바구니</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="${root }mypagequestion">문의조회</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="${root }mypagechk">나의정보</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="${root }logout">로그아웃</a>
	                                    </li>
	                                </ul>
	                            </c:otherwise>
	                            
	                        </c:choose>
	                    </div>
	                </div>
	            </nav>
	            <!-- .categories start -->
	            <div class="categories">
                <a href="#homeSubmenu">
                	<i class="fas fa-shopping-cart"></i>
                    장바구니
                </a>
                <hr class="mb-4">
            	</div>
            	<!-- .categories start -->
            	
	          	<section class="section">
                <!-- .title-group start-->
	                <div class="title-group clearfix">
	                    <h1 class="main--title float--left">장바구니</h1>
	                    <ul class="route float--right">
	                        <li class="active">
	                            01 장바구니
	                            <span>></span>
	                        </li> 
	                        <li>
	                            02 주문서작성/결제
	                            <span>></span>
	                        </li> 
	                        <li>03 주문완료</li> 
	                    </ul>
	                </div><!-- .title-group end-->
	                <!-- 장바구니 담긴 상품 테이블 -->
	                <table class="table">
	                    <tr>
	                        <th><input type="checkbox" name="chk" value="product"></th>
	                        <th>상품/옵션 정보</th>
	                        <th>수량</th>
	                        <th>상품금액</th>
	                        <th>합계금액</th>
	                        <th>배송비</th>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox" name="chk" value="product"></td>
	                        <td>집에갈수있는휴가권</td>
	                        <td><span>1개</span>
	                            <a class="btn"href="#" role="button">옵션/수량변경</a>
	                        </td>
	                        <td>2,000원</td>
	                        <td>2,000원</td>
	                        <td>기본배송비<br/>2,500원</td>
	                    </tr>
	                </table>
	                <!-- table end -->
	                <a href="#"><span><< 쇼핑계속하기</span></a>
	                <!-- 주문금액 합계 start -->
	                <div class="coast clearfix">
	                    <ul class="coast-group float--right">
	                        <li>총1개의 상품금액<br/>2,000원</li>
	                        <li><i class="fas fa-plus"></i></li>
	                        <li>배송비<br/>2,500원</li>
	                        <li><i class="fas fa-equals"></i></li>
	                        <li>합계<br/>4,500원</li>
	                    </ul>
	                </div>
	                <!-- 주문금액 합계 end-->
	                <!-- 버튼그룹 start-->
	                <div class="btn--group clearfix">
	                    <div class="selectP float--left">
	                        <button class="">선택 상품 삭제</button>
	                        <button class="">선택 상품 찜</button>
	                    </div>
	                    <div class="orderP float--right">
	                        <button class="">선택 상품 주문</button>
	                        <button class="btn-order">전체 상품 주문</button>
	                    </div>
	                </div>
	                <!-- 버튼그룹 end-->
	                <div class="chk-non">
	                    <i class="fas fa-exclamation-circle"></i>
	                    <span>주문서 작성단계에서 할인/마일리지 적용을 하실 수 있습니다</span>
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