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
	<h1>관리자 - 공지사항 상세 페이지</h1>
	<form method="post" action="${root }admin/testnoticedelete">
		<input type="hidden" name="article_id" id="article_id" value="${adminNoticeOne.article_id }">
		<div>
			<label for="title">title</label>
			<input type="text" name="article_title" id="article_title" value="${adminNoticeOne.article_title }" disabled="disabled"/>
		</div>
		<div>
			<label for="date">date</label>
			<input type="text" name="article_date" id="article_date" value="${adminNoticeOne.article_date }" disabled="disabled"/>
		</div>
		<div>
			<label for="content">content</label>
			<input type="text" name="article_content" id="article_content" value="${adminNoticeOne.article_content }" disabled="disabled"/>
		</div>
		<div>
			<label for="img">img</label>
			<input type="file" name="article_image" id="article_image" value="${adminNoticeOne.article_image }">
		</div>
		<div>
			<a href="${root }admin/testnoticeedit/${adminNoticeOne.article_id }">수정</a>
			<button type="button" onclick="removeCheck();">삭제</button>
			<button type="reset">취소</button>
		</div>
	</form>

    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
	<script>
		function removeCheck() {
			if (confirm("정말 삭제하시겠습니까??") == true){
		    	$('form').submit();
			}else{
		    	return false;
			}
		}
	</script>

</body>
</html>