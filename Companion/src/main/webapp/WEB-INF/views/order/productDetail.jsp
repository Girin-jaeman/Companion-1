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
		.btn {
			    height: 34px;
			    background: #eee linear-gradient(to bottom, #fcfcfc, #eee);
			    border: 1px solid #d5d5d5;
			    border-radius: 4px;
			    display: inline-flex;
			    align-items: center;
			    padding: 0 12px;
			    font-size: 14px;
			    font-weight: 500;
			    line-height: 1.5;
			    cursor: pointer;
			    box-sizing: border-box;
			    position: relative;
			    color: #333;
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

					<h1>[ ${productDetailOne.product_name } ] 상품 번호 ${productDetailOne.product_id }</h1>
					<h4>[ 카테고리NUM=${productDetailOne.category_id } ] </h4>

					<h5>상품 설명 ${productDetailOne.product_content }</h5>
				</div>
					<div class="row">
						<div class="col-sm-4">배송비</div>					
						<div class="col-sm-8">2,500원 (5만원이상 구매 시 무료)</div>
						<div class="col-sm-8">재 고 </div>
						<div class="col-sm-4">${productDetailOne.product_stock }</div>					
						<div class="col-sm-4">옵션</div>					
						<div class="col-sm-8">
							<div class="row">
								
										<div class="btn-group">
											  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											    옵션 선택하기
											  </button>
											  <div class="dropdown-menu dropdown-menu-right">
											    <button class="dropdown-item" type="button">옵션1</button>
											    <button class="dropdown-item" type="button">옵션2</button>
											    <button class="dropdown-item" type="button">옵션3</button>
											    <button class="dropdown-item" type="button">옵션4</button>
											    <button class="dropdown-item" type="button">옵션5</button>
											  </div>
										</div>
											  <div class="col-sm-1"></div>
										<div class="btn-group">
											  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											   수량
											  </button>
											  <div class="dropdown-menu dropdown-menu-right">
											    <button class="dropdown-item" type="button">1</button>
											    <button class="dropdown-item" type="button">2</button>
											    <button class="dropdown-item" type="button">3</button>
											    <button class="dropdown-item" type="button">4</button>
											    <button class="dropdown-item" type="button">5</button>
											  </div>
											  <div class="col-sm-1"></div>
										</div>
									
							</div>
						</div>
						<div class="col-sm-8">가격</div>
						<div class="col-sm-4">${productDetailOne.product_price }</div>					
						<div class="col-sm-5">
						<!-- 구매 로그인 세션 검사 -->
						<c:choose>
									<c:when test="${memberVo.member_id==null}">	
						
							<a class="btn btn-primary" href="${root }login" role="button">구매하기</a>
									</c:when>
									<c:when test="${memberVo.member_id!=null}">	
							<a class="btn btn-primary" href="../orderPurchase" role="button">구매하기</a>
									</c:when>
							
						</c:choose>			
						<!-- 구매 로그인 세션 검사 -->
						</div>
						<div class="col-sm-5">
							<button type="button" class="btn-btn-primary" id="shoppingCart" data-toggle="modal" data-target="#exacmpleModalScrollable">장바구니 담기</button>
						</div>
						<div class="col-sm-2">

							<a class="btn btn-primary" href="#" role="button">찜하기</a>
						</div>
					</div>
					<div class="row">
					
						<!-- nav bar 넣자 상품설명 이용후기 문의하기 -->
						<div class="col-sm-4">
						<a class="btn btn-primary" href="#product-info" role="button">
						  상품설명 
						</a>
						</div>
						<div class="col-sm-4">
						<a href="#post-use" class="btn">
						이용후기 <span class="badge badge-light">87</span>
						</a>
						</div>
						<div class="col-sm-4">
						<a id="question" class="btn btn-primary" href="#inquiry" role="button">
	  
						</a>

				
						</div>
					</div>		
				</div>
			</div>
			<!-- 상품설명 -->
				<hr class="mb-2" >
		<div class="row"  id="product-info">	<!-- 테이블로 넣자  -->
						<div class="col-sm-2"><h3>상품설명</h3></div>	
		</div>	
		<div class="row">	<!-- 테이블로 넣자  -->
						<div class="col-sm-3"><h5>상품상태</h5></div>	
						<div class="col-sm-2"><h5>상품번호</h5></div>	
						<div class="col-sm-2"><h5>제조사</h5></div>	
						<div class="col-sm-3"><h5>원산지</h5></div>	
						<div class="col-sm-2"><h5>주원료</h5></div>	
		</div>	
			<div class="row">
				<h5>${productDetailOne.product_content }</h5>
			</div>
			
			<!-- 상품설명   -->
			
			<!-- 후기 -->
			<hr class="mb-2" >
<!-- 		<div class="row" data-target="#post-use">	테이블로 넣자  -->
		<div class="row"  id="post-use">	<!-- 테이블로 넣자  -->
						<div class="col-sm-2"><h3>이용후기 0,0000 건</h3></div>	
						<h5><button>최신순</button></h5>
						<h5><button>평점 높은 순</button></h5>
						<h5><button>평점 낮은 순</button></h5>
		</div>	
		<div class="row">	<!-- 테이블로 넣자  -->
						<div class="col-sm-3"><h5>아이디(member_id)</h5></div>	
						<div class="col-sm-2"><h5>★★★★☆</h5></div>	
						<div class="col-sm-2"><h5>날짜 (후기작성date)</h5></div>	
						<div class="col-sm-3"><h5>구매상품 : (product_name)</h5></div>	
						<div class="col-sm-2"><h5>옵션 (product_option1)</h5></div>	
		</div>	
			<div class="row">
				<h5>//////////저렴하고 값싸고 아주 cheap 한 price에 좋은 product를 get했씁니다 여러분도 이 사이트에서 구매하시고 반려견과 행복한 생활을 하시길 바라며 이 글을 씁니다 아주 만족스럽고 환상적인 물건입니다. 김진우 올림. ////////////////</h5>  이미지 사이즈 90 X 90
			</div>
			<!-- 후기글 -->
			<!-- 문의글 -->
			<hr class="mb-2">
		<div class="row" id="inquiry">	<!-- 테이블로 넣자  -->
				<div class="col-sm-3"><h4>문의하기</h4></div>
				<div class="col-sm-9"><h4></h4></div>
				<!--  -->
				<div class="col-sm-3"><button id="question">문의 작성하기</button></div>
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
		<%-- 	        ${productDetailOne.product_name }이 장바구니에 담겼습니다. --%>
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
	    <!-- MAIN JS -->
    	<script src="${root }js/main.js"></script>

		<!-- productDetail JS -->

		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> -->

		<script src="${root}js/order/productDetail.js"></script>
	
		<script type="text/javascript">
			var popup;
			
			$(document).on('click','#question',function(){
				$(function pop(){
					var settings = 'toolbar=0,location=no, status=0, menubar=0, scrollbars=no, height=500, width=400';
					var target = 'orderQuestion';
					popup = window.open('orderQuestion','question_popup',settings);
					
				 	$.load("orderQuestion",function(){
						popup.location = target;
					}); 
				})
			}) 
		</script>
	</body>
	</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	