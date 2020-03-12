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
    <title>Companion::컴패니언::예약하기</title>
</head>
<body>
<!-- section -->
<section class="section">
	<div class="row">
		<!-- 예약하기 왼쪽(호텔예약설명) -->
		<div class="reserve--left">
			<h1>예약하기</h1>
		</div>
		<!-- 예약하기 오른쪽(입력폼) -->
		<div class="reserve--right">
			<!-- 예약하기 form -->
			<form class="form-horizontal" method="post">
				<!-- Datepicker -->
				<div class="form-group">
					<label for="datepicker" class="col-sm-2 control-label">체크인</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="rsv_checkin" id="datepicker" placeholder="체크인 날짜를 선택하세요.">
					</div>
				</div>
				<div class="form-group">
					<label for="datepicker" class="col-sm-2 control-label">체크아웃</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="rsv_checkout" id="datepicker2" placeholder="체크아웃 날짜를 선택하세요.">
					</div>
				</div>
				<!-- 반려동물 품종 -->
				<div class="form-group">
					<label for="animalBreed" class="col-sm-2 control-label">반려동물 품종</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="rsv_type" id="animalBreed" placeholder="반려동물 품종을 입력하세요.">
					</div>
				</div>
				<!-- 반려동물 나이 -->
				<div class="form-group">
					<label for="animalAge" class="col-sm-2 control-label">반려동물 나이</label>
					<div class="col-sm-5">
						<input type="number" class="form-control" name="rsv_age" id="animalAge" placeholder="반려동물 나이를 입력하세요.">
					</div>
				</div>
				<!-- 기타/주의사항 -->
				<div class="form-group">
					<label for="etc" class="col-sm-2 control-label">기타/주의사항</label>
					<div class="col-sm-5">
						<textarea name="rsv_msg" id="etc" cols="50" rows="10" placeholder="기타/주의사항 항목에 대한 내용을 200자 이내로 기재해주세요."></textarea><br/>
						<span id="counter">(0 / 200)</span>
					</div>
				</div>
				
				<!-- 예약상담신청 버튼 -->
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success btn-lg btn-block">예약상담신청</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
</body>
</html>