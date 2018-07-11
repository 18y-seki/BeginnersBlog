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
<link href="css/article.css" rel="stylesheet">
<link href="css/commons.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/overflow.css" rel="stylesheet">

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
<script src="//cdn.ckeditor.com/4.10.0/full/ckeditor.js"></script>

</head>
<body>

	<div class="top3">
		<header>
		<h1>
			<p>
				<a href="top">Beginner's Blog</a>
			</p>
		</h1>
		</header>
	</div>


	<div>
		<p class="syokyuT2">
		<h2>中級投稿フォーム</h2>
		</p>
		</div>
		<div class="buttonT">
			<p>

				<a href="normal" class="square_btn">チュートリアルを確認</a>
			<div class="article_main">

				<form action="normalContributionConfirm" method="post"
					enctype="multipart/form-data">

					<div>
						タイトル：<input type="text" name="title" maxlength="40"
							style="width: 540px;">
					</div>


					<textarea name="editor1">


		</textarea>

					<script>
						CKEDITOR.replace('editor1', {
							uiColor : '#fff8d3',
							width : 600,
							height : 300,

							contentsCss : [ "./css/samples.css", ],

							toolbar : [
									"/",
									[ "Font", "FontSize", "TextColor",
											"Underline", "Bold", "Italic",
											"RemoveFormat" ],

									[ "-", ], ],
						});
					</script>


					<div class="kategorii">
						<br> カテゴリ：<input type="text" name="art_category"
							style="width: 300px;">
						</p>
					</div>
					</fieldset>


					<a href="hardContributionConfirm" class="square_btn">確認画面へ</a> <a
						href="usersMypage" class="square_btn">マイページへ</a>
			</div>

			</form>
		</div>

		<footer> <a href="top">管理者ログイン</a> </footer>
</body>
</html>