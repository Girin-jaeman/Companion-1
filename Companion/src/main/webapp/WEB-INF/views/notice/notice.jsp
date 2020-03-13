<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/" var="root"></c:url>
<c:url var="getList" value="/notice/list">></c:url> <!-- 페이지네이션을위한 현재 페이지경로 설정 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Companion::컴패니언::공지사항</title>
</head>
<body>
<!-- section -->
<section class="section">
	<!-- 공지사항 -->
	<div class="row">
		<h1>공지사항</h1>
		<span>총 ${total }건</span>
		<table>
            <thead>
                <tr>
                    <th>글번호</th>
                    <th>작성일</th>
                    <th>제목</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="bean">
                <tr>
                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_id }</a></td>
                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_date }</a></td>
                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_title }</a></td>
                    <td><a href="detail/${bean.ntc_id}">${bean.ntc_cnt }</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- pagination [start] -->
	<jsp:include page="../common/pagination.jsp">
		<jsp:param value="${pagination.prev }" name="prev"/>
		<jsp:param value="${pagination.next }" name="next"/>
		<jsp:param value="${pagination.page }" name="page"/>
		<jsp:param value="${pagination.range }" name="range"/>
		<jsp:param value="${pagination.rangeSize }" name="rangeSize"/>
		<jsp:param value="${pagination.startPage }" name="startPage"/>
		<jsp:param value="${pagination.endPage }" name="endPage"/>
	</jsp:include>
	<!-- pagination [end] -->
	</section>
</body>
</html>