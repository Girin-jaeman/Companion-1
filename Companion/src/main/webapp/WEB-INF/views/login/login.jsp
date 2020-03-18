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
    <link rel="stylesheet" href="${root }css/home.css">

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
	                                        <a class="nav-link" href="${root }login">로그인</a>
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
	            
					<h1>로그인창</h1>
					<form name="login" method="post" autocomplete="off">
						<label for="member_id">ID</label>
						<input type="text" name="member_id" id="member_id" placeholder="아이디 입력"></br>
						
						<label for="member_pw">PW</label>
						<input type="password" name="member_pw" id="member_pw" placeholder="비밀번호 입력"></br>
						
						<button type="button" id="login_btn">로그인</button>
						<button type="button" onclick="history.back();">뒤로</button>	</br>
						<c:if test="${loginChk==false }">
							<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
						</c:if>	
					</form>
					
	            </div>
			</div>
			
        <div id="footer">
            <!-- test main content end-->
            <hr class="mb-2">
            <footer class="companion-footer">
                    <div class="paragraph-group">
                        <p>상호:COMPANION | 대표 : 최길동 | 개인정보보호관리책임자 : 최길동 | 전화 : 02-000-000 ㅣ 이메일 : <a href="mailto:companion@companion.com" target="_top">companion@companion.com</a></p>
                        <p>주소:서울특별시 서초구 강남대로 459 (서초동, 백암빌딩) 3층 | 사업자등록번호 : 000-00-00000 | 통신판매 : 2020-서울강남-0000</p>
                        <p>호스팅제공자:(주)Companion</p>
                        <br/>
                        <a href="#">[홈페이지 이용약관]</a> <a href="#">[개인정보취급방침]</a><br/>
                        <p>Copyright ⓒ 2020 COMPANION All rights reserved.</p>
                    </div>
            </footer>
        </div>

		</div>
	</div>
	
	
	<!-- script start -->
	<!-- jQuery -->
	<script src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#login_btn").click(function(){
				var member_id=$("#member_id").val();
				var member_pw=$("#member_pw").val();
				if(member_id==""){
					alert("아이디를 입력해 주세요.");
					return;
				}
				if(member_pw==""){
					alert("비밀번호를 입력해 주세요.");
					return;
				}
				document.login.submit();
			});
		});
	</script>
	
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <!-- script end -->
</body>
</html>