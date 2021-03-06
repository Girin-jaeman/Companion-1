<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
	<!-- Our Custom CSS -->
	<link rel="stylesheet" href="${root}css/main.css">
	<link rel="stylesheet" href="${root}css/notice/bbs.css">
	<!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <title>Companion::이벤트::상세보기</title>
</head>
<body>
<!-- .wrapper [start] -->
<div class="wrapper">
	<!-- Sidebar -->
	<jsp:include page="../common/sidebar.jsp"/>
	<!-- #content [start] -->
	<div id="content">
	<!-- nav [start] -->
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
			                <a class="nav-link active" href="${root }event/">이벤트</a>
			            </li>
			            <li class="nav-item">
			                <a class="nav-link" href="${root}faq/">FAQ</a>
			            </li>
			        </ul>
			    </div>
			</div>
		</nav>
		<!-- nav [end] -->
		<!-- .categories [start] -->
		<div class="categories">
			<a href="#homeSubmenu">
            	<i class="fas fa-clipboard-list"></i>
                알림
            </a>
            <span>></span>
            <a href="#">
                이벤트
            </a>
            <hr class="mb-4">
        </div>
		<!-- .categories [end] -->
		<!-- .section [start] -->
		<section class="section">
			<!-- main title -->
			<div class="main--title">
				<h1>이벤트</h1>
			</div>
			<hr class="mb-4">
			<table>
				<thead>
					<tr>
						<th><span>[제목]&nbsp;</span><span>${bean.article_title }</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><span>${bean.member_id }</span><span>|</span><span>${bean.article_date }</span><span>조회수 ${bean.article_count }</span></td>
					</tr>
					<tr>
						<td>
						${bean.article_content }
						<img alt="원본이미지" src="<spring:url value='${noticeSelectOne.article_image }'/>"/>
						</td>
					</tr>
				</tbody>
			</table>
			<hr class="mb-4">	
			<a class="btn btn-dark" id="btn--list" href="${root}event/list">목록</a>
		</section>
		<!-- .section [end] -->
		<!-- #footer [start] -->
		<div id="footer">
		    <hr class="mb-2">
		    <footer class="companion-footer">
		            <div class="paragraph-group">
		                <p>상호:COMPANION | 대표 : 최길동 | 개인정보보호관리책임자 : 최길동 | 전화 : 02-000-000 ㅣ 이메일 : <a href="mailto:companion@companion.com" target="_top">companion@companion.com</a></p>
		                <p>주소:서울특별시 서초구 강남대로 459 (서초동, 백암빌딩) 3층 | 사업자등록번호 : 000-00-00000 | 통신판매 : 2020-서울강남-0000</p>
		                <p>호스팅제공자:(주)Companion</p>
		                <br/>
		                <a href="#">[홈페이지 이용약관]</a> <a href="#">[개인정보취급방침]</a><br/>
		                <p>Copyright ⓒ 2020 COMPANION All rights reserved.</p>
		            </div>
		    </footer>
		</div>
		<!-- #footer [end] -->
	</div>
	<!-- #content [end] -->
</div>
<!-- .wrapper [end] -->
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    <!-- MAIN JS -->
    <script src="${root }js/main.js"></script>
</body>
</html>