<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>컴패니언::Companion::FAQ</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/main.css">
    <link rel="stylesheet" href="${root }css/home.css">
    <link rel="stylesheet" href="${root }css/notice/main.css">
    
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
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item">
								<a class="nav-link" href="#">공지사항</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">이벤트</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">FAQ</a>
							</li>
						</ul>
			        </div>
			    </div>
			</nav>
			<div class="faq_group">
				<ul class="faq_list board_slide">
				   <li class="item">
				     <div class="tit"><a href="#"><strong>Q</strong>회원가입은 어떻게하나요?</a></div>
				     <div class="hidden">
				       <div class="txt">
				         <strong>A</strong>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				       </div>
				     </div>
				   </li>
				   <li class="item">
				     <div class="tit"><a href="#"><strong>Q</strong>회원탈퇴는 어떻게하나요?</a></div>
				     <div class="hidden">
				       <div class="txt">
				         <strong>A</strong>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				       </div>
				     </div>
				   </li>
				   <li class="item">
				     <div class="tit"><a href="#"><strong>Q</strong>결제창이 켜지지않아요</a></div>
				     <div class="hidden">
				       <div class="txt">
				         <strong>A</strong>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				       </div>
				     </div>
				   </li>
				   <li class="item">
				     <div class="tit"><a href="#"><strong>Q</strong>환불을 하고싶어요</a></div>
				     <div class="hidden">
				       <div class="txt">
				         <strong>A</strong>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				       </div>
				     </div>
				   </li>
				   <li class="item">
				     <div class="tit"><a href="#"><strong>Q</strong>주문취소를 하고싶어요</a></div>
				     <div class="hidden">
				       <div class="txt">
				         <strong>A</strong>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				       </div>
				     </div>
				   </li>
				   <li class="item">
				     <div class="tit"><a href="#"><strong>Q</strong>호텔예약취소를 하고싶어요</a></div>
				     <div class="hidden">
				       <div class="txt">
				         <strong>A</strong>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				       </div>
				     </div>
				   </li>
				   <li class="item">
				     <div class="tit"><a href="#"><strong>Q</strong>집에가고싶어요</a></div>
				     <div class="hidden">
				       <div class="txt">
				         <strong>A</strong>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				         그런건 없습니다.<br/>
				       </div>
				     </div>
				   </li>
				</ul>
			</div>
		</div>
	</div>
</div>
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- jQueryEasing -->
    <script src="${root }js/jquery.easing.1.3.js"></script>
    <!-- FAQ Slide -->
    <script src="${root }js/boardSlide.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
     // FAQ Slide
        $('.faq_list').boardSlide({
          speed : 300,
          btn : $('.faq_list .tit'),
          current : 0, // 초기 리스트 선택  , 0 = 비활성화
          openType : true,  // true = 한개만 열리기
          ease : 'easeOutCirc'
        });
    </script>
</body>
</html>