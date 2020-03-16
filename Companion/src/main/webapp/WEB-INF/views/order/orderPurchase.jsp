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
	
		<!-- Bootstrap CSS CDN -->
		<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/home.css">
		<!-- Our Custom CSS -->
		<link rel="stylesheet" href="${root}css/main.css">
	
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
	
			<!-- menu  -->
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
				<!-- menu -->
				
				<!--content  -->
	<div class="page-header">
		<h1>주문 / 결제</h1>
				<hr class="mb-5">
	
	</div> <!-- <div class="w-100"></div> 강제 줄바꿈-->
	<div class="container">
		<div class="row"> 
				<div class="col-sm-8"><h4>상품 정보</h4></div>
				<div class="col-sm-2"><h4>수량</h4></div>
				<div class="col-sm-2"><h4>가격</h4></div>
				 <div class="w-100"></div>
		<hr class="mb-5">
				<div class="col-sm-2"><img src="${root }imgs/shopping/dogGum.jpg" class="img-fluid" alt="Responsive image"></div>
				<div class="col-sm-4"><h4>상품이름</h4></div>
				<div class="col-sm-2"><h4>수량1개</h4></div>
				<div class="col-sm-2"><h4>90억원</h4></div>
				 <div class="w-100"></div>
				<div class="col-sm-2"><img src="${root }imgs/shopping/dogTag1.jpg" class="img-fluid" alt="Responsive image"></div>
				<div class="col-sm-4"><h4>도그택</h4></div>
				<div class="col-sm-2"><h4>수량1개</h4></div>
				<div class="col-sm-2"><h4>90억원</h4></div>
				 <div class="w-100"></div>
				<div class="col-sm-2"><img src="${root }imgs/shopping/dogHouse1.jpg" class="img-fluid" alt="Responsive image"></div>
				<div class="col-sm-4"><h4>개집</h4></div>
				<div class="col-sm-2"><h4>수량1개</h4></div>
				<div class="col-sm-2"><h4>90억원</h4></div>
				 <div class="w-100"></div>
		<hr class="one">
				<div class="col-sm-7"><h4>수량</h4></div>
				<div class="col-sm-1"><h4>수량</h4></div>
				<div class="col-sm-2"><h4>가격</h4></div>
				 <div class="w-100"></div>
		<hr class="mb-5">
				<div class="col-sm-7"><h4>합계</h4></div>
				<div class="col-sm-1"><h4>합계</h4></div>
				<div class="col-sm-2"><h4>배송비+</h4></div>
				 <div class="w-100"></div>
	 	</div>
	
		<hr class="mb-5">
	<div class="row"> 
				<div class="col-sm-5"><!-- 왼쪽 주문자 정보 start -->
						<div class="col-sm-12"><h2>주문자 정보</h2></div>
						<div class="w-100"></div>
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="name">이 &nbsp; 름</span>
					  </div>
					  <input type="text" class="form-control" placeholder="name" aria-label="Username" aria-describedby="basic-addon1">
					    <hr class="one">
					  	<div class="w-100"></div>
					  <div class="input-group-prepend">
					  
					    <span class="input-group-text" id="phone">연락처</span>
					  </div>
					  <input type="text" class="form-control" placeholder="phone" aria-label="phone" aria-describedby="basic-addon1">
					  	    <hr class="one">
					  	<div class="w-100"></div>
					  <div class="input-group-prepend">
					  
					    <span class="input-group-text" id="email">이메일</span>
					  </div>
					  <input type="text" class="form-control" placeholder="email" aria-label="email" aria-describedby="basic-addon1">
					  	    <hr class="one">
					  	<div class="w-100"></div>
					</div>	
				</div><!-- 왼쪽 주문자 정보 END -->
					<div class="col-sm-5"> <!-- 오른쪽 배송지 정보 -->
							<div class="row">
								<div class="col-sm-5"><h2>배송지 정보</h2></div>
								<div class="col-sm-7">
									<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
										<label class="form-check-label" for="defaultCheck1">
										    주문자 정보와 동일 
										</label>
									</div></div>
									<div class="col-sm-5"></div>
									
									<div class="input-group mb-3">
									  <div class="input-group-prepend">
									    <span class="input-group-text" id="name">이 &nbsp;름</span>
									  </div>
									  <input type="text" class="form-control" placeholder="name" aria-label="Username" aria-describedby="basic-addon1">
									    <div class="w-100"></div>
									<div class="col-sm-11">
									</div>	
									<div class="col-sm-3">
											<br>
										  <button id="postSearch">우편 검색</button>
									</div>	
									<div class="w-100"></div>
									
									<div class="col-sm-3">
								
											<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
									</div>
									<!-- 	<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br> -->
									<div class="col-sm-9">
										<input type="text" class="form-control" id="sample6_address" placeholder="주소"><br>
									</div>
									<div class="col-sm-12">
										<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
									</div>
										<input type="hidden" class="form-control" id="sample6_extraAddress" placeholder="참고항목">

								  	<div class="w-100"></div>
									   <div class="input-group-prepend">
									    <span class="input-group-text" id="name">연락처</span>
									  </div>
									  <input type="text" class="form-control" placeholder="연락처 입력해주세요" aria-label="Username" aria-describedby="basic-addon1">
									    <div class="w-100"></div>	
									  	 <div class="input-group-prepend">
									    <span class="input-group-text" id="name">요청사항</span>
									  </div>
									  <input type="text" class="form-control" placeholder="40자 내로 써주세요" aria-label="Username" aria-describedby="basic-addon1">
									    <div class="w-100"></div>
									</div>
									
									
								</div>
					</div><!-- 오른쪽 배송지 정보 END -->
	</div><!-- row end -->
	<button class="btn btn-primary btn-lg" id="productPurchase" type="button">결제하기</button>
