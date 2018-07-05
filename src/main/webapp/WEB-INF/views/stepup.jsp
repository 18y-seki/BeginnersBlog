<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="image/Blog_icon">
<link href="css/commons.css" rel="stylesheet">
<link href="css/moc.css" rel="stylesheet">
<link href="css/step.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/newss.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="http://meerkat.jarodtaylor.com/download/jquery.meerkat.1.3.min.js" type="text/javascript"></script>

</head>
<body id="">

<div id="top">
	<header>
		<h1><p>Beginner's Blog</p></h1>
	</header>
</div>


<div align="center">
	<div id="header">
	<p class="stepup">-ステップアップ-<br></>
		<p class="stepupP">段階を踏んでレベルアップしよう！</>
		</div>
	</div>

<div class="three">

<div class="ch">
<figure class="rela">
<img src="pchand.jpg" />

<figcaption class="abso">
<p class="profS"><a href="Beginner.html" class="syo">初級</a></p></figcaption>
</figure>
</div>

<div class="ch">
<figure class="rela">
<img src="pcwater.jpg" />
<figcaption class="abso">
<p class="profS"><a href="Medium.html" class="chu">中級</a></p></figcaption>
</figure>
</div>

<div class="ch">
<figure class="rela">
<img src="pcwhite.jpg" />
<figcaption class="abso">
<p class="profS"><a href="Medium.html" class="zyo">上級</a></p></figcaption>
</figure>
</div>

</div>



	<div class="syokyuP">
		<p>文字の入力と画像の挿入が出来るよ！<br>
			チュートリアルを見る<input type="checkbox" checked name="riyu" value="2">
		</p>
	</div>
		<div class="tyukyuP">
		<p >文字の編集と画像の編集が出来るよ！<br>
			チュートリアルを見る<input type="checkbox" checked name="riyu" value="2">
		</p>
	</div>
		<div class="jokyuP">
		<p>ページのデザインが出来るよ！<br>
			チュートリアルを見る<input type="checkbox" checked name="riyu" value="2">
		</p>
	</div>

	<div class="sample1">
	<img src="sample1.png">
	</div>

		<div id="footer">
		<br><br><br><br><br>

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
<p class="prof">
  <a href="usersMypage.html">マイページに戻る</a>
</p>
</body>

</html>