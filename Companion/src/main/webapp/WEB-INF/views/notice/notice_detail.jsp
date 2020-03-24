<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>컴패니언::Companion::공지사항 상세보기</title>
</head>
<body>
<!-- section -->
<section class="section">
	<!-- 공지사항 -->
	<div class="row">
		<table>
			<thead>
				<tr>
					<th>공지사항 글 보기 </th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td> 글 제목 </td>
					<td colspan="2">${noticeSelectOne.article_title }</td>
				</tr>
				<tr>
					<td>조회수</td>	
					<td colspan="2">${noticeSelectOne.article_count }</td>
					
				</tr>
				<tr>
					<td>작성일</td>	
					<td colspan="2">${noticeSelectOne.article_date }</td>
				</tr>
				<tr>
					<td>내용</td>	
					<td colspan="2">${noticeSelectOne.article_content }</td>
				</tr>
				<tr>
					<td>이미지</td>	
					<td><img alt="원본이미지" src="<spring:url value='${noticeSelectOne.article_image }'/>"/></td>
					<%-- <td>${noticeSelectOne.article_image }</td> --%>
				</tr>
			</tbody>
		</table>	
		<a href="${root}notice/list">목록</a>
    </div>
</section>
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    <!-- MAIN JS -->
    <script src="${root }js/main.js"></script>
</body>
</html>