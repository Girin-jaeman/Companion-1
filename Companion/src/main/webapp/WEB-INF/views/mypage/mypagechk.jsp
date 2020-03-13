<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호를 입력해 주세요.</h1>
	<form name="mypagechk" method="post">
		<label for="mb_pw">PW</label>
		<input type="password" name="mb_pw" id="mb_pw" placeholder="비밀번호 입력"></br>
		
		<button type="button" id="mypagechk_btn">확인</button>
		<button type="button" onclick="history.back();">뒤로</button>	</br>
	</form>
	<!-- jQuery -->
	<script src="${root}js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#mypagechk_btn").click(function(){
				var mb_pw=$("#mb_pw").val();
				if(mb_pw==""){
					alert("비밀번호를 입력해 주세요.");
					return;
				}else if(mb_pw!=${sessionScope.memberVo.mb_pw }){
					alert("비밀번호가 일치하지 않습니다.");
					return;
				}else if(mb_pw==${sessionScope.memberVo.mb_pw }){
					location.replace("mypage");
				}
			});
		});
	</script>
</body>
</html>