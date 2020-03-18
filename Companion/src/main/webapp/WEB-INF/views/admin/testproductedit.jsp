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
			<li><a href="${root}admin/testproductlist">상품목록</a></li>
			<li><a href="#">상품소감</a></li>
			<li><a href="#">유저목록</a></li>
		</ul>
	</aside>
	<h2>상품 수정</h2>
	<form role="form" method="post" autocomplete="off">
		 <label>1차 분류</label>
		 <select class="category1">
		  <option value="">전체</option>
		 </select>
		 
		 <label>2차 분류</label>
		 <select class="category2" name="category_id">
		  <option value="">전체</option>
		 </select>
		 
		 <input type="hidden" name="product_id" value="${adminProductOne.product_id }"/>
		 
		<div class="inputArea">
		 <label for="product_price">상품가격</label>
		 <input type="text" id="product_price" name="product_price" value="33"/>
		</div>
		
		<div class="inputArea">
		 <label for="product_stock">상품수량</label>
		 <input type="text" id="product_stock" name="product_stock" value="${adminProductOne.product_stock }"/>
		</div>
		 
		<div class="inputArea">
		 <label for="product_name">상품명</label>
		 <input type="text" id="product_name" name="product_name" value="${adminProductOne.product_name }"/>
		</div>
		
		<div class="inputArea">
		 <label for="product_content">상품소개</label>
		 <textarea rows="5" cols="50" id="product_content" name="product_content">${adminProductOne.product_content }</textarea>
		</div>
		
		<div class="inputArea">
		 <button type="submit" id="update_Btn" class="btn btn-primary">수정</button>
		 <button type="button" id="back_Btn" class="btn btn-warning">취소</button>
		</div>
		 
	</form>
	
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    
    <script>
		// 컨트롤러에서 데이터 받기
		var jsonData = JSON.parse('${adminProductCategory}');
		console.log(jsonData);
		
		var cate1Arr = new Array();
		var cate1Obj = new Object();
		
		// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
		for(var i = 0; i < jsonData.length; i++) {
		 
		 if(jsonData[i].category_refid == "0") {
		  cate1Obj = new Object();  //초기화
		  cate1Obj.cateCode = jsonData[i].category_id;
		  cate1Obj.cateName = jsonData[i].category_name;
		  cate1Arr.push(cate1Obj);
		 }
		}
		
		// 1차 분류 셀렉트 박스에 데이터 삽입
		var cate1Select = $("select.category1")
		
		for(var i = 0; i < cate1Arr.length; i++) {
		 cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
		      + cate1Arr[i].cateName + "</option>"); 
		}
		
		// 1차 분류 선택시 2차 분류 출력
		$(document).on("change", "select.category1", function(){
		
		 var cate2Arr = new Array();
		 var cate2Obj = new Object();
		 
		 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
		 for(var i = 0; i < jsonData.length; i++) {
		  
		  if(jsonData[i].category_refid != "0") {
		   cate2Obj = new Object();  //초기화
		   cate2Obj.cateCode = jsonData[i].category_id;
		   cate2Obj.cateName = jsonData[i].category_name;
		   cate2Obj.cateCodeRef = jsonData[i].category_refid;
		   
		   cate2Arr.push(cate2Obj);
		  }
		 }
		 
		 var cate2Select = $("select.category2");
		
		 
		 cate2Select.children().remove();

		 $("option:selected", this).each(function(){
		  
		  var selectVal = $(this).val();  
		  cate2Select.append("<option value='"+selectVal+"'>전체</option>");
		  
		  for(var i = 0; i < cate2Arr.length; i++) {
		   if(selectVal == cate2Arr[i].cateCodeRef) {
		    cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
		         + cate2Arr[i].cateName + "</option>");
		   }
		  }
		  
		 });
		 
		});
		
		// back button
		 $("#back_Btn").click(function(){
		  history.back();
		 });   
		
		// category
			var select_cateCode = '${adminProductOne.category_id}';
			var select_cateCodeRef = '${adminProductOne.category_refid}';
			var select_cateName = '${adminProductOne.category_name}';
			
			if(select_cateCodeRef != null) {
			 $(".category1").val(select_cateCodeRef);
			 $(".category2").val(select_cateCode);
			 $(".category2").children().remove();
			 $(".category2").append("<option value='"
			       + select_cateCode + "'>" + select_cateName + "</option>");
			} else {
			 $(".category1").val(select_cateCode);
			 $(".category2").append("<option value='" + select_cateCode + "' selected='selected'>전체</option>");
			}
			
	</script>
	
</body>
</html>