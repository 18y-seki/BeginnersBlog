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

<link href="css/stepup.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script
	src="http://meerkat.jarodtaylor.com/download/jquery.meerkat.1.3.min.js"
	type="text/javascript"></script>

</head>
<body>

	<div class="top">
		<h1><a href="top">Beginner's Blog</a></h1>
	</div>

	<div align="center">

		<p class="stepup">
			-ステップアップ-<br>
		</p>
		<p class="stepupP">
			段階を踏んでレベルアップしよう！<br>
		</p>
		<p class="stepupP2">
			好きなレベルを選んで記事を投稿しよう！<br> チュートリアルを見たい時は、「チュートリアルを見る」の横にある<br>
			ボックスをクリックして、チェックを入れてからレベルを選択してね！
		</p>

	</div>

	<div class="three">

		<div class="ch">
			<form action="easy">
				<div class="rela">
					<img src="image/pchand.jpg" />
					<div class="abso">
						<p class="profS">
						<input type="submit" class="chu" value="初級">

						</p>
					</div>
				</div>
				<div class="box26">
					<span class="box-title">できること</span>
					<p>
						文字の入力と画像の挿入！<br> チュートリアルを見る<input type="checkbox" checked
							name="riyu" value="2">
					</p>
				</div>
			</form>
			<p class="center kiji">実際の投稿記事↓</p>

			<div class="sample1">
				<img src="image/sample1.png">
			</div>
		</div>

		<div class="ch">
			<form action="normal">
				<div class="rela">
					<img src="image/pcwater.jpg" />
					<div class="abso">
						<p class="profS">
							<input type="submit" class="chu" value="中級">
						</p>
					</div>
				</div>
				<div class="box27">
					<span class="center box-title">できること</span>
					<p>
						文字の編集！<br> チュートリアルを見る<input type="checkbox" checked
							name="riyu" value="2">
					</p>
				</div>
			</form>
			<p class="center kiji">実際の投稿記事↓</p>

			<div class="sample1">
				<img src="image/sample1.png">
			</div>
		</div>

		<div class="ch">
			<form action="hard">
				<div class="rela">
					<img src="image/pcwhite.jpg" class="whi" />
					<div class="abso">
						<p class="profS">
							<input type="submit" class="zyo" value="上級">
						</p>
					</div>
				</div>
				<div class="box28">
					<span class="center box-title">できること</span>
					<p>
						ページのデザインの変更！<br> チュートリアルを見る<input type="checkbox" checked
							name="riyu" value="2">
					</p>
				</div>
			</form>

			<p class="center kiji">実際の投稿記事↓</p>

			<div class="sample1">
				<img src="image/sample1.png">
			</div>
		</div>
	</div>

	<div class="footer">
		<br>

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

	<p class="prof">
		<a href="usersMypage">マイページへ</a>
	</p>
</body>


</html>