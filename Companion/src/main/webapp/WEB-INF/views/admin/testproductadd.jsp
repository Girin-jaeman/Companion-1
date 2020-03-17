<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/main.css">
    <link rel="stylesheet" href="${root }css/home.css">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 페이지</h1>
	<aside>
		<ul>
			<li><a href="${root}admin/testproductadd">상품등록</a></li>
			<li><a href="#">상품목록</a></li>
			<li><a href="#">상품소감</a></li>
			<li><a href="#">유저목록</a></li>
		</ul>
	</aside>
	<h2>상품 등록</h2>
	
	
	
	
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
</body>
</html>