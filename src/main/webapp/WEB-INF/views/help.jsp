<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="icon">
<link href="css/help.css" rel="stylesheet">
</head>
<body style="text-align: center;">
	<!-- 投稿ページ　編集時もここに飛ぶ -->
	<!-- 会員ログイン時 -->

	<!-- 編集時のみ出る -->
	<!-- <a href="blogmng.html">記事管理ページに戻る</a> -->

	<div class="top">
		<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
		</header>
	</div>

<div class="back">

	<div class="kumakuma">
		<figure> <img src="image/help11.jpg" class="kuma1">
		<br><br>
		<img src="image/help22.jpg" class="kuma2"> </figure>
	</div>

<br><br>

	<p class="prof">
		<a href="top">TOP画面へ</a>
	</p>

</div>

	<script type="text/javascript">
		$(function() {
			$("a[href^=#]").click(function() {
				var speed = 1200;
				var href = $(this).attr("href");
				var target = $(href == "#" || href == "" ? "html" : href);
				var position = target.offset().top;

				$("body, html").animate({
					scrollTop : position
				}, speed, "swing");
				return false;
			});
		});
	</script>
</body>
</html>