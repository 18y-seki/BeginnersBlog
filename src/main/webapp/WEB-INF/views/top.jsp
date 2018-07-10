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
<link rel="icon" href="icon.png">
<link rel="stylesheet" href="css/commons.css">
<link rel="stylesheet" href="css/top.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- jquery読み込み -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"
	type="text/javascript"></script>
<!-- スクロール -->
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

</head>
<body>
	<div id="top">
		<h1>Beginner's Blog</h1>

		<p id="headM">
			このサイトはブログ初心者に向けたブログサイトです！<br>
		</p>
		<p id="headS">
			<span id="under"><a href="help">このサイトについて詳しく知る</a></span>
		</p>
		<a href="newInsert" class="fl_tw2"> <i class="fa fa-twitter"></i>
			<span>新規登録</span>
		</a> <a href="login" class="fl_tw3"> <i class="fa fa-twitter2"></i> <span>ログイン</span>
		</a>
		<div id="jirusi">
			<img src="sankaku1.png" alt="矢印">
			<div></div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<p class="sintyaku">新着記事一覧</p>
	<br>
	<table class="brwsr2">
		<tbody>
			<tr>
				<th class="tr2"></th>
				<th class="tr2">記事タイトル</th>
				<th class="tr2">カテゴリ</th>
				<th class="tr2">記事本文</th>
				<th class="tr2"></th>
		<tbody>
			<tr>
				<td class="thimg"><img src="articleicon.png" class="Aimg"></td>
				<th><a href="sample1">Liveだ！</a></th>
				<td class="nd"><img src="kategori.png" class="Kimg"> 音楽</td>
				<td class="data fst">凛として時雨のライブにいきました。<br>おすすめのアーティスト<br>
					で是非聞いてください。
				</td>
				<td class="datal">
					<p style="display: inline;">記事投稿者：</p>momoko<br>
					<p style="display: inline;">記事投稿日時：</p>2018/06/29
				</td>
			</tr>
			<tr>
				<td class="bar" colspan="6"></td>
			</tr>
			<tr>
				<td class="thimg"><img src="articleicon.png" class="Aimg"></td>
				<th><a href="sample2">晴れ！</a></th>
				<td class="nd"><img src="kategori.png" class="Kimg"> 海</td>
				<td class="data fst">今日の天気は晴天です！<br>青空がとても綺麗です。<br>
					ちなみに沖縄の海の写真だよ！<br>
				</td>
				<td class="datal">
					<p style="display: inline;">記事投稿者：</p>momoko<br>
					<p style="display: inline;">記事投稿日時：</p> 2018/06/30
				</td>
			</tr>
			<tr>
				<td class="bar" colspan="6"></td>
			</tr>
			<tr>
				<td class="thimg"><img src="articleicon.png" class="Aimg"></td>
				<th><a href="sample3">今日のご飯</a></th>
				<td class="nd"><img src="kategori.png" class="Kimg">
					おすすめのご飯</td>
				<td class="data fst">私の好きなお店やまや<br> 明太子と高菜が食べ放題だよ！
				</td>
				<td class="datal">
					<p style="display: inline;">記事投稿者：</p> momoko<br>
					<p style="display: inline;">記事投稿日時：</p>2018/07/02
				</td>
			</tr>
		</tbody>
	</table>
	<div class="yohaku"></div>
	<div class="scroll_button">
		<a href="top">ページTOPへ戻る</a>
	</div>
</body>
</html>