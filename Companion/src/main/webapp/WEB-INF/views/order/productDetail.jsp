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
	
		<!-- Font Awesome JS -->
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

	</head>
	
	<body>
	
		<div class="wrapper">
			<!-- Sidebar  -->
			<nav id="sidebar">
				<div class="sidebar-header">
					<h3>Bootstrap Sidebar</h3>
					<strong>BS</strong>
				</div>
	
				<ul class="list-unstyled components">
					<li class="active">
						<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
							<i class="fas fa-home"></i>
							Home
						</a>
						<ul class="collapse list-unstyled" id="homeSubmenu">
							<li>
								<a href="#">Home 1</a>
							</li>
							<li>
								<a href="#">Home 2</a>
							</li>
							<li>
								<a href="#">Home 3</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-briefcase"></i>
							About
						</a>
						<a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
							<i class="fas fa-copy"></i>
							Pages
						</a>
						<ul class="collapse list-unstyled" id="pageSubmenu">
							<li>
								<a href="#">Page 1</a>
							</li>
							<li>
								<a href="#">Page 2</a>
							</li>
							<li>
								<a href="#">Page 3</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-image"></i>
							Portfolio
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-question"></i>
							FAQ
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-paper-plane"></i>
							Contact
						</a>
					</li>
				</ul>
	
				<ul class="list-unstyled CTAs">
					<li>
						<a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">Download source</a>
					</li>
					<li>
						<a href="https://bootstrapious.com/p/bootstrap-sidebar" class="article">Back to article</a>
					</li>
				</ul>
			</nav>
	
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
		</div><!-- container end  -->
		
		
		
		
		<!-- content start -->
		<div class="container">
			<div class="row">
				<div class="col">  <!-- 이미지 반 글 반 먹고 나머지는 밑에 푸터처럼. -->
					<img src="${root }imgs/shopping/dogTestImage.jpg" class="img-fluid" alt="Responsive image">
				</div>
				<div class="col">
					<!--  상품 정보 -->
				<div class="page-header">
					<h1>[ ${productDetailOne.prdt_name } ] 상품 번호 ${productDetailOne.prdt_id }</h1>
					<h3>상품 설명 기타 등등등등등 DB의 Product table 의 상품 설명 컬럼에서 따올 것.</h3>
				</div>
					<div class="row">
						<div class="col-sm-4">배송비</div>					
						<div class="col-sm-8">2,500원 (5만원이상 구매 시 무료)</div>
						<div class="col-sm-8">재 고 </div>
						<div class="col-sm-4">${productDetailOne.prdt_stock }</div>					
						<div class="col-sm-4">옵션</div>					
						<div class="col-sm-8">OPTION</div>
						<div class="col-sm-8">가격</div>
						<div class="col-sm-4">${productDetailOne.prdt_price }</div>					
						<div class="col-sm-5">
							<button>구매하기</button>
						</div>
						<div class="col-sm-5">
							<button type="button" class="btn-btn-primary" id="shoppingCart" data-toggle="modal" data-target="#exacmpleModalScrollable">장바구니 담기</button>
						</div>
						<div class="col-sm-2">
							<button>찜하기!</button>
						</div>
					</div>
					<div class="row">
						<!-- nav bar 넣자 상품설명 이용후기 문의하기 -->
						<div class="col-sm-4">
						<button type="button" class="btn btn-primary">
						  상품설명
						</button>
						</div>
						<div class="col-sm-4">
						<button type="button" class="btn btn-primary">
						<a href="#">이용후기 <span class="badge badge-light">87</span></a>
						</button>
						</div>
						<div class="col-sm-4">
						<button type="button" class="btn btn-primary">
						  문의하기 
						</button>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 후기 -->
			<hr class="mb-2">
		<div class="row">	<!-- 테이블로 넣자  -->
						<div class="col-sm-2"><h3>이용후기 0,0000 건</h3></div>	
						<h5><button>최신순</button></h5>
						<h5><button>평점 높은 순</button></h5>
						<h5><button>평점 낮은 순</button></h5>
		</div>	
		<div class="row">	<!-- 테이블로 넣자  -->
						<div class="col-sm-3"><h5>아이디(member_id)</h5></div>	
						<div class="col-sm-2"><h5>★★★★☆</h5></div>	
						<div class="col-sm-2"><h5>날짜 (후기작성date)</h5></div>	
						<div class="col-sm-3"><h5>구매상품 : (prdt_name)</h5></div>	
						<div class="col-sm-2"><h5>옵션 (prdt_option)</h5></div>	
		</div>	
			<div class="row">
				<h5>//////////저렴하고 값싸고 아주 cheap 한 price에 좋은 product를 get했씁니다 여러분도 이 사이트에서 구매하시고 반려견과 행복한 생활을 하시길 바라며 이 글을 씁니다 아주 만족스럽고 환상적인 물건입니다. 김진우 올림. ////////////////</h5>  이미지 사이즈 90 X 90
				
				
				
			</div>
		
		
		
			<!-- 후기글 -->
			<!-- 문의글 -->
			<hr class="mb-2">
		<div class="row">	<!-- 테이블로 넣자  -->
				<div class="col-sm-3"><h4>문의하기</h4></div>
				<div class="col-sm-9"><h4></h4></div>
				<!--  -->
				<div class="col-sm-3"><button>문의 작성하기</button></div>
				<div class="col-sm-1"></div>
				<div class="col-sm-4"><button>내가 작성한 글 보기(스위치 버튼)</button></div>
				<div class="col-sm-4"></div>
				<!--  -->
				<div class="col-sm-6"> 구매하시려는 상품에 대해 궁금하신 점이 있으신 경우 문의 해 주세요</div>
				<div class="col-sm-6"></div>
				<table class="table">
					<thead></thead>
					<tbody>
							<tr>
								<td>답변 상태</td>
								<td></td>
								<td>제목</td>
								<td></td>
								<td>작성자</td>
								<td>작성일</td>
							</tr>
						<%-- 	<c:forEach items="${review }" var="bean"></c:forEach> --%>
							<tr>
								<td>답변 대기</td>
								<td></td>
								<td>문의 제목1</td>
								<td></td>
								<td>작성자 아이디</td>
								<td>작성일</td>
							</tr>
							<tr>
								<td>답변 완료</td>
								<td></td>
								<td>문의 제목2</td>
								<td></td>
								<td>작성자 아이디</td>
								<td>작성일</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>문의 내용</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>문의 내용</td>
								<td>관리자</td>
								<td>작성일</td>
							</tr>
							<tr>
								<td>답변 대기</td>
								<td></td>
								<td>비밀글입니다.</td>
								<td></td>
								<td>작성자 아이디</td>
								<td>작성일</td>
							</tr>
					</tbody>
				</table>
		</div>	

			
			<!-- 문의글 -->


		</div><!-- content end -->
		
		<!-- modal 장바구니! start -->

		<!-- Modal -->
			<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">장바구니에 담기</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
		<%-- 	        ${productDetailOne.prdt_name }이 장바구니에 담겼습니다. --%>
			        장바구니로 이동할까요?
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-primary">확인</button>
			      </div>
			    </div>
			  </div>
			</div>
		<!-- modal 장바구니! end -->
			</div>
		</div>
	
		<!-- jQuery -->
		<script src="${root}js/jquery-1.12.4.js"></script>
		<!-- Popper.JS -->
		<script src="${root}js/bootstrap/popper.js"></script>
		<!-- Bootstrap JS -->
		<script src="${root}js/bootstrap/bootstrap.js"></script>
		<!-- productDetail JS -->
		<script src="${root}js/order/productDetail.js"></script>
	
		<script type="text/javascript">
			$(document).ready(function () {
				$('#sidebarCollapse').on('click', function () {
					$('#sidebar').toggleClass('active');
				});
			});
		</script>
	</body>
	
	</html>