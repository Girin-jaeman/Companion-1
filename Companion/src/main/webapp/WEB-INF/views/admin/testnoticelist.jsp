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
	<h1>관리자 - 공지사항 리스트 페이지</h1>
	<a href="${root }admin/testnoticeadd">입력</a>
	<table>
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>날짜</th>
				<th>조회수</th>
				<th>이미지</th>
			</tr>
		</thead>
		<tbody>
		<!-- forEach start -->
		<c:forEach items="${list }" var="bean">
		<!-- param  -->
		<c:url value="testnoticedetail" var="id">
			<c:param name="ntc_id" value="${bean.ntc_id }"/>
		</c:url>
			<tr>
				<td><a href="${id }">${bean.ntc_id }</a></td>
				<td><a href="${id }">${bean.ntc_title }</a></td>
				<td><a href="${id }">${bean.ntc_content }</a></td>
				<td><a href="${id }">${bean.ntc_date }</a></td>
				<td><a href="${id }">${bean.ntc_cnt }</a></td>
				<td><a href="${id }">${bean.ntc_img }</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>