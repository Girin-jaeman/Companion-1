<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<c:url var="getList" value="/admin/notice_list"></c:url> <!-- 페이지네이션을위한 현재 페이지경로 설정 -->
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

	<title>Companion::공지사항 목록</title>
</head>
<body>
<!-- .wrapper [start] -->
<div class="wrapper">
	<!-- Sidebar -->
	<jsp:include page="../common/admin_sidebar.jsp"/>
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
			                <a class="nav-link active" href="${root }admin/notice_list">공지사항 목록</a>
			            </li>
			            <li class="nav-item">
			                <a class="nav-link" href="${root }admin/notice_add">공지사항 등록</a>
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
				<h1>[Admin] 공지사항 목록</h1>
			</div>
			<div class="sub-group clearfix">
			<!-- 공지 등록 -->
			<a class="btn btn-dark insertbtn float--left" role="button" href="${root }admin/notice_add">글 등록</a>
			
			<!-- 검색창 -->
			<div class="search-group float--right">
				<input type="hidden" name="searchType" id="searchType" value="notice">
				<input type="text" name="keyword" id="keyword">
				<button name="search_Btn" id="search_Btn">검색</button>
			</div>
			</div>
			<table class="table table_layout ">
			<colgroup>
        		<col class="col1">
        		<col class="col2">
        		<col class="col3">
        		<col class="col4">
        		<col class="col5">
        		<col class="col6">
        		<col class="col7">
    		</colgroup>
			<thead>
				<tr>
					<th scope="row">글번호</th>
					<th scope="row">작성자</th>
					<th scope="row">제목</th>
					<th scope="row">내용</th>
					<th scope="row">날짜</th>
					<th scope="row">조회수</th>
					<th scope="row">이미지</th>
				</tr>
			</thead>
			<tbody>
			<!-- forEach start -->
			<c:forEach items="${adminNoticeList }" var="bean">
			<tr>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }">${bean.article_id }</a></td>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }">${bean.member_id }</a></td>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }">${bean.article_title }</a></td>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }">${bean.article_content }</a></td>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }">${bean.article_date }</a></td>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }">${bean.article_count }</a></td>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }">${bean.article_image }</a></td>
			<td><a href="${root }admin/notice_detail?article_id=${bean.article_id }"><%-- ${bean.article_image } --%>
				<img width=40px height=40px alt="썸네일" src="<spring:url value='${bean.article_thumb }'/>"/>
				</a>
			</td>
			</tr>
			</c:forEach>
			</tbody>
			</table>
		</section>
		<!-- section [end] -->
		
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
<script type="text/javascript">

</script>
</body>
</html>