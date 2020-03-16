<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 - 공지사항 상세 페이지</h1>
	<form>
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
			<a href="testnoticedelete/${adminNoticeOne.article_id }">삭제</a>
			<button type="reset">취소</button>
		</div>
	</form>
	
</body>
</html>