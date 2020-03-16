<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 - 공지사항 수정 페이지</h1>
	<form method="post">
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
			<input type="text" name="article_content" id="article_content" value="${adminNoticeOne.article_content }"/>
		</div>
		<div>
			<label for="img">img</label>
			<input type="file" name="article_image" id="article_image" value="${adminNoticeOne.article_image }">
		</div>
		<div>
			<button type="submit">수정</button>
			<button type="reset">취소</button>
		</div>
	</form>
	
</body>
</html>