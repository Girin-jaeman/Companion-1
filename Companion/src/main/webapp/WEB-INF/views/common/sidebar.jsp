<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>

	<!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Companion</h3>
                <strong>Comp.</strong>
            </div>

            <ul class="list-unstyled components">
                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-home"></i>
                        쇼핑하기
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                    

                        <li>
                            <a href="/companion/order/productMain?c=100">사료</a>
                        </li>
                        <li>
                            <a href="/companion/order/productMain?c=200">간식</a>
                        </li>
                        <li>
                            <a href="/companion/order/productMain?c=300">장난감</a>
                        </li>
                        <li>
                            <a href="/companion/order/productMain?c=400">미용용품</a>
                        </li>
                        <li>
                            <a href="/companion/order/productMain?c=500">목욕용품</a>
                        </li>
                        <li>
                            <a href="/companion/order/productMain?c=600">위생용품</a>
                        </li>
                        <li>
                            <a href="/companion/order/productMain?c=700">산책용품</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#hotelSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-copy"></i>
                        호텔서비스
                    </a>
                    <ul class="collapse list-unstyled" id="hotelSubmenu">
                        <li>
                            <a href="/companion/hotel/infouse">이용안내</a>
                        </li>
                        <li>
                            <a href="/companion/hotel/reservation">예약하기</a>
                        </li>
                        <li>
                            <a href="/companion/hotel/preroom">룸미리보기</a>
                        </li>
                        <li>
                            <a href="/companion/hotel/infocare">돌보미정보</a>
                        </li>
                        <li>
                            <a href="/companion/hotel/infoloc">위치정보</a>
                        </li>
                    </ul>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-copy"></i>
                        알림
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="/companion/notice/">공지사항</a>
                        </li>
                        <li>
                            <a href="/companion/event/">이벤트</a>
                        </li>
                        <li>
                            <a href="/companion/faq/">FAQ</a>
                        </li>
                    </ul>
                </li>
            </ul>
            
                 <c:choose>
                     <c:when test="${sessionScope.memberVo.member_id==null }">
                         <ul class="list-unstyled conn">
                             <li>
                                 <a href="${root }login" class="nav-link">로그인</a>
                             </li>
                             <li>
                                 <a href="${root }login/memberadd" class="nav-link">회원가입</a>		
                             </li>
                         </ul>
                     </c:when>
                     <c:otherwise>
                         <ul class="list-unstyled conn">
                             <p>${sessionScope.memberVo.member_name }님이 로그인 중입니다.</p>
                             <li>
                                 <a href="${root }mypagechk" class="nav-link">마이페이지</a>
                             </li>
                             <li>
                                 <a href="${root }logout" class="nav-link">로그아웃</a>
                             </li>
                         </ul>
                     </c:otherwise>
                 </c:choose>
        </nav>
        
    <!-- jQuery -->
    <script src="${root }js/jquery-1.12.4.js"></script>
	<!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    
	<script type="text/javascript">
		$(document).ready(function () {
			$('#sidebarCollapse').on('click', function () {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>

