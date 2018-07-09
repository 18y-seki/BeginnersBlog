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
<link rel="stylesheet" href="css/mypage.css">
</head>
<body class="userbody">
	<!-- 投稿ページ　編集時もここに飛ぶ -->
	<!-- 会員ログイン時 -->

	<p style="text-align: center;" class="mypagebuttonmargin">
		<button type="submit" name="mypage" value="mypage"
			onclick="location.href='usersMypage.html'" class="mypagebutton1">マイページ</button>
		<button type="submit" onclick="location.href='high.html'"
			class="mypagebutton1">チュートリアル</button>
	</p>

	<!-- 編集時のみ出る -->
	<!-- <a href="blogmng.html">記事管理ページに戻る</a> -->


	<h1>記事編集</h1>

	<div class="article_main">
		<form:form action="articleUpdateConfirm" modelAttribute="form"
			method="post" enctype="multipart/form-data">

			<p>
				タイトル：<input type="text" name="title" maxlength="40"
					style="width: 540px;" value="本日の献立">
			</p>



			<fieldset class="htmltag">
				htmlタグボタン:
				<button type="button" class="html">フォント変更</button>
				<button type="button" class="html">フォントカラー</button>
				<button type="button" class="html">フォントサイズ</button>
				<button type="button" class="html">下線</button>
				<button type="button" class="html">斜線</button>
				<button type="button" class="html">太文字</button>
				<button type="button" class="html">リンク</button>
				<button type="button" class="html">画像挿入</button>
				<input type="file" name="img">
			</fieldset>


			<textarea style="resize: none;" name="main" cols="125" rows="35">

カレーの作り方。
作り方はとっても簡単。
できあがり。

</textarea>
			<!-- htmlボタンなどを設置 -->

			<label>カテゴリ：</label>
			<form:input path="art_category" style="width: 300px;" value="aaa"></form:input>

				<p style="text-align: center;">
					<form:button type="submit" name="art_ok"
						class="mypagebuttoncollect">確認画面へ</form:button>
					<form:button onclick="location.href='articleList'; return false;">戻る</form:button>

				</p>
		</form:form>
	</div>

	<p>Copyright © 2018 Beginner's Blog All Rights Reserved.</p>
	<a href="login_top" class="kanri">管理者ログイン</a>

</body>
</html>