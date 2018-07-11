<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="icon">
<link href="css/moc.css" rel="stylesheet">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
</head>
<body style="text-align: center;">
<!-- 投稿ページ　編集時もここに飛ぶ -->
<!-- 会員ログイン時 -->



<!-- 編集時のみ出る -->
<!-- <a href="blogmng">記事管理ページに戻る</a> -->

<div id="top">
	<header>
		<h1><p><a href="top">Beginner's Blog</a></p></h1>
	</header>
</div>

<div id="kumakuma">
<figure>
<img src="image/help1.jpg" class="kuma1"><img src="image/help2.jpg" class="kuma2">
</figure>
</div>

<p class="prof">
 <a href="top">TOP画面へ</a>
 </p>


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