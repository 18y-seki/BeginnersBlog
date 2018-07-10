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
<link href="css/commons.css" rel="stylesheet" type="text/css" />
<link href="css/moc.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script
	src="http://meerkat.jarodtaylor.com/download/jquery.meerkat.1.3.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"
	type="text/javascript"></script>
</head>
<body id="top">

	<div id="top">
		<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
		</header>
	</div>

	<div align="right">
		<a class="button" href="usersMypage">マイページ</a>
	</div>

	<div align="center">
		<div id="header">

			<p class="jokyuT">初級チュートリアル</p>
			<div>
				初級ステップへようこそ！<br> まずはブログを書くことに慣れましょう！<br>
				テキストエリアをクリックして文字を入力してみましょう。<br> <br>（（（画像）））<br>
				<br> すると、背景テンプレートがいくつか表示されます。<br>
				今回はテンプレート1のグリーンの背景を選んで見ましょう。<br> <br>（（（画像）））<br>
				<br> グリーンの背景が適用されました。<br> 続いて、デザインタブの右のパターンタブをクリックしましょう。<br>
				<br>（（（画像）））<br>
				<br> すると、パターンテンプレートがいくつか表示されます。<br>
				今回はテンプレート3のお花のパターンを選んで見ましょう。<br> <br>（（（画像）））<br>
				<br>
			</div>
			<div align="center">
				<div id="footer">
					<br>

				</div>
			</div>
			<div id="footer">
				<br>

				<br> <a class="button" href="easyContribution">作ってみよう！</a>
			</div>
		</div>

		<div class="scroll_button">
			<a href="top">ページTOPへ戻る</a>
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