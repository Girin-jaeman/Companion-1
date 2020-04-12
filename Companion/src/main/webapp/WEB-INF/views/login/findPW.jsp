<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>컴패니언::Companion</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/main.css">
    <link rel="stylesheet" href="${root }css/login/login.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
        integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
        integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
        crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
        
        <!-- Sidebar  -->
		<jsp:include page="../common/sidebar.jsp"/>

        <!-- Page Content  -->
        <div id="content">
            <div id="container">

	            <nav class="navbar navbar-expand-lg navbar-light bg-light">
	                <div class="container-fluid">
	
	                    <button type="button" id="sidebarCollapse" class="btn btn-info">
	                        <i class="fas fa-align-left"></i>
	                        <span>메뉴</span>
	                    </button>
	                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
	                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
	                        aria-expanded="false" aria-label="Toggle navigation">
	                        <i class="fas fa-align-justify"></i>
	                    </button>
	                    
	                     <div class="collapse navbar-collapse" id="navbarSupportedContent">
	                        <c:choose>
	                            <c:when test="${sessionScope.memberVo.member_id==null }">
	                                <ul class="nav navbar-nav ml-auto">
	                                    <li class="nav-item">
	                                        <a class="nav-link active" href="${root }login">로그인</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="${root }login/memberadd">회원가입</a>		
	                                    </li>
	                                </ul>
	                            </c:when>
	                            <c:otherwise>
	                            	<script>
	                                	window.history.back();
	                                </script>
	                            </c:otherwise>
	                            
	                        </c:choose>
	                    </div>
	                </div>
	            </nav>
	            <div class="maincontent">
	            	
	            	<form class="form-signin" name="login" method="post" autocomplete="off">
		                <h1 class="h3 mb-3 font-weight-normal">로그인</h1>
		                <label for="member_id" class="sr-only">ID</label>
		                <input type="text" id="member_id" name="member_id" class="form-control" placeholder="아이디를 입력해주세요" required autofocus>
		                <label for="member_pw" class="sr-only">PW</label>
		                <input type="password" name="member_pw"  id="member_pw" class="form-control" placeholder="패스워드를 입력해주세요" required>
		                <div class="checkbox mb-3">
		                  <label>
		                    <input type="checkbox" value="remember-me"> 아이디 저장
		                  </label>
		                  <c:if test="${loginChk==false }">
							<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
							</c:if>
		                </div>
		                <button class="btn btn-lg btn-primary btn-block" type="submit" id="login_btn">로그인</button>
		                <div class="search">
		                    <a href="#">아이디찾기</a>
		                    <a href="#">비밀번호찾기</a>
		                </div>
		                <!-- Divider Text -->
		                <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-3">
		                    <div class="border-bottom w-100 ml-6"></div>
		                    <span class="px-3 font-weight-bold text-muted">OR</span>
		                    <div class="border-bottom w-100 mr-6"></div>
		                </div>
		            </form>
		            
		             	<div id="kakao_id_login">
						<a href="https://kauth.kakao.com/oauth/authorize?client_id=17cc56e13f55ba11cdff275d3f1990c3&redirect_uri=http://localhost:8080/companion/login/kakaologin&response_type=code">
							<button class="btn btn-lg btn-warning btn-block kakaoBtn">
		                    <i class="fas fa-comment"></i>&nbsp;&nbsp;&nbsp;카카오톡 로그인
		                	</button>
						</a>
						</div>
		                
	            	
	            	
	            	
	            	
		
	            </div>
			</div>
			
		<!-- Footer  -->
			<jsp:include page="../common/footer.jsp"/>
		<!-- Footer end -->
	</div>
	<!-- #content end -->
</div>
<!-- .wrapper end  -->
	
	
	<!-- script start -->
	<!-- jQuery -->
	<script src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
		});
	</script>
	
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    <!-- MAIN JS -->
    <script src="${root }js/main.js"></script>
    <!-- script end -->
</body>
</html>