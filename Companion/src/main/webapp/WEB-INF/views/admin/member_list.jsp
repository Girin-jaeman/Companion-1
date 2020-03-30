<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<c:url var="getList" value="/admin/member_list"></c:url> <!-- 페이지네이션을위한 현재 페이지경로 설정 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/admin/main.css">
    <!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	
	<title>Companion::회원 목록</title>
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
			    <!-- top menu bar [end] -->
			    
			</div>
			<!-- .container-fluid [end] -->
			
		</nav>
		<!-- nav [end] -->
		
		<!-- section [start] -->
		<section class="section">
			<div class="main--title">
				<h1>[Admin] 회원 목록</h1>
			</div>
			<!-- 검색창 -->
			<!-- <div>
				<input type="hidden" name="searchType" id="searchType" value="product">
				<input type="text" name="keyword" id="keyword">
				<button name="search_Btn" id="search_Btn">검색</button>
			</div> -->
				<h2>회원 목록</h2>
				<table class="table">
					<thead>
						<tr>
							<th>회원구분</th>
							<th>이름</th>
							<th>아이디</th>
							<th>일반전화</th>
							<th>휴대전화</th>
							<th>이메일</th>
							<th>우편번호</th>
							<th>기본주소</th>
							<th>상세주소</th>
						</tr>
					</thead>
				<tbody>
				<c:forEach items="${adminMemberList}" var="bean">
					<tr>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_grade }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_name }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_id }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_tel }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_phone }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_email }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_addr1 }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_addr2 }</a>
						</td>
						<td>
							<a href="${root }admin/member_detail?member_id=${bean.member_id}">${bean.member_addr3 }</a>
						</td>
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
		
	</div><!-- #content [end] -->
</div><!-- .wrapper [end] -->
		
		
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