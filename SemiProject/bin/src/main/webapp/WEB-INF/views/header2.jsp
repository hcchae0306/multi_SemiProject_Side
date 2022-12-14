<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--기본 초기화-->
    <style type="text/css">
        *{
            margin: 100; padding: 50;
            background-color: #121319;
            color: #f5f7ff;
            font-family: sans-serif;
        }
        a{ text-decoration: none;  
            color: lightgray;
            cursor: pointer;
        }
        img{ border: 0; }
        li{ display: inline-block; }
    </style>
    <!--헤더-->
    <style type="text/css">
        #main-header{
            height: 100px;
            position: relative;
            margin-top: 100px;
        }
        .header-title{
            position: absolute;
            width: 400px; height: 100px;
            left: 50%; 
            margin-left: -150px;
        }
        .header-menu{
            float: right; 
            margin-top: 10px;
            margin-right: 20px;
        }
        ul{
            float: left; width: 80px; text-align: center; margin-right: 10px;
        }
        .contents{
         float: left; 
       	margin-left: 20px;
        }
    </style>
    
    <!-- 배너 -->
    <style type="text/css">	
	/* banner */
	.banner {position: relative; width: 340px; height: 210px; top: 10px;  margin:0 auto; padding:0; overflow: hidden;}
	.banner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
	.banner ul li {float: left; width: 340px; height: 210px; margin:0; padding:0;}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script language="JavaScript">
	$(document).ready(function() {
		var $banner = $(".banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $length = $banner.children().length;//이미지의 갯수
		var rollingId;

		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
	}); 
</script>
</head>
<body>
<!--헤더-->
    <header id="main-header">
    
    <div class="contents">

		<div class="banner">
			<ul>
				<li><a href="https://siff.kr/"><img src="/image/보고타.jpg" width="340" height="210px"></a></li>
				<li><a href="https://www.pifff.fr/"><img src="/image/파리.jpg" width="340" height="210px"></a></li>
				<li><a href="https://festival.bogoshorts.com/"><img src="/image/서울.jpg" width="340" height="210px"></a></li>
			</ul>
		</div>
	</div>
    
    
        <div class="header-title">
            <a href="/mymovie/main"><img width="400" src="/image/logo.png"></a>
        </div>
        <nav class="header-menu">
            <ul>
                <li><a href="/mymovie/notice/list">공지사항</a></li>
            </ul>
            <ul>
                <li><a href="/member/mypage">마이페이지</a></li>
            </ul> 
        </nav>
    </header>
</body>
</html>