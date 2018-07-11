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

<link rel="icon" href="icon.png">
<link href="css/normal.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script
	src="http://meerkat.jarodtaylor.com/download/jquery.meerkat.1.3.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"
	type="text/javascript"></script>

</head>
<body>

	<div class="top">
		<header>
		<h1>
				<a href="top">Beginner's Blog</a>

		</h1>
		</header>

	</div>

	<div align="center">
		<p class="my">

			<a class="button" href="usersMypage">マイページ</a>
		</p>
	</div>
	<br>
	<div class="back">
		<div align="center">
			<div class="start">

				<div class="box4">
					<p>中級チュートリアル</p>
				</div>
				<div class="bun">
					中級ステップへようこそ！<br> 中級では初級で扱った文字や画像を編集することができます！<br>
					まずは右上にあるデザインタブをクリックしましょう。<br> <br>（（（画像）））<br> <br>
					すると、背景テンプレートがいくつか表示されます。<br> 今回はテンプレート1のグリーンの背景を選んで見ましょう。<br>
					<br>（（（画像）））<br> <br> グリーンの背景が適用されました。<br>
					続いて、デザインタブの右のパターンタブをクリックしましょう。<br> <br>（（（画像）））<br>
					<br> すると、パターンテンプレートがいくつか表示されます。<br>
					今回はテンプレート3のお花のパターンを選んで見ましょう。<br> <br>（（（画像）））<br> <br>
				</div>

				<div align="center">
					<div></div>
					<div class="footer">
						<br> <br> <br>

					</div>
				</div>

				<div id="footer">
					<br> <br> <br>
					<p class="let">
						<a href="normalContribution">投稿しよう！</a>
					</p>
				</div>
			</div>
		</div>


		<div class="scroll_button">
			<a href="top">ページTOPへ戻る</a>
		</div>

		<script type="text/javascript">
				$(function() {
					$("a[href^=#]")
							.click(
									function() {
										var speed = 1200;
										var href = $(this).attr("href");
										var target = $(href == "#"
												|| href == "" ? "html" : href);
										var position = target.offset().top;
										$("body, html").animate({
											scrollTop : position
										}, speed, "swing");
										return false;
									});
				});
			</script>
	</div>
</body>
</html>