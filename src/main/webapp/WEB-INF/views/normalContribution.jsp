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
<link href="image/icon.png" rel="Blog_icon">
<link href="css/article.css" rel="stylesheet">
<link href="css/commons.css" rel="stylesheet">

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

	<div id="top3">
		<header>
		<h1>
			<a href="top">Beginner's Blog</a>
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
			<form:form action="normalContributionConfirm" modelAttribute="form">
				<div>
					タイトル：
					<form:input path="title" maxlength="40" style="width: 540px;" />
				</div>
				<div class="editor">
					<form:textarea path="articleText" id="editor1" />
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
											"RemoveFormat" ], [ "-", ], ],
						});
					</script>
				</div>

				<div class="kategorii">
					<br> カテゴリ：
					<form:input path="category" style="width: 300px;" />
				</div>



				<form:button class="square_btn">確認画面へ</form:button>
				<a href="usersMypage" class="square_btn">マイページへ</a>


			</form:form>
		</div>
		</div>
</body>
</html>