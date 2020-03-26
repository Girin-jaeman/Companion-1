<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<title>Companion::공지사항 수정</title>
</head>
<body>
	<h1>관리자 - 공지사항 수정 페이지</h1>
	<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
		<input type="hidden" name="article_id" id="article_id" value="${adminNoticeOne.article_id }">
		<div>
			<label for="title">title</label>
			<input type="text" name="article_title" id="article_title" value="${adminNoticeOne.article_title }"/>
		</div>
		<div>
			<label for="date">date</label>
			<input type="text" name="article_date" id="article_date" value="${adminNoticeOne.article_date }"/>
		</div>
		<div>
			<label for="content">content</label>
			<textarea name="article_content" id="article_content" rows="10" cols="80">${adminNoticeOne.article_content }</textarea>
			<script>
 				var ckeditor_config = {
						resize_enable : false,
						enterMode : CKEDITOR.ENTER_BR,
						shiftEnterMode : CKEDITOR.ENTER_P,
						filebrowserUploadUrl : "../../upload/notice"
				};
				CKEDITOR.replace( 'article_content' );
			</script>
		</div>
		<div>
			<label for="article_image">img</label>
			<input type="file" name="file" id="article_image"/>
			<img alt="원본이미지" src="${pageContext.request.contextPath}${adminNoticeOne.article_image }"/>
			<input type="hidden" name="article_image" value="${pageContext.request.contextPath}${adminNoticeOne.article_image }"/>
			<input type="hidden" name="article_thumb" value="${pageContext.request.contextPath}${adminNoticeOne.article_thumb }"/>
		</div>
		<%=request.getRealPath("/") %>
		<div>
			<button type="submit">수정</button>
			<button type="button" id="back_Btn">취소</button>
		</div>
	</form>
	
	<!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    <!-- MAIN JS -->
    <script src="${root }js/main.js"></script>
	<!-- 이미지 등록시 출력 -->	
 	<script>
 		$('#article_image').change(function(){
 			if(this.files&&this.files[0]){
 				var reader = new FileReader;
 				reader.onload = function(data){
 					$('.select_img img').attr("src",data.target.result).width(500);
 				}
 				reader.readAsDataURL(this.files[0]);
 			}
 		});
 		
 		// 취소 버튼
 		$("#back_Btn").click(function(){
 			history.back();
 		});
 	</script>
</body>
</html>