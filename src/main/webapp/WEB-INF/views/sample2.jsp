<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

</head>
<body>

	<div id="top3">
		<header>
		<h1><a href="top">Beginner's Blog</a></h1>
		</header>

	</div>
	<fieldset class="containe">
		<div id="container">
			<div id="center" class="column">
				<div id="content">
					<div class="title">

						<h2>晴れ！</h2>
					</div>
					<div class="text">
						<div>
							<b> 今日の天気は晴天です！ <br> <font color="blue" size="5">青空</font>がとても綺麗です。
								<br> ちなみに沖縄の海の写真だよ！

							</b>
						</div>
						<img src="img/47334.jpg"> <br> <br>
						<br>
						<br>
						<br>
						<br>
						<p class="kategori">カテゴリ：海 投稿日時:2018/07/02</p>
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<div>
		<fieldset class="containeC">
			<div class="overflow">
				<h3>コメント</h3>
				<p>名前:山田</p>
				<div class="comment">とても綺麗ですね！！！</div>
				<p class="nitiji">2018/07/03</p>
				<br>
			</div>
		</fieldset>
		<fieldset class="containe">
			<h3>コメントフォーム</h3>
			<form>
				※コメントは最大1000文字まで<br> <label>名前:</label><input type="text"
					name="comenntname" style="width: 200px;"><br> <label>コメント:</label>
				<textarea name="kanso" rows="4" cols="40"></textarea>
				<br> <input type="submit" value="送信">
			</form>
		</fieldset>
		<fieldset class="containe">
			<div align="center">
				<div id="page">
					<div style="">
						<a href="sample2" class="square_btn"><i
							class="fa fa-caret-right"></i>前の記事へ</a> <a href="sample1"
							class="square_btn"><i class="fa fa-caret-right"></i>次の記事へ</a>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
	<div class="prof2">
		<a href="articleUpdate">記事の編集</a> <a href="articleDelete">記事の削除</a>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="scroll_button">
		<a href="top">ページTOPへ戻る</a>
	</div>

</body>
</html>