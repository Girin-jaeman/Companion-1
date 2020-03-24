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
		<link rel="stylesheet" href="${root}css/main.css">
		<link rel="stylesheet" href="${root}css/order/goodsdetail.css">
		
		<!-- Font Awesome JS -->
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
		<style type="text/css">
		/* .btn {
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
			} */
		</style>

	</head>

<body>

	<div class="wrapper">
		<!-- Sidebar  -->
		<jsp:include page="../common/sidebar.jsp" />

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i> <span>메뉴</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-align-justify"></i>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link active"
								href="/companion/order/productMain?c=100">사료</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/companion/order/productMain?c=200">간식</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/companion/order/productMain?c=300">장난감</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/companion/order/productMain?c=400">미용용품</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/companion/order/productMain?c=500">목욕용품</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/companion/order/productMain?c=600">위생용품</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/companion/order/productMain?c=700">산책용품</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="categories">
				<a href="/companion/order/productMain?c=100">
					<i class="fas fa-home"></i>쇼핑하기
				</a>
				<span>></span>
				<a href="/companion/order/productMain?c=100">
					<i class="fas fa-home"></i>사료
				</a>
				<hr class="mb-4">
			</div>
			<!-- main content start -->
			<div class="maincontent">
				<div class="row">
					<div class="col-md-5" id="imgbox">
						<div class="goodsImg">
							<!-- lay 350x500, imgsize 330x480 -->
							<!-- 이미지 반 글 반 먹고 나머지는 밑에 푸터처럼. -->
							<img src="${root }imgs/shopping/dogTestImage.jpg"
								class="img-fluid" alt="Responsive image">
						</div>
					</div>
					<div class="col-md-7" id="descrip">
						<!--  상품 정보 -->
						<h2 class="goods-title">[ ${productDetailOne.product_name } ]
							상품 번호 ${productDetailOne.product_id }</h2>
						<h4>[ 카테고리NUM=${productDetailOne.category_id } ]</h4>
						<p class="goos-text">상품 설명 ${productDetailOne.product_content }
						</p>

						<div class="goods-text row">
							<div class="col-sm-4 title">배송비</div>
							<div class="col-sm-8">2,500원 (5만원이상 구매 시 무료)</div>
							<div class="col-sm-4 title">재 고</div>
							<div class="col-sm-8">${productDetailOne.product_stock }</div>
							<div class="col-sm-4 title">옵션</div>
							<div class="col-sm-8">
								<select class="form-control col-sm-8">
									<option>옵션1</option>
									<option>옵션2</option>
									<option>옵션3</option>
									<option>옵션4</option>
									<option>옵션5</option>
								</select>
							</div>
							<div class="col-sm-4 title">수량</div>
							<div class="col-sm-8">
								<!-- 수량 -->
								<table class="col-sm-8">
									<tr>
										<td><input type="text" name="num" value="1" id=""
											class="num form-control" /></td>
										<td>
											<div width="10" height="10" class="bt_down">
												<button class="btn">▼</button>
											</div>
										</td>
										<td>
											<div width="10" height="10" class="bt_up">
												<button class="btn">▲</button>
											</div>
										</td>
									</tr>
								</table>
								<!-- 수량 -->

							</div>
							<div class="col-sm-4 title">가격</div>
							<div class="col-sm-8">${productDetailOne.product_price }</div>
						<!-- btn group start-->
						<div class="btn--group">
                        <!-- 구매 로그인 세션 검사 -->
								<c:choose>
									<c:when test="${memberVo.member_id==null}">

										<a class="btn btn-primary btn-lg active navbar-btn mx-center" href="${root }login" role="button"  aria-pressed="true">구매하기</a>
									</c:when>
									<c:when test="${memberVo.member_id!=null}">
										<a class="btn btn-primary btn-lg active navbar-btn mx-center" href="../orderPurchase"
											role="button"  aria-pressed="true">구매하기</a>
									</c:when>

								</c:choose>
								<!-- 구매 로그인 세션 검사 -->
                        <a href="#" class="btn btn-secondary btn-lg active navbar-btn mx-2" role="button" id="shoppingCart" data-toggle="modal" data-target="#exacmpleModalScrollable" aria-pressed="true">장바구니</a>
                        <a href="#" class="btn btn-secondary btn-lg active navbar-btn mx-5" role="button" aria-pressed="true">찜하기</a>
                        </div>
						<!-- btn group end-->

					</div>
				</div>
				
			</div>
			<!-- main content end -->

			<!-- modal 장바구니! start -->

			<!-- Modal -->
			<div class="modal" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">장바구니에 담기</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<%-- 	        ${productDetailOne.product_name }이 장바구니에 담겼습니다. --%>
							장바구니로 이동할까요?
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">확인</button>
						</div>
						
					</div>
					<!-- modal-content end -->
				</div>
				<!-- modal-dialog end -->
			</div>
			<!-- modal end -->
			<!-- modal 장바구니! end -->
			<div class="p-12 rounded mb-5">
				<!-- Lined tabs-->
				<ul id="myTab2" role="tablist"
					class="nav nav-tabs nav-pills with-arrow lined flex-column flex-sm-row text-center">
					<li class="nav-item flex-sm-fill"><a id="product-info-tab"
						data-toggle="tab" href="#product-info" role="tab"
						aria-controls="product-info" aria-selected="true"
						class="nav-link text-uppercase font-weight-bold mr-sm-3 rounded-0 active">상품설명</a>
					</li>
					<li class="nav-item flex-sm-fill"><a id="post-use-tab"
						data-toggle="tab" href="#post-use" role="tab"
						aria-controls="post-use" aria-selected="false"
						class="nav-link text-uppercase font-weight-bold mr-sm-3 rounded-0">이용후기</a>
					</li>
					<li class="nav-item flex-sm-fill"><a id="contact2-tab"
						data-toggle="tab" href="#contact2" role="tab"
						aria-controls="contact2" aria-selected="false"
						class="nav-link text-uppercase font-weight-bold rounded-0">문의하기</a>
					</li>
				</ul>
				<div id="myTab2Content" class="tab-content">
					<div id="product-info" role="tabpanel" aria-labelledby="home-tab"
						class="tab-pane fade px-4 py-5 show active">
						<!-- 상품설명 -->
						<div class="row">
							<!-- 테이블로 넣자  -->
							<div class="col-sm-2">
								<h3>상품설명</h3>
							</div>
						</div>
						<div class="row">
							<!-- 테이블로 넣자  -->
							<div class="col-sm-3">
								<h5>상품상태</h5>
							</div>
							<div class="col-sm-2">
								<h5>상품번호</h5>
							</div>
							<div class="col-sm-2">
								<h5>제조사</h5>
							</div>
							<div class="col-sm-3">
								<h5>원산지</h5>
							</div>
							<div class="col-sm-2">
								<h5>주원료</h5>
							</div>
						</div>
						<div class="row">
							<h5>${productDetailOne.product_content }</h5>
						</div>

						<!-- 상품설명   -->
					</div>
					<!-- product-info end -->

					<div id="post-use" role="tabpanel" aria-labelledby="post-use-tab"
						class="tab-pane fade px-4 py-5">
						<nav class="navbar navbar-expand-lg">
							<h2 class="navbar-brand">이용후기 ooo건</h2>
							<div class="collapse navbar-collapse" id="navbarText">
								<ul class="navbar-nav mr-auto">
									<li class="nav-item"><a class="nav-link" href="#"></a></li>
								</ul>
								<span class="navbar-text"> <a href="#" class="mx-1">최신순</a>
									<span>/</span> <a href="#" class="mx-1">평점높은순</a> <span>/</span>
									<a href="#" class="mx-1">평점낮은순</a>

								</span>
							</div>
						</nav>
						<hr class="my-1">

						<!-- 후기글 start -->
						<div class="row">
							<div class="col-lg-12">
								<table class="table">
									<thead>
										<tr>
											<th scope="col" class="border-0 bg-light">
												<div class="p-2 px-3 text-uppercase">이용후기</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2 text-uppercase">구매상품 : (product_name)</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="p-2 px-3 text-uppercase">아이디(member_id)</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2 text-uppercase">날짜 (후기작성date)</div>
											</th>
											<th scope="col" class="border-0 bg-light">
												<div class="py-2 text-uppercase">평점 (별 갯수)</div>
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="border-0">
												<div class="p-2">
													<img src="#" alt="이미지90x90" width="90"
														class="img-fluid rounded shadow-sm">
													<div class="ml-3 d-inline-block align-middle">
														<h5 class="mb-0">
															<a href="#" class="text-dark d-inline-block align-middle">
																후기글 제목 </a>
														</h5>
														<span
															class="text-muted font-weight-normal font-italic d-block">
															옵션 (product_option1) </span>
													</div>
												</div>
											</th>

											<td class="border-0 align-middle"><strong>[
													${productDetailOne.product_name } ] 상품 번호
													${productDetailOne.product_id }</strong></td>
											<!-- 상품번호 출력 -->

											<td class="border-0 align-middle"><strong>재만123</strong>
											</td>
											<!-- 후기작성자 아이디 출력 -->

											<td class="border-0 align-middle"><a href="#"
												class="text-dark">2020.03.24</a></td>
											<!-- 후기작성날짜 출력 -->

											<td class="border-0 align-middle"><a href="#"
												class="text-dark">★★★★☆</a></td>
											<!-- 평점별갯수 출력 -->
										</tr>
										<!-- 후기한줄 끝 -->

										<tr>
											<th scope="row" class="border-0">
												<div class="p-2">
													<img src="#" alt="이미지90x90" width="90"
														class="img-fluid rounded shadow-sm">
													<div class="ml-3 d-inline-block align-middle">
														<h5 class="mb-0">
															<a href="#" class="text-dark d-inline-block align-middle">
																후기글 제목 </a>
														</h5>
														<span
															class="text-muted font-weight-normal font-italic d-block">
															옵션 (product_option1) </span>
													</div>
												</div>
											</th>

											<td class="border-0 align-middle"><strong>[
													${productDetailOne.product_name } ] 상품 번호
													${productDetailOne.product_id }</strong></td>
											<!-- 상품번호 출력 -->

											<td class="border-0 align-middle"><strong>재만123</strong>
											</td>
											<!-- 후기작성자 아이디 출력 -->

											<td class="border-0 align-middle"><a href="#"
												class="text-dark">2020.03.24</a></td>
											<!-- 후기작성날짜 출력 -->

											<td class="border-0 align-middle"><a href="#"
												class="text-dark">★★★★☆</a></td>
											<!-- 평점별갯수 출력 -->
										</tr>
										<!-- 후기한줄 끝 -->

										<tr>
											<th scope="row" class="border-0">
												<div class="p-2">
													<img src="#" alt="이미지90x90" width="90"
														class="img-fluid rounded shadow-sm">
													<div class="ml-3 d-inline-block align-middle">
														<h5 class="mb-0">
															<a href="#" class="text-dark d-inline-block align-middle">
																후기글 제목 </a>
														</h5>
														<span
															class="text-muted font-weight-normal font-italic d-block">
															옵션 (product_option1) </span>
													</div>
												</div>
											</th>

											<td class="border-0 align-middle"><strong>[
													${productDetailOne.product_name } ] 상품 번호
													${productDetailOne.product_id }</strong></td>
											<!-- 상품번호 출력 -->

											<td class="border-0 align-middle"><strong>재만123</strong>
											</td>
											<!-- 후기작성자 아이디 출력 -->

											<td class="border-0 align-middle"><a href="#"
												class="text-dark">2020.03.24</a></td>
											<!-- 후기작성날짜 출력 -->

											<td class="border-0 align-middle"><a href="#"
												class="text-dark">★★★★☆</a></td>
											<!-- 평점별갯수 출력 -->
										</tr>
										<!-- 후기한줄 끝 -->
									</tbody>
								</table>
								<ul class="pagination my-5">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</div>
							<!-- col-lg-12 end -->
						</div>
						<!-- row end -->
					</div>
					<!-- #post-use end  -->
					<!-- 후기글 End -->

					<!-- 문의글 start-->
					<div id="contact2" role="tabpanel" aria-labelledby="contact-tab"
						class="tab-pane fade px-4 py-5">
						<div class="row">
							<div class="col-lg-12"  id="inquiry">
		<!-- 테이블로 넣자  -->
							<div class="row">
								<div class="col-sm-9">
									<h4>문의하기</h4>
								</div>
								<div class="col-sm-3">
									<button>내가 쓴 글 보기(스위치)</button>
								</div>
							
							</div>
							<div class="col-sm-6">구매하시려는 상품에 대해 궁금하신 점이 있으신 경우 문의 해 주세요</div>
							<div class="col-sm-6"></div>


								<div id="reply">
									<c:if test="${memberVo.member_id==null}">
										<p>소감을 남기려면 로그인 해주세요!</p>
									</c:if>
									<c:if test="${memberVo.member_id!=null}">
										<section class="replyForm">

											<form action="${root }order/productDetail/question"
												role="form" method="post" autocomplete="off">

												<input type="hidden" name="product_id"
													value="${productDetailOne.product_id }">
												<%-- 		<input type="hidden" name="order_id" value="${productDetailOne.order_id }">  --%>


												<div class="input_area">
													<label for="question_title" id="question_label">문의 제목</label>
													<input type="text" name="question_title"
														id="question_title" placeholder="제목을 입력해주세요"></br>
													<textarea name="question_content" id="question_content">컨텐츠</textarea>
												</div>
												<div class="input_area">
													<button type="submit" id="reply_btn">문의글 달기</button>
												</div>
											</form>
										</section>
									</c:if>

									<section class="replyList">
										<ol>
											<h4>최근 문의글 목록</h4>
											<div class="container">
												<table class="table">
													<thead></thead>
													<tbody>
														<tr>
															<td>답변상태</td>
															<td>작성자</td>
															<td>제목</td>
															<td>글 내용</td>
															<td>비밀글여부</td>
															<td>작성일</td>
														</tr>
														<c:forEach items="${reply }" var="bean">
															<tr>

																<td><span class="userName"></span> <span
																	class="userName">${bean.question_state_id }</span></td>

																<td><span class="userName"> 아이디 : </span> <span
																	class="userName">${bean.member_id }</span></td>

																<td><span class="userName"> 글 제목 : </span> <span
																	class="userName">${bean.question_title }</span></td>

																<td><span class="userName"> 글 내용 : </span> <span
																	class="userName">${bean.question_content }</span></td>

																<td><span class="userName"> </span> <span
																	class="userName">${bean.question_secret_id }</span></td>

																<td><span class="userName">작성일:</span> <span
																	class="userName">${bean.question_date }</span></td>

															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</ol>
									</section>
								</div>
								<!-- reply end -->
							</div>
							<!-- col-lg-12 end -->
						</div>
						<!-- row end -->
						<!-- 문의 엔드 -->

					</div>
					<!-- End lined tabs -->
				
				</div>
				<!-- #myTab2Content end-->
			
			</div>
			<!-- 3tap layer end -->
			</div>
			<!-- Footer  -->
			<jsp:include page="../common/footer.jsp" />
			<!-- Footer end -->
		</div>
		<!-- #content end -->

	</div>
	<!-- wrapper end -->

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
		<script src="${root}js/order/productDetail.js"></script>
	<script type="text/javascript">
		 	// 문의글 작성 모달 창인데 잠시 보류 나중에 수정하겠음.
			// var popup;
			// $(document).on('click','#question',function(){
			// 	$(function pop(){
			// 		var settings = 'toolbar=0,location=no, status=0, menubar=0, scrollbars=no, height=500, width=400';
			// 		var target = 'orderQuestion';
			// 		popup = window.open('orderQuestion','question_popup',settings);
					
			// 	 	$.load("orderQuestion",function(){
			// 			popup.location = target;
			// 		}); 
			// 	})
			// }) 
			$(function(){ 
			$('.bt_up').click(function(){ 
				var n = $('.bt_up').index(this);
				var num = $(".num:eq("+n+")").val();
				num = $(".num:eq("+n+")").val(num*1+1); 
			});
			$('.bt_down').click(function(){ 
				var n = $('.bt_down').index(this);
				var num = $(".num:eq("+n+")").val();
				num = $(".num:eq("+n+")").val(num*1-1); 
			});
			}) 
		</script>

		
<script type="text/javascript">
		function replyList(){
			console.log("replyList() function run...");
			
			var product_id = ${productDetailOne.product_id};
			var member_id = ${sessionScope.memberVo.member_name };
			$.getJSON("productDetail?idx="+product_id,function(data){
				var str= "";
				
				$(data).each(function(){
					console.log(data);
					
					var question_date = new Date(this.question_date);
					question_date = question_date.toLocalDateString("ko-US")
						str += "<li data-gdsNum='" + this.product_id + "'>"
					     + "<div class='userInfo'>"
					     + "<span class='userName'>" + this.member_id + "</span>"
					     + "<span class='date'>" + question_date + "</span>"
					     + "</div>"
					     + "<div class='replyContent'>" + this.question_content + "</div>"
					     + "</li>"; 
				});
				  $("section.replyList ol").html(str);
			});
		}
</script>
		
		
	</body>
	</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	