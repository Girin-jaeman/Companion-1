<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		var IMP=window.IMP;
	IMP.init('imp14855754');
	alert('아니 왜대체?')
	})


function requestPay(){
	 // IMP.request_pay(param, callback) 호출
    IMP.request_pay({ // param
        pg: "inicis",
        pay_method: "card",
        merchant_uid: "ORD20180131-0000011",
        name: "노르웨이 회전 의자",
        amount: 64900,
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = "결제가 완료되었습니다.";
            msg += "고유ID : " + rsp.imp_uid;
            msg += "상점 거래ID : " + rsp.merchant_uid;
            msg += "결제 금액 : " + rsp.paid_amount;
            msg += "카드 승인번호 : " + rsp.apply_num;
        } else {
            var msg = "결제에 실패하였습니다.";
            msg += "에러내용 : " + rsp.error_msg;
        }
        alert(msg);
    });
  }
	


</script>
</head>
<body>
<button onclick="requestPay()" type="button">결제하기</button>
<button type="button" class="btn btn-secondary btn-lg">취소</button> 




</body>
</html>