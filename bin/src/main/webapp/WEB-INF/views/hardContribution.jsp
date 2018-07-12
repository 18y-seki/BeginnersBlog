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
		<h2>上級投稿フォーム</h2>
		</p>
		<div class="buttonT">
			<p>

				<a href="stepup" class="square_btn">チュートリアルを確認</a>
			<div class="article_main">
				<form:form action="hardContributionConfirm" modelAttribute="form">
					<div>
						タイトル：
						<form:input path="title" maxlength="40" style="width: 540px;" />
						背景：
						<form:select path="bgImage">
							<option value="white">白</option>
							<option value="#4169e1">青</option>
							<option value="red">赤</option>
							<option value="yellow">黄色</option>
							<option value="green">緑</option>
							<option value="silver">銀色</option>
							<option value="#d3d3d3">灰色</option>
							<option value="#ffa500">オレンジ</option>
							<option value="gold">金色</option>
							<option value="#f5f5dc">ベージュ</option>
							<option value="#adff2f">黄緑</option>
							<option value="#add8e6">水色</option>
							<option value="black">黒</option>
						</form:select>
					</div>
					<form:textarea path="articleText" id="editor1" ></form:textarea>
					<script>
						CKEDITOR
								.replace('editor1',
										{
											uiColor : '#ffdad3',
											width : 600,
											height : 300,
											contentsCss : [
													"./css/article.css",
													"./css/topBack.css",
													"./css/article.css",
													"./css/commons.css", ],
											toolbar : [
													"/",
													[ "Font", "FontSize",
															"TextColor",
															"Underline",
															"Bold", "Italic",
															"Link",
															"RemoveFormat" ],
													[ "-", ], ],
										});
					</script>
					<div class="kategorii">
						カテゴリ：<form:input path="category" style="width: 300px;" />
					</div>
					</fieldset>
					<form:button class="square_btn">確認画面へ</form:button>
					<a href="usersMypage" class="square_btn">マイページへ</a>
				</form:form>
			</div>
		</div>
</body>
</html>