<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 - 공지사항 상세 페이지</h1>
	<form role="form" method="post" >
		<input type="hidden" name="article_id" id="article_id" value="${adminNoticeOne.article_id }">
		<div>
			<label for="title">title</label>
			<span>${adminNoticeOne.article_title }</span>
		</div>
		<div>
			<label for="date">date</label>
			<span>${adminNoticeOne.article_date }</span>
		</div>
		<div>
			<label for="content">content</label>
			<span>${adminNoticeOne.article_content }</span>
		</div>
		<div>
			<label for="img">원본이미지</label>
			<%-- <img alt="원본이미지" src="${pageContext.request.contextPath}${adminNoticeOne.article_image }"> --%>
			<img alt="원본이미지" src="<spring:url value='${adminNoticeOne.article_image }'/>"/>
		</div>
		<div>
			<label for="img">썸네일</label>
			<img alt="썸네일" src="${pageContext.request.contextPath}${adminNoticeOne.article_thumb }">
		</div>
		<div>
			<button type="button" id="modify_Btn" class="btn btn-warning">수정</button>
		 	<button type="button" id="delete_Btn" class="btn btn-danger">삭제</button>
			<button type="reset">취소</button>
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
    <script type="text/javascript">
   		 $("#modify_Btn").click(function(){
   			location.href = ${root}+"admin/testnoticeedit/" + ${adminNoticeOne.article_id};
		 });  
   		 
     	// delete button
     	var formObj = $("form[role='form']");
    		$("#delete_Btn").click(function(){
    		 var con = confirm("정말로 삭제하시겠습니까?");
    		 if(con) {      
    		  formObj.attr("action", "${root}admin/testnoticedelete/${adminNoticeOne.article_id}");
    		  formObj.submit();
    		 }
   		});
    </script>

</body>
</html>