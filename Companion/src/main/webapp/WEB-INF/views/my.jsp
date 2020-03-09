<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel="stylesheet" href="${root }css/bootstrap.css"/>
   	<style type="text/css">
		div>span:nth-child(1){
			background-color: red;
			font-size: 50px;
		}
		div>span:nth-child(3){
			background-color: blue;
			font-size: 30px;
		}
		div>span:nth-child(4){
			background-color: gray;
			font-size: 20px;
		}
		div:nth-child(3)>a{
			width: 100%;
			height: 100%;
		}
		div:nth-child(4)>a{}
		div:nth-child(5)>a{}
		div:nth-child(6)>a{}
	</style>
	<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${root }js/bootstrap.js"></script>
    <title>컴패니언::Companion</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">1<br/><br/><br/><br/></div>
    </div>
    <div class="row">
        <div class="col-md-1">2</div>
        <div class="col-md-3">
        	<span>이순신</span><br/>
        	<span>admin님</span>
        	<span>회원정보변경</span>
       	</div>
        <div class="col-md-2">
        	<a class="btn btn-default" href="#" role="button">Link</a>
       	</div>
        <div class="col-md-2">
        	<a class="btn btn-default" href="#" role="button">Link</a>
       	</div>
        <div class="col-md-2">
        	<a class="btn btn-default" href="#" role="button">Link</a>
       	</div>
        <div class="col-md-2">
        	<a class="btn btn-default" href="#" role="button">Link</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">1<br/><br/><br/><br/></div>
    </div>
</div>
</body>
</html>
