<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
	<!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Companion Admin</h3>
                <strong>Comp.<br/>Admin</strong>
            </div>

            <ul class="list-unstyled components">
                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-clipboard-list"></i>
                        게시판 관리
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="#">
                            	<i class="fas fa-angle-right"></i>
                            	공지사항
                            </a>
                            <a href="#">
                            	<i class="fas fa-angle-right"></i>
                            	이벤트
                            </a>
                            <a href="#">
                            	<i class="fas fa-angle-right"></i>
                            	FAQ
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#hotelSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-shopping-cart"></i>
                        쇼핑몰 관리
                    </a>
                    <ul class="collapse list-unstyled" id="hotelSubmenu">
                        <li>
                            <a href="#">
                            	<i class="fas fa-angle-right"></i>
                            	#
                            </a>
                        </li>
                    </ul>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-address-card"></i>
                        회원 관리
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">
                            	<i class="fas fa-angle-right"></i>
                            	#
                            </a>
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
	<script type="text/javascript">
		$(document).ready(function () {
			$('#sidebarCollapse').on('click', function () {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>