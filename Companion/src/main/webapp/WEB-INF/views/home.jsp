<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>컴페니온::Companion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel="stylesheet" type="text/css" href="${root}css/bootstrap.css">
    <script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${root }js/bootstrap.js"></script>
    <style type="text/css">

/*header css start*/    
    	.navbar navbar-default navbar-fixed-top{
    	height: 18px;
        z-index: 1;
    	}

    	#navbar-fix-top{
    	position: sticky; 
        background-color: #B5C7D3;
    	font-size: 12sx;
    	margin: 0px;
    	}

    	#navbar-fix-top>div{
        list-style: none;
        margin: 0px;
        padding: 0px;
   		}
   		
    	#navbar-fix-top>div>ul{
        margin-right: 10px;
        padding: 0px;
    	
    	}
    	#navbar-fix-top>div>ul>li{
        text-decoration: underline;
    	}
    	#navbar-fix-top>div>ul>li>a{
    	}
    	
		#bs-example-navbar-collapse-1{
    	margin: 0px;
		padding: 0px;
    	background-color: #0F4C81;
    	}
    	
    	.navbar-brand {
	    float: left;
	    padding: 10px;
	    height: 100px;
		}
		
		#bs-example-navbar-collapse-1>ul>li{
		margin-top: 27px;
		line-height: 100px;
		text-align: center;
    	}
		#bs-example-navbar-collapse-1>ul>li>a{
		color: white;
		}
/*header css end*/ 	
	
/*container css start*/ 	
		.container {
		height: 1000px;
		background-color: yellow;
		}
    	
    	.item img{
    	margin: 0px auto;
    	}
/*container css end*/ 	

		#footer{
		width: 100%;
		height: 100px;
		background-color: #0F4C81;
		margin-top: 200px;
		color: white;
		font-size: 12px;
		    }
		#footer>table>tr>td{
		text-align:center;
		line-height: 100px;
		}
    </style>
</head>
<body>
<!-- header start -->
<nav class="navbar navbar-default navbar-fixed-top" id="navbar-fix-top">
    <div class="header-fix" id="fix-top">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
</nav>

<nav class="navbar navbar-default">
<!--   <div class="container-fluid"> -->
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <a class="navbar-brand" href="#">
	 	<img alt="Brand" src="${root }imgs/dog1.png">
	  </a>
      <ul class="nav navbar-nav">
        <li><a href="#">주문하기</a></li>
        <li><a href="#">예약하기</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">호텔소개 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">이용안내</a></li>
            <li><a href="#">위치안내</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">룸 소개</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">돌보미 소개</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">알림 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">공지사항</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">이벤트</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">FAQ</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
<!--   </div>/.container-fluid -->
</nav>
<!-- header end -->
	<div class="container">
	    <div class="row">
	    	<div class="col-md-12">
<!-- content start -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${root }imgs/pic1.png" alt="pic1">
      <div class="carousel-caption">
        pic1
      </div>
    </div>
    <div class="item">
      <img src="${root }imgs/pic2.png" alt="pic2">
      <div class="carousel-caption">
        pic2
      </div>
    </div>
    <div class="item">
      <img src="${root }imgs/pic3.png" alt="pic3">
      <div class="carousel-caption">
        pic3
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <h1>컴페니온 인덱스 페이지</h1>




	    
<!-- content end -->	    
	    	</div>
	    </div>
	</div>
<!-- footer start -->	
<div id="footer" >       
	<table>
		<tr>
		<td>
		상호:COMPANION | 대표 : 최길동 | 개인정보보호관리책임자 : 최길동 | 전화 : 02-0000-0000 | 이메일 : companion@companion.com<br />
		주소 : 서울특별시 서초구 강남대로 459 (서초동, 백암빌딩) 3층 | 사업자등록번호 : 000-00-00000 | 통신판매 : 2020-서울강남-0000 호스팅제공자 : ㈜Companion<br />
		[홈페이지 이용약관] [개인정보취급방침]<br />
		Copyright ⓒ 2020 COMPANION All rights reserved.
		</td>
		</tr>
	</table>   
</div>	
	
<!-- footer end -->	
</body>

</html>
