<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:url value="/" var="root"></c:url>
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
	
	<title>Insert title here</title>
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
			<h1>관리자 페이지</h1>
			<aside>
			<ul>
				<li><a href="${root}admin/testproductadd">상품등록</a></li>
				<li><a href="${root}admin/testproductlist">상품목록</a></li>
			</ul>
			</aside>
			
			<!-- 검색창 -->
			<div>
				<select name="searchType" id="searchType">
					<option value="">구분?</option>
					<option value="category">카테고리명</option>
					<option value="product">상품명</option>
				</select>
				<input type="text" name="keyword" id="keyword">
				<button name="search_btn" id="search_btn">검색</button>
			</div>
			
				<h2>상품 목록</h2>
				<table class="table">
					<thead>
						<tr>
							<th>이미지</th>
							<th>이름</th>
							<th>카테고리</th>
							<th>가격</th>
							<th>수량</th>
							<th>등록날짜</th>
							<th>좋아요</th>
							<th>옵션1</th>
							<th>옵션2</th>
							<th>옵션3</th>
							<th>옵션4</th>
							<th>옵션5</th>
						</tr>
					</thead>
				<tbody>
				<c:forEach items="${adminProductList}" var="bean">
					<tr>
						<td>
							<img src="<spring:url value='${bean.product_thumb }'/>"/>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_name}</a>
						</td>
						<td>
							<c:choose>
								<c:when test="${bean.category_refid == '0' }">
									<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.category_name}</a>
								</c:when>
								<c:when test="${bean.category_refid != '0' }">
									<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.category_refidname} - ${bean.category_name}</a>
								</c:when>
							</c:choose>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">
							<fmt:formatNumber value="${bean.product_price}" pattern="###,###,###"/>
							</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_stock}</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">
							<fmt:formatDate value="${bean.product_date}" pattern="yyy-MM-dd"/>
							</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.like_sum }</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_option1 }</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_option2 }</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_option3 }</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_option4 }</a>
						</td>
						<td>
							<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_option5 }</a>
						</td>
					</tr>   
				</c:forEach>
				</tbody>
			</table>
		</section>
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

	// 검색 버튼
	$("#search_Btn").click(function(e){
		e.preventDefault();
		var url = "${pageContext.request.contextPath}/board/getBoardList";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		location.href = url;
		console.log(url);
	});	

</script>
	
</body>
</html>