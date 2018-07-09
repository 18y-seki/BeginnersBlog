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

	<div>
		<p class="syokyuT2">
		<h2>上級投稿フォーム</h2>
		</p>
		<div class="buttonT">
			<p>

				<a href="hard" class="square_btn">チュートリアルを確認</a>

			<div class="article_main">

				<form:form action="hardContributionConfirm" modelAttribute="form"
				method="post" enctype="multipart/form-data">

						<label>タイトル：</label>
						<form:input path="title" maxlength="40"
							style="width: 540px;" value="今日のご飯" />

					<fieldset>
						<legend>ボタン</legend>
						<button type="button" class="html">フォント変更</button>
						<button type="button" class="html">フォントカラー</button>
						<button type="button" class="html">フォントサイズ</button>
						<button type="button" class="html">下線</button>
						<button type="button" class="html">斜線</button>
						<button type="button" class="html">太文字</button>
						<button type="button" class="html">リンク</button>
						<button type="button" class="html">画像挿入</button>
						<input type="file" name="img">
					</fieldset>

					<fieldset>
						<div class="text">
							<b>私の好きなお店</b> <br> 明太子と高菜が食べ放題だよ！ <br> <img
								src="img/s_0n7p.jpg">

							<div class="kategorii">
								<label>カテゴリ：</label>
								<form:input path="art_category" style="width: 300px;" value="おすすめのごはん" />
							</div>
						</div>
					</fieldset>

					<a href="hardContributionConfirm" class="square_btn">確認画面へ</a>
					<a href="usersMypage" class="square_btn">マイページへ</a>
				</form:form>
			</div>
		</div>
	</div>
	<p>Copyright © 2018 Beginner's Blog All Rights Reserved.</p>
	<a href="login_top" class="kanri">管理者ログイン</a>
</body>
</html>