<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/admin/main.css">
    <!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	<!-- CKEditor JS -->
 	<script src="${root }resources/ckeditor/ckeditor.js"></script>

	<title>Companion::공지사항 조회</title>
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
			                <a class="nav-link" href="${root }admin/notice_list">공지사항 목록</a>
			            </li>
			            <li class="nav-item">
			                <a class="nav-link" href="${root }admin/notice_add">공지사항 등록</a>
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
			<h1>관리자 - 공지사항 상세 페이지</h1>
			<form role="form" method="post" autocomplete="off">
				<input type="hidden" name="article_id" id="article_id" value="${adminNoticeOne.article_id }">
				<div>
					<label for="title">title</label>
					<span>${adminNoticeOne.article_title }</span>
				</div>
				<div>
					<label for="date">date</label>
					<span>${adminNoticeOne.article_date }</span>
				</div>
				<div>
					<label for="content">content</label>
					<span>${adminNoticeOne.article_content }</span>
				</div>
				<div>
					<label for="img">원본이미지</label>
					<%-- <img alt="원본이미지" src="${pageContext.request.contextPath}${adminNoticeOne.article_image }"> --%>
					<img alt="원본이미지" src="<spring:url value='${adminNoticeOne.article_image }'/>"/>
				</div>
				<div>
					<label for="img">썸네일</label>
					<%-- <img alt="썸네일" src="${pageContext.request.contextPath}${adminNoticeOne.article_thumb }"> --%>
					<img alt="썸네일" src="<spring:url value='${adminNoticeOne.article_thumb }'/>"/>
				</div>
				<div>
					<button type="button" id="modify_Btn" class="btn btn-warning">수정</button>
				 	<button type="button" id="delete_Btn" class="btn btn-danger">삭제</button>
					<button type="button" id="back_Btn">취소</button>
				</div>
			</form>
	
		</section>
		<!-- section [end] -->
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
<!-- MAIN JS -->
<script src="${root }js/main.js"></script>
  
<script type="text/javascript">
// 수정 버튼
$("#modify_Btn").click(function(){
	location.href = ${root}+"admin/notice_edit/" + ${adminNoticeOne.article_id};
});  
		 
// 취소 버튼
$("#back_Btn").click(function(){
	history.back();
});
		 
// 삭제 버튼
var formObj = $("form[role='form']");
$("#delete_Btn").click(function(){
	var con = confirm("정말로 삭제하시겠습니까?");
	if(con) {      
		formObj.attr("action", "${root}admin/notice_delete/${adminNoticeOne.article_id}");
		formObj.submit();
	}
});
</script>

</body>
</html>