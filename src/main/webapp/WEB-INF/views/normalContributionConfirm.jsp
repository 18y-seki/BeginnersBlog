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

	<fieldset class="containe">
		<div>
			<div class="center" class="column">
				<div class="content">
					<div class="title">
						<strong>タイトル：${contribution.title}</strong>
					</div>
					<div class="text">
						${contribution.articleText}

						<p class="kategori">カテゴリ：${contribution.category} 投稿日時:2018-07-13</p>
					</div>
				</div>
			</div>
		</div>
	</fieldset>
	<form:form action="articleContributionResult" modelAttribute="form">
		<form:button class="square_btn">確認画面へ</form:button>
	</form:form>


	<div class="scroll_button">
		<a href="top">TOPページへ</a>
	</div>
</body>
</html>