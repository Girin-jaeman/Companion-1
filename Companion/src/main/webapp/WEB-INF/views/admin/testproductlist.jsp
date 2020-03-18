<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<li><a href="${root}admin/testproductlist">상품목록</a></li>
			<li><a href="#">상품소감</a></li>
			<li><a href="#">유저목록</a></li>
		</ul>
	</aside>
	<h2>상품 목록</h2>
	<table class="table">
	 <thead>
	  <tr>
	   <th>카테고리번호</th>
	   <th>상품번호</th>
	   <th>이름</th>
	   <th>설명</th>
	   <th>가격</th>
	   <th>수량</th>
	   <th>등록날짜</th>
	  </tr>
	 </thead>
	 <tbody>
	  <c:forEach items="${adminProductList}" var="bean">
	  <tr>
	   <td>${bean.category_id}</td>
	   <td>${bean.product_id}</td>
	   <td>
	   	<a href="${root }admin/testproductdetail/${bean.product_id}">${bean.product_name}</a>
	   </td>
	   <td>${bean.product_content}</td>
	   <td>
	   	<fmt:formatNumber value="${bean.product_price}" pattern="###,###,###"/>
	   </td>
	   <td>${bean.product_stock}</td>
	   <td>
	   	<fmt:formatDate value="${bean.product_date}" pattern="yyy-MM-dd"/>
	   </td>
	  </tr>   
	  </c:forEach>
	 </tbody>
	</table>
	
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    
	
</body>
</html>