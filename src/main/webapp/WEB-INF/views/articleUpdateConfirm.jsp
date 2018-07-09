<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link rel="icon" href="icon.png">
</head>
<body class="userbody">
<p class="mypagebuttonmargin">
<button type="submit" name="mypage" value="mypage" onclick="location.href='mypage.html'" class="mypagebutton1">マイページ</button>
</p>
<div class="article_main">


<!-- つぶやきならタイトル欄を表示しない -->
<p>タイトル：<input type="text" name="title" maxlength="40" style="width: 540px;" value="本日の献立"readonly></p>

<p>本文：</p>
<textarea style="resize: none;" name="main" cols="125" rows="35" readonly>ああああ
<br>作り方はとっても簡単。
<br>
<div>
ああああ
</div>
<div>
<strong>【あ】</strong>

<br>
</textarea>





<p>カテゴリ：<input type="text" name="art_category" style="width: 300px" readonly></p>


<p style="text-align: center;"><button type="submit" name="" value="" onclick="location.href='articleUpdateResult.html'" class="mypagebuttoncollect">投稿する</button>

<button type="submit" name="" value="" onclick="location.href='articleUpdate.html'" class="mypagebuttoncollect">戻る</button></p>
</div>

</body>
</html>