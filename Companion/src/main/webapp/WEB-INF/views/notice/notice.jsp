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
    <title>Companion::컴패니언::공지사항</title>
    <script type="text/javascript">
 	//이전 버튼 이벤트
    function fn_prev(page, range, rangeSize) {
    		var page = ((range - 2) * rangeSize) + 1;
    		var range = range - 1;
    		var url = "${pageContext.request.contextPath}/board/getBoardList";
    		url = url + "?page=" + page;
    		url = url + "&range=" + range;
    		location.href = url;
    	}
      //페이지 번호 클릭
    	function fn_pagination(page, range, rangeSize, searchType, keyword) {
    		var url = "${pageContext.request.contextPath}/board/getBoardList";
    		url = url + "?page=" + page;
    		url = url + "&range=" + range;
    		location.href = url;	
    	}
    	//다음 버튼 이벤트
    	function fn_next(page, range, rangeSize) {
    		var page = parseInt((range * rangeSize)) + 1;
    		var range = parseInt(range) + 1;
    		var url = "${pageContext.request.contextPath}/board/getBoardList";
    		url = url + "?page=" + page;
    		url = url + "&range=" + range;
    		location.href = url;
    	}
    </script>
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
    <!-- 페이지네이션 -->
    <!-- pagination{s} -->
		<div id="paginationBox">
			<ul class="pagination">
				<c:if test="${pagination.prev}">
					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
				</c:if>
				<c:forEach begin="${pagination.startPage}"
					end="${pagination.endPage}" var="idx">
					<li
						class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a
						class="page-link" href="#"
						onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
							${idx} </a></li>
				</c:forEach>
				<c:if test="${pagination.next}">
					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_next('${pagination.range}', 
						'${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
				</c:if>
			</ul>
		</div>
		<!-- pagination{e} -->
	</section>
</body>
</html>