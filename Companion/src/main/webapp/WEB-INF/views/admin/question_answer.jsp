<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:url value="/" var="root"></c:url>
<c:url var="getList" value="/admin/answer_list"></c:url> <!-- 페이지네이션을위한 현재 페이지경로 설정 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/admin/main.css">
    <link rel="stylesheet" href="${root }css/admin/notice.css">
    <!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	<title>Companion::Q&A 목록</title>
</head>
<body>

			<h3>답변완료</h3>
			<table class="table table_layout">
			<colgroup>
        		<col class="col1">
        		<col class="col2">
        		<col class="col3">
        		<col class="col4">
        		<col class="col5">
        		<col class="col6"> 
        		
    		</colgroup>
			<thead>
				<tr>
					<th scope="row">글번호</th>
					<th scope="row">문의유형</th>
					<th scope="row">문의상태</th>
					<th scope="row">제목</th>
					<th scope="row">작성자</th>
					<th scope="row">문의일</th>
					<th scope="row">답변일</th>
				</tr>
			</thead>
			<tbody>
			<!-- forEach start -->
			<c:forEach items="${adminAnswerList }" var="bean" varStatus="status">
			<tr>
			<td>${(total-status.index)-(search.page-1)*search.listSize}</td>
			<td>${bean.question_type_name }</td>
			<td>${bean.question_state_name }</td>
			<td><a href="${root }admin/question_detail?article_id=${bean.question_id }&
					page=${search.page}&
					range=${search.range}&
					searchType=${search.searchType}&
					keyword=${search.keyword}">${bean.question_title }</a></td>
			<td>${bean.member_id }</td>
			<td>${bean.question_date }</td>
			<td>${bean.question_answerdate }</td>
			</tr>
			</c:forEach>
			</tbody>
			</table>
		
			<!-- pagination [start] -->
			<jsp:include page="../common/pagination.jsp">
				<jsp:param value="${search.prev }" name="prev"/>
				<jsp:param value="${search.next }" name="next"/>
				<jsp:param value="${search.page }" name="page"/>
				<jsp:param value="${search.range }" name="range"/>
				<jsp:param value="${search.rangeSize }" name="rangeSize"/>
				<jsp:param value="${search.startPage }" name="startPage"/>
				<jsp:param value="${search.endPage }" name="endPage"/>
			</jsp:include>
			<!-- pagination [end] -->




<!-- jQuery -->
<script src="${root }js/jquery-1.12.4.js"></script>
<!-- Popper.JS -->
<script src="${root }js/bootstrap/popper.js"></script>
<!-- Bootstrap JS -->
<script src="${root }js/bootstrap/bootstrap.js"></script>
<!-- MAIN JS -->
<script src="${root }js/main.js"></script>
<script type="text/javascript">
//검색 버튼
$("#search_Btn").click(function(e){
	e.preventDefault();
	var url = "${getList}";
	url = url + "?searchType=" + $('#searchType').val();
	url = url + "&keyword=" + $('#keyword').val();
	location.href = url;
	console.log(url);
});
</script>
</body>
</html>