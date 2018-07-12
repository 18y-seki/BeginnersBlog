<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<header>
		<h1>
				<a href="top">
					Beginner's Blog
				</a>
		</h1>
		</header>
	</div>

		<h2 class="syokyuT2">
			初級投稿フォーム
		</h2>

		<div class="buttonT">
			<a href="easy" class="square_btn">チュートリアルを確認</a>
			<div class="article_main">
				<form:form action="easyContributionConfirm" modelAttribute="form" method="post"
					enctype="multipart/form-data">
					<div>
						タイトル：<input type="text" name="title" maxlength="30"
							style="width: 480px;">
					</div>
					<fieldset>
						<input type="file" name="file"><br>
					</fieldset>
					<fieldset>
						<div class="text">
							<form:textarea path="articleText" />
							<div class="kategorii">
								カテゴリ<form:input path="category" style="width: 300px;" />
							</div>
						</div>
					</fieldset>
					<form:button>確認</form:button>
				</form:form>
					<a href="usersMypage" class="square_btn">マイページへ</a>
			</div>
		</div>
		<footer>
			<p>
				Copyright © 2018 Beginner's Blog All Rights Reserved.
			</p>
		</footer>
</body>
</html>