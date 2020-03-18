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
	<h2>상품 상세</h2>
	<form role="form" method="post" autocomplete="off" >
		 <label>1차 분류</label>
		 <span class="category1"></span>
		 
		 <label>2차 분류</label>
		 <span class="category2">${adminProductOne.category_id }</span>
 		 
 		 <input type="hidden" name="product_id" value="${adminProductOne.product_id }"/>
 		 
		<div class="inputArea">
		 <label for="product_name">상품번호</label>
		 <span>${adminProductOne.product_id }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_price">상품가격</label>
		 <span><fmt:formatNumber value="${adminProductOne.product_price}" pattern="###,###,###"/></span>
		</div>
		
		<div class="inputArea">
		 <label for="product_stock">상품수량</label>
		 <span>${adminProductOne.product_stock }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_name">상품명</label>
		 <span>${adminProductOne.product_name }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_content">상품소개</label>
		 <span>${adminProductOne.product_content }</span>
		</div>
		
		<div class="inputArea">
		 <label for="product_date">상품등록일</label>
		 <span><fmt:formatDate value="${adminProductOne.product_date}" pattern="yyy-MM-dd"/></span>
		</div>
		
		<div class="inputArea">
		 <!-- <a href="${root }admin/testproductedit/${adminProductOne.product_id }" class="btn">수정</a> -->
		 <button type="button" id="modify_Btn" class="btn btn-warning">수정</button>
		 <button type="submit" id="delete_Btn" class="btn btn-danger">삭제</button>
		</div>
	</form>
	
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    <script type="text/javascript">
   		 $("#modify_Btn").click(function(){
		  location.href = ${root}+"admin/testproductedit/" + ${adminProductOne.product_id};
		 });  
    </script>
    
</body>
</html>