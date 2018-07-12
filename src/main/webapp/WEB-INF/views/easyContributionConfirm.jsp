<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="css/article.css" rel="stylesheet">
<link href="css/commons.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/overflow.css" rel="stylesheet">
<link rel="icon" href="icon.png">
<!-- jquery読み込み -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"
	type="text/javascript"></script>
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

	<div id="top3">
		<header>
		<h1>
			<a href="top">
				Beginner's Blog
			</a>
		</h1>
		</header>
	</div>
	<fieldset class="containe">
		<div class="column">
			<div id="content">
				<div class="text">
					<div class="article_main">
						<div style="text-align: center">
							<div class="simpleblock">
								<!-- つぶやきならタイトル欄を表示しない -->
								<div>
									<strong>タイトル：Liveだ！</strong>
								</div>
								<div class="text">
									<p>凛として時雨のライブにいきました。</p>
									おすすめのアーティストなので是非聞いてください。<br>
									${imageName}<br>
								</div>
								<p class="kategori">カテゴリ：音楽 投稿日時:2018/06/29</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</fieldset>
	<br>
	<br>
	<br>
	<br>
		<p class="mypagebuttonmargin">
			<button type="submit" value="mypage"
				onclick="location.href='usersMypage" class="mypagebutton1">マイページ</button>
		</p>
	<div class="scroll_button">
		<a href="#">ページTOPへ戻る</a>
	</div>
</body>
</html>