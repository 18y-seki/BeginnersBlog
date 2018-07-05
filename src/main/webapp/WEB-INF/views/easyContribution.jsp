<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div id="top3">
		<header>
			<h1>
				<p>
					<a href="top.html">Beginner's Blog</a>
				</p>
			</h1>
		</header>
	</div>

<div>
<p class="syokyuT2"><h2>初級投稿フォーム</h2></p>
<div class="buttonT"><p>

<a href="easy.html" class="square_btn">チュートリアルを確認</a>

<div class="article_main">

<form action="easyContributionConfirm.html" method="post" enctype="multipart/form-data">

<div>タイトル：<input type="text" name="title" maxlength="30" style="width: 480px;"value="Liveだ！"></div>


<fieldset><legend>ボタン</legend>
<button type="button" class="html">画像挿入</button><input type="file" name="img">
</fieldset>
<fieldset>
<div class="text">
					<p>凛として時雨のライブにいきました。</p>

					おすすめのアーティストなので是非聞いてください。
					<br>
					<img src="img/resize_image.jpg">
					<br>
					<div class="kategorii">
					カテゴリ<input type="text" name="art_category" style="width: 300px;"value="音楽">
					</div>
					</fieldset>


<a href="easyContributionConfirm.html" class="square_btn">確認画面へ</a>
<a href="usersMypage.html" class="square_btn">マイページへ</a>
</div>
</form>
</div>
<footer>

<p>Copyright © 2018 Beginner's Blog All Rights Reserved.</p>

<a href="login_top.html" class="kanri">管理者ログイン</a>

</footer>
</body>
</html>