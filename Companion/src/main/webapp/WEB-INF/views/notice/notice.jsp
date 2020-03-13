<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/" var="root"></c:url>
<c:url var="getList" value="/notice/list">></c:url> <!-- 페이지네이션을위한 현재 페이지경로 설정 -->
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
	<!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	<!-- jQuery -->
	<script src="${root}js/jquery-1.12.4.js"></script>
	<!-- Popper.JS -->
	<script src="${root}js/bootstrap/popper.js"></script>
	<!-- Bootstrap JS -->
	<script src="${root}js/bootstrap/bootstrap.js"></script>
    <title>Companion::컴패니언::공지사항</title>
</head>
<body>
<div class="wrapper">
	<!-- Sidebar -->
	<jsp:include page="../common/sidebar.jsp"/>
	<!-- Content [start] -->
	<div id="content">
		<!-- Navbar [start] -->
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
		<!-- Navbar [end] -->
		<!-- Section [start] -->
		<section class="section">
			<h1>공지사항</h1>
			<span>총 ${total }건</span>
			<table class="table table-striped">
	            <thead>
	                <tr>
	                    <th>글번호</th>
	                    <th>작성일</th>
	                    <th>제목</th>
	                    <th>조회수</th>
	                </tr>
	            </thead>
	            <tbody>
	            <c:forEach items="${list }" var="bean">
	                <tr>
	                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_id }</a></td>
	                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_date }</a></td>
	                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_title }</a></td>
	                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_cnt }</a></td>
	                </tr>
	            </c:forEach>
	            </tbody>
	        </table>
		</section>
		<!-- Section [end] -->
	    <!-- pagination [start] -->
		<jsp:include page="../common/pagination.jsp">
			<jsp:param value="${pagination.prev }" name="prev"/>
			<jsp:param value="${pagination.next }" name="next"/>
			<jsp:param value="${pagination.page }" name="page"/>
			<jsp:param value="${pagination.range }" name="range"/>
			<jsp:param value="${pagination.rangeSize }" name="rangeSize"/>
			<jsp:param value="${pagination.startPage }" name="startPage"/>
			<jsp:param value="${pagination.endPage }" name="endPage"/>
		</jsp:include>
		<!-- pagination [end] -->
	</div>
	<!-- Content [end] -->
</div>
</body>
</html>