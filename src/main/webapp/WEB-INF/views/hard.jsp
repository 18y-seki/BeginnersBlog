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
<link href="icon.png" rel="image/Blog_icon">

<link href="css/hard.css" rel="stylesheet">

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
			<a href="top.html">Beginner's Blog</a>
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
					<p>チュートリアル：上級</p>
				</div>
				<div class="bun">
					いよいよ最後のステップです！<br>
					上級ではこれまでの記事にデザインを加えることが出来ます！<br>

					①まずは右上にあるデザインタブをクリックしましょう。<br> <br>

					<img src="image/"><br> <br>

					すると、背景テンプレートがいくつか表示されます。<br>
					今回はテンプレート1のグリーンの背景を選んで見ましょう。<br><br>

					<img src="image/"><br> <br>

					グリーンの背景が適用されました。<br>

					②続いて、デザインタブの右のパターンタブをクリックしましょう。<br> <br>

					<img src="image/"><br><br>

					すると、パターンテンプレートがいくつか表示されます。<br>
					今回はテンプレート3のお花のパターンを選んで見ましょう。<br> <br>

					<img src="image/"><br>

										中級のステップは以上です！<br>
					それでは下のリンクをクリックして、記事を投稿してみましょう！<br> <br>


					<div align="center">
						<div></div>
						<div class="footer">
							<br> <br> <br>
							<p class="let">
								<a href="hardContribution">上級の記事投稿ページへ！</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="scroll_button">
			<a href="top">ページTOPへ戻る</a>
		</div>

		<script type="text/javascript">
						$(function() {
							$("a[href^=#]").click(
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