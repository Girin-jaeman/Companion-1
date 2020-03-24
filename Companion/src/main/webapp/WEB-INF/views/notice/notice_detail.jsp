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
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${root}css/bootstrap/bootstrap.css">
	<!-- Our Custom CSS -->
	<link rel="stylesheet" href="${root}css/main.css">
	<!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <title>컴패니언::Companion::공지사항 상세보기</title>
</head>
<body>
<div class="wrapper">
	<!-- Sidebar -->
	<jsp:include page="../common/sidebar.jsp"/>
	<!-- Content [start] -->
	<div id="content">
	<!-- Navbar [start] -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
			
			    <button type="button" id="sidebarCollapse" class="btn btn-info">
			        <i class="fas fa-align-left"></i>
			        <span>메뉴</span>
			    </button>
			    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
			        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			        aria-expanded="false" aria-label="Toggle navigation">
			        <i class="fas fa-align-justify"></i>
			    </button>
			
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			        <ul class="nav navbar-nav ml-auto">
			            <li class="nav-item">
			                <a class="nav-link" href="${root }notice/">공지사항</a>
			            </li>
			            <li class="nav-item">
			                <a class="nav-link" href="${root }event/">이벤트</a>
			            </li>
			            <li class="nav-item">
			                <a class="nav-link" href="${root}faq/">FAQ</a>
			            </li>
			        </ul>
			    </div>
			</div>
		</nav>
		<!-- Navbar [end] -->
		<!-- Maincontent [start] -->
		<div class="maincontent">
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
					</tr>
				</tbody>
			</table>	
			<a href="${root}notice/list">목록</a>
			<!-- Footer [start] -->
			<div id="footer">
			    <hr class="mb-2">
			    <footer class="companion-footer">
			            <div class="paragraph-group">
			                <p>상호:COMPANION | 대표 : 최길동 | 개인정보보호관리책임자 : 최길동 | 전화 : 02-000-000 ㅣ 이메일 : <a href="mailto:companion@companion.com" target="_top">companion@companion.com</a></p>
			                <p>주소:서울특별시 서초구 강남대로 459 (서초동, 백암빌딩) 3층 | 사업자등록번호 : 000-00-00000 | 통신판매 : 2020-서울강남-0000</p>
			                <p>호스팅제공자:(주)Companion</p>
			                <br/>
			                <a href="#">[홈페이지 이용약관]</a> <a href="#">[개인정보취급방침]</a><br/>
			                <p>Copyright ⓒ 2020 COMPANION All rights reserved.</p>
			            </div>
			    </footer>
			</div>
			<!-- Footer [end] -->
		</div>
		<!-- Maincontent [end] -->
	</div>
	<!-- Content [end] -->
</div>
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