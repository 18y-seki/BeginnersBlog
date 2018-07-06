<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="image/Blog_icon">
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
		<h1>
			<a href="top.html">Beginner's Blog</a>
		</h1>
		</header>

	</div>
	<fieldset class="containe">
		style='background-color: #CCCCCC;&gt;
		<div>
			<div id="center" class="column">
				<div id="content">
					<div class="title">
						<h2>今日のご飯</h2>
					</div>
					<div class="text">
						私の好きなお店<b><a href="http://www.y-shokukobo.com/menu/lunch/">やまや</a></b>
						<br> 明太子と高菜が食べ放題だよ！ <br> <img src="img/s_0n7p.jpg">

						<p class="kategori">カテゴリ：おすすめのご飯 投稿日時:2018/06/30</p>
					</div>
				</div>
			</div>
		</div>
	</fieldset>

	<div class="hidden_box">
		<label for="label1" style="text-align: center;">コメントを見る！</label> <input
			type="checkbox" id="label1" />


		<fieldset class="containeC">
			<div class="overflow">
				<h3>コメント</h3>
				<p>名前:吉田</p>
				<div class="comment">東京駅の八重洲北口にあるパン屋さんもオススメですよ！</div>
				<p class="nitiji">2018/06/30</p>
				<br>
				<p>名前:田中</p>
				<div class="comment">明太子が食べたいです！！</div>
				<p class="nitiji">2018/06/30</p>
				<br>
			</div>
		</fieldset>
	</div>
		<br>
	<fieldset class="containe">
		<h3>コメントフォーム</h3>
		<form>
			※コメントは最大1000文字まで<br>
			<p>名前:</p>
			<input type="text" name="comenntname" style="width: 200px;"><br>
			<p>コメント:</p>
			<textarea name="kanso" rows="4" cols="40"></textarea>
			<br> <input type="submit" value="送信">
		</form>
	</fieldset>
	<fieldset class="containe">
		<div align="center">
			<div id="page">
				<div style="">
					<a href="sample1" class="square_btn"><i
						class="fa fa-caret-right"></i>前の記事へ</a> <a href="sample3"
						class="square_btn"><i class="fa fa-caret-right"></i>次の記事へ</a>
				</div>
			</div>
		</div>
	</fieldset>

	<div class="prof2">
		<a href="articleUpdate">記事の編集</a> &lt;
		<a href="articleDelete"> 記事の削除</a>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="scroll_button">
		<a href="#">ページTOPへ戻る</a>
	</div>
</body>
</html>