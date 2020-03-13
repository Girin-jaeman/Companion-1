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
	<h1>로그인창</h1>
	<form name="login" method="post">
		<label for="mb_id">ID</label>
		<input type="text" name="mb_id" id="mb_id" placeholder="아이디 입력"></br>
		
		<label for="mb_pw">PW</label>
		<input type="password" name="mb_pw" id="mb_pw" placeholder="비밀번호 입력"></br>
		
		<button type="button" id="login_btn">로그인</button>
		<button type="button" onclick="history.back();">뒤로</button>	</br>
		<c:if test="${loginChk==false }">
			<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
		</c:if>	
	</form>
	
	<!-- jQuery -->
	<script src="${root}js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#login_btn").click(function(){
				var mb_id=$("#mb_id").val();
				var mb_pw=$("#mb_pw").val();
				if(mb_id==""){
					alert("아이디를 입력해 주세요.");
					return;
				}
				if(mb_pw==""){
					alert("비밀번호를 입력해 주세요.");
					return;
				}
				document.login.submit();
			});
		});
	</script>
</body>
</html>