<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/admin/main.css">
    <link rel="stylesheet" href="${root }css/admin/notice.css">
    <!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	<title>Companion::호텔예약자 목록</title>
</head>
<body>
<!-- .wrapper [start] -->
<div class="wrapper">
	<!-- sidebar -->
	<jsp:include page="../common/admin_sidebar.jsp"></jsp:include>
	<!-- #content [start] -->
	<div id="content">
		<!-- nav [start] -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<!-- .container-fluid [start] -->
			<div class="container-fluid">
				<!-- menu toggle button [start] -->
			    <button type="button" id="sidebarCollapse" class="btn btn-jacaranda">
			        <i class="fas fa-align-left"></i>
			        <span>메뉴</span>
			    </button>
			    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
			        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			        aria-expanded="false" aria-label="Toggle navigation">
			        <i class="fas fa-align-justify"></i>
			    </button>
			    <!-- menu toggle button [end] -->
				<!-- top menu bar [start] -->
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			        <ul class="nav navbar-nav ml-auto">
			            <li class="nav-item">
			                <a class="nav-link active" href="${root }admin/reservation_list">예약관리 목록</a>
			            </li>
			        </ul>
			    </div>
			    <!-- top menu bar [end] -->
			</div>
			<!-- .container-fluid [end] -->
		</nav>
		<!-- nav [end] -->
		
		<!-- section [start] -->
		<section class="section">
			<div class="main--title">
				<h1>[Admin] 예약관리 목록</h1>
			</div>
				
			<div class="sub-group clearfix">
			<!-- 공지 등록 -->
				<!-- 검색창 -->
				<div class="search-group btn-group float--right">
					<select name="searchType" id="searchType">
						<option value="all">전체</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
						<option value="member">작성자</option>
					</select>
					<input type="text" name="keyword" id="keyword">
					<button name="search_Btn" id="search_Btn">검색</button>
				</div>
			</div>
			
			<table class="table table_layout">
			<colgroup>
        		<col class="col1">
        		<col class="col2">
        		<col class="col3">
        		<col class="col4">
        		<col class="col5">
        		<col class="col5">
        		<col class="col5">
    		</colgroup>
			<thead>
				<tr>
					<th scope="row">서비스</th>
					<th scope="row">회원이름</th>
					<th scope="row">체크인</th>
					<th scope="row">체크아웃</th>
					<th scope="row">품종</th>
					<th scope="row">나이</th>
					<th scope="row">특이사항</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
			</table>
		</section>
		<!-- section [end] -->
		
		<!-- pagination [start] -->
		<!-- pagination [end] -->
	</div>
	<!-- #content [end] -->
</div>
<!-- .wrapper [end] -->
</body>
</html>