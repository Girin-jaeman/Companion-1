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
	<form name="memberadd" method="post" autocomplete="off">
		<label for="member_id">*ID</label>
		<input type="text" name="member_id" id="member_id" placeholder="ID">
		<button type="button" id="id_chk_btn">중복확인</button></br>
		
		
		<label for="member_pw">*PW</label>
		<input type="password" name="member_pw" id="member_pw" placeholder="PW"></br>

		<label for="member_pw_chk">*PW확인</label>
		<input type="password" id="member_pw_chk" placeholder="PW확인"></br>
		
		<label for="member_name">*NAME</label>	
		<input type="text" name="member_name" id="member_name" placeholder="name"></br>
		
		<label for="member_tel">TEL</label>
		<input type="text" name="member_tel" id="member_tel" placeholder="일반전화"></br>
		
		<label for="member_phone">*PHONE</label>
		<input type="text" name="member_phone" id="member_phone" placeholder="phone number contains -"></br>
		
		<label for="member_email">*E-MAIL</label>
		<input type="text" name="member_email" id="member_email" placeholder="E-mail contains @"></br>
		
		<label>*ADDRESS</label>
		<p>
		
			<input type="text" name="member_addr1" id="sample2_postcode" placeholder="5글자 숫자" readonly="readonly">
			<input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"></br>
			
			<input type="text" name="member_addr2" id="sample2_address" placeholder="주소" readonly="readonly"></br>
			
			<input type="text" name="member_addr3" id="sample2_detailAddress" placeholder="상세주소"></br></br>
			
			<input type="hidden" id="sample2_extraAddress" placeholder="참고항목"></br></br>
			
			<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
				<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
			</div>
			
		</p>
		
		
		<input type="hidden" name="member_grade" id="member_grade" value="2">
		
		<button type="button" id="memberadd_btn">가입</button>
		<button type="button" onclick="history.back();">뒤로</button>
	</form>
	
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	   
	 // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample2_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample2_postcode").value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample2_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
	
	</script>
	<script src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#memberadd_btn").click(function(){
				var member_id=$("#member_id").val();
				var member_pw=$("#member_pw").val();
				var member_pw_chk=$("#member_pw_chk").val();
				var member_name=$("#member_name").val();
				var member_phone=$("#member_phone").val();
				var member_email=$("#member_email").val();
				var member_addr1=$("#sample2_postcode").val();
				var member_addr2=$("#sample2_address").val();
				var member_addr3=$("#sample2_detailAddress").val();
				if(member_pw!=member_pw_chk){
					alert("비밀번호가 서로 일치하지 않습니다. 확인해 주세요.");
					return;
				}
				if(member_id=="" || member_pw=="" || member_pw_chk=="" || member_name=="" || member_phone=="" || member_email=="" || member_addr1=="" || member_addr2=="" || member_addr3==""){
					alert("필수 사항을 입력해 주세요.");
					return;
				}
				document.memberadd.submit();
			});
			$("#idchk_btn").click(function(){
				if(member_id==""){
					alert("입력된 아이디가 없습니다. 확인해 주세요.");
					return;
				}			
				document.memberadd.submit();
			});
			
			$("#id_chk_btn").click(function(){
				var member_id=$("#member_id").val();
				var userData={"member_id" : member_id};
				if(member_id==""){
					alert("아이디를 입력해 주시기 바랍니다.");
					return;
				}else{
					$.ajax({
						type : "POST",
						url : "/companion/login/idchk",
						data : userData,
						dataType : "json",
						success : function(result){
							if(result==0){
								alert("사용이 가능한 아이디입니다.");
							}else if(result==1){
								alert("이미 존재하는 아이디입니다. \n다른 아이디를 사용해 주세요.");
							}
						}
						
					});
				}
			});
		});
	</script>
</body>
</html>