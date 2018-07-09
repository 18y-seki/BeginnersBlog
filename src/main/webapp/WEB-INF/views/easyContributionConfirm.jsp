<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

</head>
<body>

	<div id="top3">
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
	</div>

	<fieldset class="containe">
		<div>
			<div class="column">
				<div id="content">
					<div class="text">
						<p class="mypagebuttonmargin">
							<button type="submit" name="mypage" value="mypage"
								onclick="location.href='usersMypage.html'" class="mypagebutton1">マイページ</button>
						</p>
						<div class="article_main">

							<div style="text-align: center">
								<div class="simpleblock">
									<!-- つぶやきならタイトル欄を表示しない -->
									<div>
										<strong>タイトル：Liveだ！</strong>
									</div>
									<div class="text">
										<p>凛として時雨のライブにいきました。</p>

										おすすめのアーティストなので是非聞いてください。 <br> <img
											src="img/resize_image.jpg">
										<p class="kategori">カテゴリ：音楽 投稿日時:2018/06/29</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</fieldset>

	<div class="prof2">
		<a href="articleUpdate">記事の編集</a> <a href="articleDelete">記事の削除</a>
	</div>

	<br>
	<br>
	<br>
	<br>

	<div class="scroll_button">
		<a href="top">ページTOPへ戻る</a>
	</div>

</body>
</html>

