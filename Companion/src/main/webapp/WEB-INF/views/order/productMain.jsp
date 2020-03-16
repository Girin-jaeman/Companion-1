<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/" var ="root"></c:url>
	<!DOCTYPE html>
	<html>
	
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Collapsible sidebar using Bootstrap 4</title>
	
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/home.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/main.css">
		<!-- Font Awesome JS -->
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	<style type="text/css">
		.product-grid{font-family:Raleway,sans-serif;text-align:center;padding:0 0 72px;border:1px solid rgba(0,0,0,.1);overflow:hidden;position:relative;z-index:1}
		.product-grid .product-image{position:relative;transition:all .3s ease 0s}
		.product-grid .product-image a{display:block}
		.product-grid .product-image img{width:100%;height:auto}
		.product-grid .pic-1{opacity:1;transition:all .3s ease-out 0s}
		.product-grid:hover .pic-1{opacity:1}
		.product-grid .pic-2{opacity:0;position:absolute;top:0;left:0;transition:all .3s ease-out 0s}
		.product-grid:hover .pic-2{opacity:1}
		.product-grid .social{width:150px;padding:0;margin:0;list-style:none;opacity:0;transform:translateY(-50%) translateX(-50%);position:absolute;top:60%;left:50%;z-index:1;transition:all .3s ease 0s}
		.product-grid:hover .social{opacity:1;top:50%}
		.product-grid .social li{display:inline-block}
		.product-grid .social li a{color:#fff;background-color:#333;font-size:16px;line-height:40px;text-align:center;height:40px;width:40px;margin:0 2px;display:block;position:relative;transition:all .3s ease-in-out}
		.product-grid .social li a:hover{color:#fff;background-color:#ef5777}
		.product-grid .social li a:after,.product-grid .social li a:before{content:attr(data-tip);color:#fff;background-color:#000;font-size:12px;letter-spacing:1px;line-height:20px;padding:1px 5px;white-space:nowrap;opacity:0;transform:translateX(-50%);position:absolute;left:50%;top:-30px}
		.product-grid .social li a:after{content:'';height:15px;width:15px;border-radius:0;transform:translateX(-50%) rotate(45deg);top:-20px;z-index:-1}
		.product-grid .social li a:hover:after,.product-grid .social li a:hover:before{opacity:1}
		.product-grid .product-discount-label,.product-grid .product-new-label{color:#fff;background-color:#ef5777;font-size:12px;text-transform:uppercase;padding:2px 7px;display:block;position:absolute;top:10px;left:0}
		.product-grid .product-discount-label{background-color:#333;left:auto;right:0}
		.product-grid .rating{color:#FFD200;font-size:12px;padding:12px 0 0;margin:0;list-style:none;position:relative;z-index:-1}
		.product-grid .rating li.disable{color:rgba(0,0,0,.2)}
		.product-grid .product-content{background-color:#fff;text-align:center;padding:12px 0;margin:0 auto;position:absolute;left:0;right:0;bottom:-27px;z-index:1;transition:all .3s}
		.product-grid:hover .product-content{bottom:0}
		.product-grid .title{font-size:13px;font-weight:400;letter-spacing:.5px;text-transform:capitalize;margin:0 0 10px;transition:all .3s ease 0s}
		.product-grid .title a{color:#828282}
		.product-grid .title a:hover,.product-grid:hover .title a{color:#ef5777}
		.product-grid .price{color:#333;font-size:17px;font-family:Montserrat,sans-serif;font-weight:700;letter-spacing:.6px;margin-bottom:8px;text-align:center;transition:all .3s}
		.product-grid .price span{color:#999;font-size:13px;font-weight:400;text-decoration:line-through;margin-left:3px;display:inline-block}
		.product-grid .add-to-cart{color:#000;font-size:13px;font-weight:600}
		@media only screen and (max-width:990px){.product-grid{margin-bottom:30px}
		}
	</style>		
		
		
		
	</head>
	<body>
	

		<div class="wrapper">
			 <!-- Sidebar  -->
		<jsp:include page="../common/sidebar.jsp"/>
	
			<!-- Page Content  -->
			<div id="content">
	
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
		<!-- content -->
		<div class="container">
			  <div class="btn-group" role="group">
			    <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			      카테고리
			    </button>
			    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
			      <a class="dropdown-item" href="#">사료</a>
			      <a class="dropdown-item" href="#">간식</a>
			      <a class="dropdown-item" href="#">외출</a>
			      <a class="dropdown-item" href="#">미용/목욕</a>
			      <a class="dropdown-item" href="#">하우스</a>
			    </div>
				<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
				  <button type="button" class="btn btn-secondary">추천순</button>
				  <button type="button" class="btn btn-secondary">판매인기순</button>
				  <button type="button" class="btn btn-secondary">낮은 가격순</button>
				  <button type="button" class="btn btn-secondary">높은 가격순</button>
				  <button type="button" class="btn btn-secondary">상품평순</button>
				  <button type="button" class="btn btn-secondary">등록일순</button>
				</div>
			  </div>
			  
			  <!-- 썸네일 -->
			  
			   <div class="row">
       
  
			        <%--    <% for(int i=0;i<20;i++){ %>  --%>
			<c:forEach items="${productlist }" var="bean"> 
			        <div class="col-md-3 col-sm-6"> 
			            <div class="product-grid">
			                <div class="product-image">
			                    <a href="productDetail/${bean.product_id }">
			                        <img class="pic-1" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-3.jpg">
			         <!--                <img class="pic-2" src="http://bestjquery.com/tutorial/product-grid/demo9/images/img-4.jpg"> -->
			                    </a>
			                <!--     <ul class="social">
			                        <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
			                        <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
			                        <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
			                    </ul> -->
			               <!--      <span class="product-new-label">Sale</span>
			                    <span class="product-discount-label">50%</span> -->
			                </div>
			                <ul class="rating">
			                <!-- 별갯수 알려주는곳. -->
			                    <li class="fa fa-star"></li>
			                    <li class="fa fa-star"></li>
			                    <li class="fa fa-star"></li>
			                    <li class="fa fa-star"></li>
			                    <li class="fa fa-star"></li>
			                </ul>
			                <div class="product-content">
			                    <h3 class="title"><a href="productDetail/${bean.product_id }"> ${bean.product_thumb }</a></h3>
			         <%--            <h3 class="title"><a href="#"> ${productlist.product_thumb } 나오는지 확인</a></h3>
			                    <h3 class="title"><a href="#"> ${productlist.product_option1 } 나오는지 확인</a></h3> --%>
			         			<!-- 리스트로 넘기면 하나씩은 못받아옴 FOrEach를 써야 하는가봄... -->
			                    <h3 class="title"><a href="productDetail/${bean.product_id }"> ${bean.product_name }</a></h3>
			                    <div class="price">$5.00
			                        <span>$10.00</span>
			                    </div>
			                    <a class="add-to-cart" href="">+ Add To Cart</a>
			                </div>
			            </div>
			        </div>
       		 </c:forEach>
		<%-- 	        <% } %> --%>
	
  
    </div>
			  <!-- 썸네일 쇼쇼핑멀 끝 -->
			  
			  <!-- 페이징 -->
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
			  
			  <!-- 페이징 끝 -->
		</div><!-- container end  -->
		

		<!-- content -->
			</div>
		</div>
	
		<!-- jQuery -->
		<script src="${root}js/jquery-1.12.4.js"></script>
		<!-- Popper.JS -->
		<script src="${root}js/bootstrap/popper.js"></script>
		<!-- Bootstrap JS -->
		<script src="${root}js/bootstrap/bootstrap.js"></script>

		<script type="text/javascript">
			$(document).ready(function () {
				$('#sidebarCollapse').on('click', function () {
					$('#sidebar').toggleClass('active');
				});
			});
		</script>
	</body>
	
	</html>