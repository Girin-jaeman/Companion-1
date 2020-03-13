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
<body>
	<h1>비밀번호를 입력해 주세요.</h1>
	<h1>${sessionScope.memberVo.member_pw }</h1>
	<form name="mypagechk" method="post" autocomplete="off">
		<label for="member_pw">PW</label>
		<input type="password" name="member_pw" id="member_pw" placeholder="비밀번호 입력"></br>
		<input type="hidden" name="pw_chk" id="pw_chk" value="${sessionScope.memberVo.member_pw }">
		
		<button type="button" id="mypagechk_btn">확인</button>
		<button type="button" onclick="history.back();">뒤로</button>	</br>
	</form>
	<!-- jQuery -->
	<script src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#mypagechk_btn").click(function(){
				var member_pw=$("#member_pw").val();
				var pw_chk=$('#pw_chk').val();
				if(member_pw==""){
					alert("비밀번호를 입력해 주세요.");
					return;
				}else if(member_pw!=pw_chk){
					alert("비밀번호가 일치하지 않습니다.");
					return;
				}else if(member_pw==pw_chk){
					location.replace("mypage");
				}
			});
		});
	</script>
</body>
</html>