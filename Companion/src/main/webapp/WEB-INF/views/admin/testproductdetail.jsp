<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<li><a href="#">상품소감</a></li>
			<li><a href="#">유저목록</a></li>
		</ul>
	</aside>
	<h2>상품 상세</h2>
	<form role="form" method="post" autocomplete="off" >
		 <label>1차 분류</label>
		 <span class="category1"></span>
		 
		 <label>2차 분류</label>
		 <span class="category2">${adminProductOne.category_id }</span>
 		 
 		 <input type="hidden" name="product_id" value="${adminProductOne.product_id }"/>
 		 
		<div class="inputArea">
		 <label for="product_name">상품번호</label>
		 <span>${adminProductOne.product_id }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_price">상품가격</label>
		 <span><fmt:formatNumber value="${adminProductOne.product_price}" pattern="###,###,###"/></span>
		</div>
		
		<div class="inputArea">
		 <label for="product_stock">상품수량</label>
		 <span>${adminProductOne.product_stock }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_name">상품명</label>
		 <span>${adminProductOne.product_name }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_content">상품소개</label>
		 <span>${adminProductOne.product_content }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_date">상품등록일</label>
		 <span><fmt:formatDate value="${adminProductOne.product_date}" pattern="yyy-MM-dd"/></span>
		</div>
		
		<div>
			<label for="img">원본이미지</label>
			<img alt="원본이미지" src="${pageContext.request.contextPath}${adminProductOne.product_image }">
		</div>
		<div>
			<label for="img">썸네일</label>
			<img alt="썸네일" src="${pageContext.request.contextPath}${adminProductOne.product_thumb }">
		</div>
		
		<div class="inputArea">
		 <button type="button" id="modify_Btn" class="btn btn-warning">수정</button>
		 <button type="button" id="delete_Btn" class="btn btn-danger">삭제</button>
		</div>
	</form>
		</section>
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
    	// edit button
   		 $("#modify_Btn").click(function(){
		  location.href = ${root}+"admin/testproductedit/" + ${adminProductOne.product_id};
		 });

    	// delete button
    	var formObj = $("form[role='form']");
   		$("#delete_Btn").click(function(){
   		 var con = confirm("정말로 삭제하시겠습니까?");
   		 if(con) {      
   		  formObj.attr("action", "${root}admin/testproductdelete/${adminProductOne.product_id}");
   		  formObj.submit();
   		 }
   		});
   		
   		/* menu toggle button */
   		$(document).ready(function () {
   		    $('#sidebarCollapse').on('click', function () {
   		        $('#sidebar').toggleClass('active');
   		    });
   		});
    </script>
    
</body>
</html>