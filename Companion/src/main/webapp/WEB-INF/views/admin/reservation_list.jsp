<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:url value="/" var="root"></c:url>
<c:url var="getList" value="/admin/reservation_list"></c:url> <!-- 페이지네이션을위한 현재 페이지경로 설정 -->
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
    <link rel="stylesheet" href="${root }css/admin/reserv.css">
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
        		<col class="col6">
        		<col class="col7">
    		</colgroup>
			<thead>
				<tr>
					<th scope="row">서비스</th>
					<th scope="row">회원이름</th>
					<th scope="row">체크인 날짜</th>
					<th scope="row">체크아웃 날짜</th>
					<th scope="row">품종</th>
					<th scope="row">나이</th>
					<th scope="row">작성일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${adminReservationList }" var="bean">
				<tr>
					<td>
						<c:choose>
							<c:when test="${bean.service_id =='0' }">
							<div>호텔&데이케어</div>
							</c:when>
							<c:when test="${bean.service_id =='1' }">
							<div>유치원</div>
							</c:when>
							<c:when test="${bean.service_id =='2' }">
							<div>독파크</div>
							</c:when>
							<c:when test="${bean.service_id =='3' }">
							<div>아카데미</div>
							</c:when>
							<c:when test="${bean.service_id =='4' }">
							<div>그루밍&스파</div>
							</c:when>
							<c:when test="${bean.service_id =='5' }">
							<div>스튜디오</div>
							</c:when>
							<c:when test="${bean.service_id =='6' }">
							<div>메디컬센터</div>
							</c:when>
							<c:when test="${bean.service_id =='7' }">
							<div>스페셜케어</div>
							</c:when>
						</c:choose>
					</td>
					<td>${bean.member_id }</td>
					<td>${bean.reserve_checkin }</td>
					<td>${bean.reserve_checkout }</td>
					<td>${bean.reserve_dogtype }</td>
					<td>${bean.reserve_dogage }</td>
					<td>${bean.reserve_date }</td>
				</tr>
				
			</c:forEach>
			</tbody>
			</table>
		</section>
		<!-- section [end] -->
		
		<!-- pagination [start] -->
		<jsp:include page="../common/pagination.jsp">
			<jsp:param value="${search.prev }" name="prev"/>
			<jsp:param value="${search.next }" name="next"/>
			<jsp:param value="${search.page }" name="page"/>
			<jsp:param value="${search.range }" name="range"/>
			<jsp:param value="${search.rangeSize }" name="rangeSize"/>
			<jsp:param value="${search.startPage }" name="startPage"/>
			<jsp:param value="${search.endPage }" name="endPage"/>
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

<script type="text/javascript">
	// 메뉴 토글 버튼
	$(document).ready(function () {
	    $('#sidebarCollapse').on('click', function () {
	        $('#sidebar').toggleClass('active');
	    });
	});

</script>
</body>
</html>