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
<!-- 
<label for="member_id">*ID</label>
<input type="text" name="member_id" id="member_id" placeholder="ID">
<button type="button" id="id_chk_btn">중복확인</button></br>
 -->
	<h1>내 정보 조회/수정</h1>
	<table>
		<tr>
			<td>이름</td>
			<td>${sessionScope.memberVo.member_name }</td>
		</tr>
		<tr>
			<td>비밀번호 변경</td>
			<td>
				<label for="member_pw">현재비밀번호</label>
				<input type="password" name="member_pw" id="member_pw"></br>
				<input type="hidden" name="pw_chk" id="pw_chk" value="${sessionScope.memberVo.member_pw }">
				<input type="hidden" name="id_chk" id="id_chk" value="${sessionScope.memberVo.member_id }">
				
				<label for="pw_change">변경비밀번호</label>
				<input type="password" name="pw_change" id="pw_change"></br>
				
				<label for="pw_change_chk">변경비밀번호 확인</label>
				<input type="password" name="pw_change_chk" id="pw_change_chk">
				
				<button type="button" id="pw_change_btn">변경</button>
			</td>
		</tr>
		<tr>
			<td>일반전화</td>
			<td>
				${sessionScope.memberVo.member_tel }</br>
				<input type="text" name="member_tel" id="member_tel">
				<button type="button" id="tel_change_btn">일반전화 변경</button>
			</td>
		</tr>
		<tr>
			<td>휴대전화</td>
			<td>
				${sessionScope.memberVo.member_phone }
				<input type="text" name="member_phone" id="member_phone">
				<button type="button" id="phone_change_btn">휴대전화 변경</button>
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>
				${sessionScope.memberVo.member_email }
				<input type="text" name="member_email" id="member_email">
				<button type="button" id="email_change_btn">이메일 변경</button>
			</td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td>
				${sessionScope.memberVo.member_addr1 }
				${sessionScope.memberVo.member_addr2 }
				${sessionScope.memberVo.member_addr3 }
			</td>
		</tr>
	</table>
	
	<script src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#pw_change_btn").click(function(){
				var member_pw=$("#member_pw").val();
				var pw_chk=$("#pw_chk").val();
				var pw_change=$("#pw_change").val();
				var pw_change_chk=$("#pw_change_chk").val();
				var id_chk=$("#id_chk").val();
				var pwData={"pw_change" : pw_change, "id_chk" : id_chk};
				if(member_pw=="" || pw_change=="" || pw_change_chk==""){
					alert("비밀번호 3칸중 빈칸 있음.");
					return;
				}
				if(member_pw != pw_chk){
					alert("입력된 현재 비밀번호가 틀렸습니다.");
					return;
				}
				if(pw_change != pw_change_chk){
					alert("변경 비밀번호끼리 서로 다름.");
					return;
				}
				$.ajax({
					type : "POST",
					url : "/companion/mypage/pwchange",
					data : pwData,
					success : function(result){
						if(result==1){
							alert("비밀번호 변경완료");
							location.reload();
						}else{
							alert("에러.");
						}
					}
				});
			});
		});
	
	</script>
</body>
</html>