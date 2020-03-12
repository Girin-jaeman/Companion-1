<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Companion::컴패니언::공지사항 상세보기</title>
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
					<td colspan="2">${bean.ntc_title }</td>
				</tr>
				<tr>
					<td>조회수</td>	
					<td colspan="2">${bean.ntc_cnt }</td>
				</tr>
				<tr>
					<td>작성일</td>	
					<td colspan="2">${bean.ntc_date }</td>
				</tr>
				<tr>
					<td>내용</td>	
					<td colspan="2">${bean.ntc_content }</td>
				</tr>
				<tr>
					<td>이미지</td>	
					<td colspan="2">${bean.ntc_img }</td>
				</tr>
			</tbody>
		</table>	
		<a href="${root}notice/list">목록</a>
    </div>
</section>
</body>
</html>