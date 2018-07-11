<!DOCTYPE html>
<html>
<head>
<title>Beginner's Blog</title>
<link href="icon.png" rel="image/Blog_icon">

<link href="css/easy.css" rel="stylesheet" >

<script src="http://code.jquery.com/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="http://meerkat.jarodtaylor.com/download/jquery.meerkat.1.3.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<div  class="top">

	<header>
		<h1><p><a href="top.html">Beginner's Blog</a></p></h1>
	</header>

</div>
<div  align="center">
<p class="my">
	<a href="usersMypage.html">マイページへ</a>
</p>
	</div>
	<br>

<div class="back">
<div align="center">
	<div class="start">

<div class="box4">
	<p>初級チュートリアル</p>
</div>

		<div class="bun">
		初級ステップへようこそ！<br>
		まずはブログを書くことに慣れましょう！<br>
		テキストエリアをクリックして文字を入力してみましょう。<br>
		<br>（（（画像）））<br><br>
		すると、背景テンプレートがいくつか表示されます。<br>
		今回はテンプレート1のグリーンの背景を選んで見ましょう。<br>
		<br>（（（画像）））<br><br>
		グリーンの背景が適用されました。<br>
		続いて、デザインタブの右のパターンタブをクリックしましょう。<br>
		<br>（（（画像）））<br><br>
		すると、パターンテンプレートがいくつか表示されます。<br>
		今回はテンプレート3のお花のパターンを選んで見ましょう。<br>
		<br>（（（画像）））<br><br>
	</div>
	<div align="center">
<div>


		</div>
		<div class="footer">
		<br><br><br>

	</div>
</div>
<div class="footer">
		<br><br><br>
		<p class="let">
		 <a href="easyContribution.html">投稿しよう！</a>
		</p>
	</div>
</div>

</div>

	<div class="scroll_button">
		<a href="#">ページTOPへ戻る</a>
	</div>

<script type="text/javascript">
$(function(){
    $("a[href^=#]").click(function(){
    var speed = 1200;
    var href = $(this).attr("href");
    var target = $(href == "#" || href == ""?"html" : href);
    var position = target.offset().top;

    $("body, html").animate({scrollTop:position}, speed, "swing");
    return false;
    });
});
</script>


</body>
</html>