<button type="button" class="btn btn-secondary btn-lg">취소</button> 
	
	
				<div class="col-sm-2"></div> 
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>						
	</div><!-- container end -->
</div><!-- content 끝나는 곳. -->
		</div><!-- Wrapper ENd -->
	
				
	
		<!-- jQuery CDN - Slim version (=without AJAX) -->
	 	<script src="${root}js/jquery-1.12.4.js"></script> 
		<!-- Popper.JS -->
		<script src="${root}js/bootstrap/popper.js"></script>
		<!-- Bootstrap JS -->
		<script src="${root}js/bootstrap/bootstrap.js"></script>
		
		  <!-- iamport.payment.js -->
		  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	 	<script>
	 		$("#productPurchase"),click(function(){
				var IMP=window.IMP;
				IMP.init("imp14855754");
					IMP.request_pay({
					    pg : 'kakaopay',
					    pay_method : 'card',
					    merchant_uid : 'merchant_11' + new Date().getTime(),
					    name : '주문명:결제테스트',
					    amount : 14000,
					    buyer_email : 'iamport@siot.do',
					    buyer_name : '구매자이름',
					    buyer_tel : '010-1234-5678',
					    buyer_addr : '서울특별시 강남구 삼성동',
					    buyer_postcode : '123-456'
		/* 			    m_redirect_url : 'https://http://localhost:8080/companion/order/orderMain/payments/complete'  */
		/* m_redirect_url은 모바일 결제프로세스가 시작되면서 PG사의 페이지로 
		redirect되었다가, 완료 후 다시 사이트로 복귀하기 위해 사용되는 파라메터입니다.
		이 경우, m_redirect_url에 해당되는 서버 핸들러에서 결제여부 체크 및 금액 변조확인이 이루어져야 합니다.
		이를 위해 결제완료 후 랜딩되는 URL은 다음과 같은 추가 파라메터를 가지게 됩니다. */
					}, function(rsp) {
					 	 if ( rsp.success ) {
					    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
					     	jQuery.ajax({
					    		url: "http://localhost:8080/companion/order/orderPurchase", //cross-domain error가 발생하지 않도록 주의해주세요
					    		type: 'POST',
					    		dataType: 'json',
					    		data: {
						    		imp_uid : rsp.imp_uid
						    		//기타 필요한 데이터가 있으면 추가 전달
					    		} 
					    	}).done(function(data) {
					    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
					    		if ( everythings_fine ) {
					    			var msg = '결제가 완료되었습니다.';
					    			msg += '\n고유ID : ' + rsp.imp_uid;
					    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
					    			msg += '\결제 금액 : ' + rsp.paid_amount;
					    			msg += '카드 승인번호 : ' + rsp.apply_num;
					    			alert(msg);
					    		} else {
					    			//[3] 아직 제대로 결제가 되지 않았습니다.
					    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
					    		}
					    	}); 
					    }else {
					        var msg = '결제에 실패하였습니다.';
					        msg += '에러내용 : ' + rsp.error_msg;
					        alert(msg);
					    }  
					});
	 		})
			</script> 
		
		<!-- 배송지 정보 주소 검색 API -->
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
				$(document).on('click','#postSearch',function(){
				    new daum.Postcode({
				        oncomplete: function(data) {
				        	  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                var addr = ''; // 주소 변수
			                var extraAddr = ''; // 참고항목 변수

			                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                    addr = data.roadAddress;
			                } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                    addr = data.jibunAddress;
			                }

			                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			                if(data.userSelectedType === 'R'){
			                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                        extraAddr += data.bname;
			                    }
			                    // 건물명이 있고, 공동주택일 경우 추가한다.
			                    if(data.buildingName !== '' && data.apartment === 'Y'){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                    if(extraAddr !== ''){
			                        extraAddr = ' (' + extraAddr + ')';
			                    }
			                    // 조합된 참고항목을 해당 필드에 넣는다.
			                    document.getElementById("sample6_extraAddress").value = extraAddr;
			                
			                } else {
			                    document.getElementById("sample6_extraAddress").value = '';
			                }

			                // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                document.getElementById('sample6_postcode').value = data.zonecode;
			                document.getElementById("sample6_address").value = addr;
			                // 커서를 상세주소 필드로 이동한다.
			                document.getElementById("sample6_detailAddress").focus();
				        }
				    }).open();
				
				})
			</script>
		<!-- 배송지 주소 검색 API END  -->	
			<script type="text/javascript">
				$(document).ready(function () {
					$('#sidebarCollapse').on('click', function () {
						$('#sidebar').toggleClass('active');
					});
				});
			</script>
		
			
	</body>
	
	</html>