<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 - 공지사항 입력 페이지</h1>
	<form method="post">
		<div>
			<label for="title">title</label>
			<input type="text" name="article_title" id="article_title" placeholder="제목을 입력하세요"/>
		</div>
		<div>
			<label for="content">content</label>
			<input type="text" name="article_content" id="article_content" placeholder="내용을 입력하세요"/>
		</div>
		<div>
			<label for="img">img</label>
			<input type="file" name="article_image" id="article_image">
		 	<div class="select_img"><img src="" /></div>
		</div>
		<div>
			<button type="submit">입력</button>
			<button type="reset">취소</button>
		</div>
	</form>
	
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>

	<!-- 이미지 등록시 출력 -->	
	<script>
		$("#article_image").change(function(){
	 		if(this.files && this.files[0]) {
	 			var reader = new FileReader;
	 			reader.onload = function(data) {
	 				$(".select_img img").attr("src", data.target.result).width(500);        
	 			}
	 			reader.readAsDataURL(this.files[0]);
	 		}
	 	});
	</script>

</body>
</html>