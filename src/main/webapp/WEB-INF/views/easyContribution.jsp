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
<link href="css/easyCon.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/overflow.css" rel="stylesheet">
<link rel="icon" href="image/icon.png">
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
	<div id="top">
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
	</div>

	<div>
		<p class="syokyuT2">
		<h2>初級投稿フォーム</h2>
		</p>
		<div class="buttonT">

			<a href="easy" target=”_blank”class="square_btn">チュートリアルを確認</a>
			<div class="article_main">

				<form:form action="easyContributionConfirm" modelAttribute="form"
					method="post" enctype="multipart/form-data">

					<label>タイトル：</label>
					<form:input path="title" maxlength="30" style="width: 480px;" />

					<fieldset>
						<legend>画像挿入</legend>
						<input type="file" name="img">
					</fieldset>

					<fieldset>
						<div class="text"><br>
						<textarea style="width: 600px; height: 200px;"></textarea><br>
<br>
							<div class="kategorii">
								<label>カテゴリ</label>
								<form:input path="category_01" style="width: 300px;" value="" />
							</div>
							<br>
						</div>
					</fieldset>

					<form:button class="square_btn">確認画面へ</form:button>
					<a href="usersMypage" class="square_btn">マイページへ</a>

				</form:form>
			</div>
		</div>
	</div>

	<p>Copyright © 2018 Beginner's Blog All Rights Reserved.</p>
</body>
</html>