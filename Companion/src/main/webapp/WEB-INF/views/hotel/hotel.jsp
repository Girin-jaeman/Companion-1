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
    <title>Companion::컴패니언</title>
</head>
<body>
<!-- section -->
<section class="section">
  <div class="row">
    <div class="navleft col-lg-1.5 col-md-1.5 col-sm-2.5">
      <div class="list-group">
        <a href="#" class="list-group-item active">예약하기</a>
        <a href="#" class="list-group-item">이용안내</a>
        <a href="#" class="list-group-item">서비스소개</a>
        <a href="#" class="list-group-item">돌보미소개</a>
        <a href="#" class="list-group-item">호텔위치</a>
      </div>
    </div>
  	<div class="container col-lg-10.5 col-md-10.5 col-sm-9.5">
      <!-- 예약하기 설명 -->
      <div class="reserve--left">
        <!--
        <img id="reserveDog" src="../imgs/hotel/reserve_dog.jpg" alt="강아지사진">
        -->
      </div>
      <!-- 예약하기 form -->
      <div class="reserve--right">
        <form class="form-horizontal">
          <!-- 보호자명 -->
          <div class="form-group">
            <label for="companionName" class="col-sm-2 control-label">${list}</label>
            <div class="col-sm-5">
              <input type="text" class="form-control" id="companionName" placeholder="보호자명을 입력하세요.">
            </div>
          </div>
          <!-- 반려동물 이름 -->
          <div class="form-group">
            <label for="animalName" class="col-sm-2 control-label">반려동물 이름</label>
            <div class="col-sm-5">
              <input type="text" class="form-control" id="animalName" placeholder="반려동물 이름을 입력하세요.">
            </div>
          </div>
          <!-- 연락처 -->
          <div class="form-group">
            <label for="companionNumber" class="col-sm-2 control-label">연락처</label>
            <div class="col-sm-5">
              <input type="tel" class="form-control" id="companionNumber" placeholder="010-0000-0000">
            </div>
          </div>
          <!-- Datepicker -->
          <div class="form-group">
            <label for="datepicker" class="col-sm-2 control-label">체크인</label>
            <div class="col-sm-5">
              <input type="text" class="form-control" name="checkIn" id="datepicker" placeholder="체크인 날짜를 선택하세요.">
            </div>
          </div>
          <div class="form-group">
            <label for="datepicker" class="col-sm-2 control-label">체크아웃</label>
            <div class="col-sm-5">
              <input type="text" class="form-control" name="checkOut" id="datepicker2" placeholder="체크아웃 날짜를 선택하세요.">
            </div>
          </div>
          <!-- 반려동물 품종 -->
          <div class="form-group">
            <label for="animalBreed" class="col-sm-2 control-label">반려동물 품종</label>
            <div class="col-sm-5">
              <input type="text" class="form-control" id="animalBreed" placeholder="반려동물 품종을 입력하세요.">
            </div>
          </div>
          <!-- 반려동물 나이 -->
          <div class="form-group">
            <label for="animalAge" class="col-sm-2 control-label">반려동물 나이</label>
            <div class="col-sm-5">
              <input type="number" class="form-control" id="animalAge" placeholder="반려동물 나이를 입력하세요.">
            </div>
          </div>
          <!-- 기타/주의사항 -->
          <div class="form-group">
            <label for="etc" class="col-sm-2 control-label">기타/주의사항</label>
            <div class="col-sm-5">
              <textarea name="etc" id="etc" cols="50" rows="10" placeholder="기타/주의사항 항목에 대한 내용을 200자 이내로 기재해주세요."></textarea><br/>
              <span id="counter">(0 / 200)</span>
            </div>
          </div>
          <!-- 개인정보 수집 및 이용 동의 라디오 버튼 -->
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="checkbox">
                <label>
                  개인정보 수집 및 이용 동의
                  <input type="radio" name="agree-radio"> 동의
                  <input type="radio" name="agree-radio"> 미동의
                </label>
              </div>
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
  </div>
</section>
</body>
</html>