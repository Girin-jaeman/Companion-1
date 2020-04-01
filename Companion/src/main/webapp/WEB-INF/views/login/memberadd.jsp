<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>컴패니언::Companion</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${root }css/bootstrap/bootstrap.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root }css/main.css">
    <link rel="stylesheet" href="${root }css/home.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
        integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
        integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
        crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
        
        <!-- Sidebar  -->
		<jsp:include page="../common/sidebar.jsp"/>

        <!-- Page Content  -->
        <div id="content">
            <div id="container">

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
	                        <c:choose>
	                            <c:when test="${sessionScope.memberVo.member_id==null }">
	                                <ul class="nav navbar-nav ml-auto">
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="${root }login">로그인</a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a class="nav-link" href="${root }login/memberadd">회원가입</a>		
	                                    </li>
	                                </ul>
	                            </c:when>
	                            <c:otherwise>
	                                <script>
	                                	window.history.back();
	                                </script>
	                            </c:otherwise>
	                            
	                        </c:choose>
	                    </div>
	                </div>
	            </nav>
	            
	            
				<div class="maincontent">
				
					<form name="memberadd" method="post" autocomplete="off">
						<label for="member_id">*ID</label>
						<input type="text" name="member_id" id="member_id" placeholder="ID">
						<button type="button" id="id_chk_btn">중복확인</button></br>
						<!-- 아이디 체크여부  //1 안함  2 함//-->
						<input type="hidden" name="id_chk_value" id="id_chk_value" value="1">
						
						
						<label for="member_pw">*PW</label>
						<input type="password" name="member_pw" id="member_pw" placeholder="8자 이상. 영문.숫자.특수문자 포함"></br>
				
						<label for="member_pw_chk">*PW확인</label>
						<input type="password" id="member_pw_chk" placeholder="PW확인"></br>
						
						<label for="member_name">*NAME</label>	
						<input type="text" name="member_name" id="member_name" placeholder="name"></br>
						
						<label for="member_tel">TEL</label>
						<input type="text" name="member_tel" id="member_tel" placeholder="일반전화"></br>
						
						<label for="member_phone">*PHONE</label>
						<input type="text" name="member_phone" id="member_phone" placeholder="phone number contains -"></br>
						
	            <c:choose>
	            	<c:when test="${k_email!=null }">
	            	<!-- 카톡 로그인을 통해서 왔을때 -->
						<label for="member_email">*E-MAIL</label>
						<input type="email" name="member_email" id="member_email" value="${k_email }" readonly="readonly">
					<!-- 이메일 중복확인,인증은 한 것으로 처리 -->
						<input type="hidden" name="email_chk_value" id="email_chk_value" value="2">
						<!-- 이메일 인증여부 //1안함 2함// -->
						<input type="hidden" name="email_overlap_chk_value" id="email_overlap_chk_value" value="2">
						<!-- 이메일 중복확인여부 //1 안함 2 함 // -->
	            	</c:when>
	            	<c:otherwise>
	            	<!-- 그냥 회원가입으로 왔을 떄 -->
						<label for="member_email">*E-MAIL</label>
						<input type="email" name="member_email" id="member_email" placeholder="E-mail contains @">
						<button type="button" id="email_overlap_chk">중복확인</button>
						<button type="button" id="email_chk_btn">인증번호받기</button></br>
						<p name="email_chk_panel" id="email_chk_panel" style="display:none">
							<input type="text" name="member_email_chk" id="member_email_chk" placeholder="받으신 인증번호를 입력해 주세요.">
							<button type="button" id="email_chk_btn2">확인</button>
						</p>
						<input type="hidden" name="email_random_msg" id="email_random_msg" value="">
						<input type="hidden" name="email_chk_value" id="email_chk_value" value="1">
						<!-- 이메일 인증여부 //1안함 2함// -->
						<input type="hidden" name="email_overlap_chk_value" id="email_overlap_chk_value" value="1">
						<!-- 이메일 중복확인여부 //1 안함 2 함 // -->
	            	</c:otherwise>
	            </c:choose>
						</br>
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
	
				</div>
			</div>
			
        <div id="footer">
            <!-- test main content end-->
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

		</div>
	</div>
	
	<!-- script start -->
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
        var width = 400; //우편번호서비스가 들어갈 element의 width
        var height = 600; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 3; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth + 200) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth - 100) + 'px';
    }
	
	</script>
	
	<script src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
	
		//email validation 처리 함수
		function verifyEmail(member_email){
			var regExp=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			
			if(member_email.match(regExp) != null){
				return "ok";
			}else{
				return "no";
			}
		}
		
		//password validation 처리 함수
		function verifyPassword(pw,options){
			// default options (allows any password)
			 var o = {
			  lower:    0,
			  upper:    0,
			  alpha:    0, /* lower + upper */
			  numeric:  0,
			  special:  0,
			  length:   [0, Infinity],
			  custom:   [ /* regexes and/or functions */ ],
			  badWords: [],
			  badSequenceLength: 0,
			  noQwertySequences: false,
			  noSequential:      false
			 };
			 
			 for (var property in options)
			  o[property] = options[property];
			 
			 var re = {
			   lower:   /[a-z]/g,
			   upper:   /[A-Z]/g,
			   alpha:   /[A-Z]/gi,
			   numeric: /[0-9]/g,
			   special: /[\W_]/g
			  },
			  rule, i;
			 
			 // enforce min/max length
			 if (pw.length < o.length[0] || pw.length > o.length[1])
			  return false;
			 
			 // enforce lower/upper/alpha/numeric/special rules
			 for (rule in re) {
			  if ((pw.match(re[rule]) || []).length < o[rule])
			   return false;
			 }
			 
			 // enforce word ban (case insensitive)
			 for (i = 0; i < o.badWords.length; i++) {
			  if (pw.toLowerCase().indexOf(o.badWords[i].toLowerCase()) > -1)
			   return false;
			 }
			 
			 // enforce the no sequential, identical characters rule
			 if (o.noSequential && /([\S\s])\1/.test(pw))
			  return false;
			 
			 // enforce alphanumeric/qwerty sequence ban rules
			 if (o.badSequenceLength) {
			  var lower   = "abcdefghijklmnopqrstuvwxyz",
			   upper   = lower.toUpperCase(),
			   numbers = "0123456789",
			   qwerty  = "qwertyuiopasdfghjklzxcvbnm",
			   start   = o.badSequenceLength - 1,
			   seq     = "_" + pw.slice(0, start);
			  for (i = start; i < pw.length; i++) {
			   seq = seq.slice(1) + pw.charAt(i);
			   if (
			    lower.indexOf(seq)   > -1 ||
			    upper.indexOf(seq)   > -1 ||
			    numbers.indexOf(seq) > -1 ||
			    (o.noQwertySequences && qwerty.indexOf(seq) > -1)
			   ) {
			    return false;
			   }
			  }
			 }
			 
			 // enforce custom regex/function rules
			 for (i = 0; i < o.custom.length; i++) {
			  rule = o.custom[i];
			  if (rule instanceof RegExp) {
			   if (!rule.test(pw))
			    return false;
			  } else if (rule instanceof Function) {
			   if (!rule(pw))
			    return false;
			  }
			 }
			 
			 // great success!
			 return true;
			}
		
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
				var id_chk_value=$("#id_chk_value").val();
				var email_overlap_chk_value=$("#email_overlap_chk_value").val();
				if(member_pw!=member_pw_chk){
					alert("비밀번호가 서로 일치하지 않습니다. 확인해 주세요.");
					return;
				}
				if(member_id=="" || member_pw=="" || member_pw_chk=="" || member_name=="" || member_phone=="" || member_email=="" || member_addr1=="" || member_addr2=="" || member_addr3==""){
					alert("필수 사항을 입력해 주세요.");
					return;
				}
				if(id_chk_value=="1"){
					alert("아이디 중복확인을 해주세요.");
					return;
				}
				if(email_overlap_chk_value=="1"){
					alert("이메일 중복확인을 해주세요.");
					return;
				}
				var checkPassword=verifyPassword(member_pw,{
					length : [8,20],
					lower : 1,
					numeric : 1,
					special : 1
				});
				if(checkPassword != true){
					alert("비밀번호 양식이 올바르지 않습니다.\n8자이상 / 영문.숫자.특수문자 조합");
					return;
				}
				document.memberadd.submit();
			});
			
			/* id 중복체크버튼 */
			$("#id_chk_btn").click(function(){
				document.getElementById("id_chk_value").value="1";
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
								alert("이미 사용중인 아이디입니다.\n다른 아이디를 사용해 주세요.");
								return;
							}
						}
						
					});
					document.getElementById("id_chk_value").value="2";
				}
			});
			
			/* email 중복체크버튼 */
			$("#email_overlap_chk").click(function(){
				document.getElementById("email_overlap_chk_value").value="1";
				var member_email=$("#member_email").val();
				var userData={"member_email" : member_email};
				if(member_email==""){
					alert("이메일을 입력해 주시기 바랍니다.");
					return;
				}else{
					$.ajax({
						type : "POST",
						url : "/companion/login/emailoverlapchk",
						data : userData,
						dataType : "json",
						success : function(result){
							if(result==0){
								alert("사용이 가능한 이메일입니다.");
							}else if(result==1){
								alert("이미 사용중인 이메일입니다.\n다른 이메일을 사용해 주세요.")
								return;
							}
						}
					
					});
					document.getElementById("email_overlap_chk_value").value="2";
				}
			});
			
			/* email 인증버튼 */
			$("#email_chk_btn").click(function(){
				document.getElementById("email_chk_value").value="1";
				$('#email_chk_panel').show();
				var member_email=$("#member_email").val();
				var userData={"member_email" : member_email};
				var checkEmail=verifyEmail(member_email);
				var email_overlap_chk_value=$("#email_overlap_chk_value").val();
				if(email_overlap_chk_value=="1"){
					alert("이메일 중복확인을 먼저 해주시기 바랍니다.");
					return;
				}else if(checkEmail=="no"){
					alert("이메일 양식이 올바르지 않습니다.");
					return;
				}else{
					$.ajax({
						type : "POST",
						url : "/companion/login/emailchk",
						data : userData,
						dataType : "json",
						success : function(randomMsg){
							if(randomMsg==null){
								alert("전송실패");
								return;
							}else{
								alert("전송완료");
								document.getElementById("email_random_msg").value=randomMsg;
							}
						}
					});
				}
			});
			
			/* email 인증 번호확인버튼 */
			$("#email_chk_btn2").click(function(){
				var email_random_msg=$("#email_random_msg").val();
				var member_email_chk=$("#member_email_chk").val();
				var email_chk_value=$("#email_chk_value").val();
				if(member_email_chk==""){
					alert("인증번호를 입력해 주세요.");
					return;
				}else if(member_email_chk!=email_random_msg){
					alert("인증번호가 일치하지 않습니다.");
					return;
				}else{
					alert("이메일 인증 완료");
					document.getElementById("email_chk_value").value="2";
				}
				
			});
			
		});
	</script>
	
    <!-- Popper.JS -->
    <script src="${root }js/bootstrap/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="${root }js/bootstrap/bootstrap.js"></script>
    <!-- MAIN JS -->
    <script src="${root }js/main.js"></script>
    <!-- script end -->
    
</body>
</html>