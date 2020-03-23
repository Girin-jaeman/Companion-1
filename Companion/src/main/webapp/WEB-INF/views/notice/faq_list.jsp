<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<c:url var="getList" value="/faq/list">></c:url> <!-- 페이지네이션을위한 현재 페이지경로 설정 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <title>컴패니언::Companion::FAQ</title>
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
								<a class="nav-link" href="${root }notice/">공지사항</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${root }event/">이벤트</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${root}faq/">FAQ</a>
							</li>
						</ul>
			        </div>
			    </div>
			</nav>
			<div class="faq_group">
				<ul class="faq_list board_slide">
				   <c:forEach items="${list }" var="bean" varStatus="status">
					   <li class="item">
					     <div class="tit"><a href="#"><strong>Q</strong>${bean.article_title }</a></div>
					     <div class="hidden">
					       <div class="txt"><strong>A</strong>${bean.article_content }</div>
					     </div>
					   </li>
				   </c:forEach>
				</ul>
			</div>
		</div>
		<!-- Footer  -->
			<jsp:include page="../common/footer.jsp"/>
		<!-- Footer end -->
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
    <!-- MAIN JS -->
    <script src="${root }js/main.js"></script>
    <script type="text/javascript">
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