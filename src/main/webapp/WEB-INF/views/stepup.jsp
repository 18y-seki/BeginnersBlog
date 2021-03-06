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
<link href="css/commons.css" rel="stylesheet">
<link href="css/moc.css" rel="stylesheet">
<link href="css/step.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/newss.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script
	src="http://meerkat.jarodtaylor.com/download/jquery.meerkat.1.3.min.js"
	type="text/javascript"></script>

</head>
<body id="">

	<div id="top">
		<header>
		<h1>Beginner's Blog</h1>
		</header>
	</div>


	<div align="center">
		<div id="header">
			<p class="stepup">
				-ステップアップ-<br>
			</p>
			<p class="stepupP">段階を踏んでレベルアップしよう！</p>
		</div>
	</div>

	<div class="three">

		<div class="ch">
			<form action="easy">
				<figure class="rela"> <img src="pchand.jpg" /> <figcaption
					class="abso">
				<p class="profS">
					<input type="submit" class="syo" value="初級">
				</p>
				</figcaption></figure>

				<p>
					文字の入力と画像の挿入が出来るよ！<br> チュートリアルを見る

					<input type="checkbox" name="riyu" value="2" checked>
				</p>
			</form>
		</div>

		<div class="ch">
			<form action="normal">
				<figure class="rela"> <img src="pcwater.jpg" /> <figcaption
					class="abso">
				<p class="profS">
					<input type="submit" class="chu" value="中級">
				</p>
				</figcaption> </figure>

				<p>
					文字の編集と画像の編集が出来るよ！<br> チュートリアルを見る

					<input type="checkbox" name="riyu" value="2" checked>
				</p>
			</form>
		</div>

		<div class="ch">
			<form action="hard">
				<figure class="rela"> <img src="pcwhite.jpg" /> <figcaption
					class="abso">
				<p class="profS">
					<input type="submit" class="zyo" value="上級">
				</p>
				</figcaption> </figure>

				<p>
					ページのデザインが出来るよ！<br> チュートリアルを見る

					<input type="checkbox" name="riyu" value="2" checked>
				</p>
			</form>
		</div>

	</div>



	<div class="sample1">
		<img src="sample1.png">
	</div>

	<div id="footer">
		<br> <br> <br> <br> <br>

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