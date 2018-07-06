<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
	<meta charset="UTF-8">
	<title>Beginner's Blog</title>
	<link rel="icon" href="img/icon.png">
	<link rel="stylesheet" href="css/commons.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- jquery読み込み -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<!-- スクロール -->
<script type="text/javascript">
$(function(){
    $("a[href^=#]").click(function(){
    var speed = 1200;
    var href = $(this).attr("href");
    var target = $(href == "#" || href == ""?"html" : href);
    var position = target.offset().top;

    $("body, html").animate({scrollTop:position}, speed, "swing");
    return false;
    });
});
</script>
</head>
<body>
	<div class="top">
		<header>
			<h1><p><a href="top">Beginner's Blog</a></p></h1>
		</header>
	</div>
		<div class="container">
		<div class="center" class="column">
				<div align="center">
			<div class="card">
			  <a href="sample1">
					<div class="image-box1"></div>
					<div class="title-box">
					<img src="image/articleicon.png" alt="アイコン" style="width: 100px;">
						<p class="title"><strong>今日のご飯</strong></p>
					</div>
					<div class="line"></div>
					<div class="desc-box">
						<p class="desc">ご飯</p>
						<p>2017/06/29</p>
					</div>
				</a>
			</div>

			<div class="card">
			<a href="sample2">
				<div class="image-box3"></div>
				<div class="title-box">
				<img src="image/articleicon.png" alt="サンプル2写真" style="width: 100px;">
					<p class="title"><strong>オススメのパン屋さん</strong></p>
				</div>
				<div class="line"></div>
				<div class="desc-box">
					<p class="desc">パン</p>
					<p>2018/06/30</p>
				</div>
				</a>
			</div>
						<div class="card">
			  <a href="sample3">
					<div class="image-box2"></div>
					<div class="title-box">
					<img src="image/articleicon.png" alt="サンプル3写真" style="width: 100px;">
						<p class="title"><strong>新潟県のご当地グルメ</strong></p>
					</div>
					<div class="line"></div>
					<div class="desc-box">
						<p class="desc">麺</p>
						<p>2018/07/02</p>
					</div>
				</a>
			</div>
						<br><br>
	<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 前へ</a>
			<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 1</a>
				<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 2</a>
				<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 3</a>
				<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 4</a>
					<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 次へ</a>
	<br>
				<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 最初のページへ</a>
				<a href="#" class="square_btn">
	<i class="fa fa-caret-right"></i> 最後のページへ</a>
			<div id="left" class="column">
				<fieldset>
					<div id="box1 name" class="">名前:田中</div>
					<div id="box2 seibetu" class="">性別:男</div>
					<div id="box3 hitokoto" class="">ひとこと：お肉大好き！</div>
			</fieldset>
			<fieldset>
			<div id="j-calendar2"></div>
			<script type="text/javascript" src="js/calendar_demo.js"></script>
			</fieldset>
<div>
<div class="yohaku">
<p> </p>
</div>
		<div class="scroll_button">
   			 <a href="#">ページTOPへ戻る</a>
		</div>
	</div>
</body>
</html>