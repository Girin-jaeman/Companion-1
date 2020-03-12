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
			<input type="text" name="ntc_title" id="ntc_title" placeholder="제목을 입력하세요"/>
		</div>
		<div>
			<label for="content">content</label>
			<input type="text" name="ntc_content" id="ntc_content" placeholder="내용을 입력하세요"/>
		</div>
		<div>
			<label for="img">img</label>
			<input type="file" name="img" id="img">
		</div>
		<div>
			<button>입력</button>
		</div>
	</form>
</body>
</html>