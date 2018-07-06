<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<form action="articleUpdateConfirm" method="post"
			enctype="multipart/form-data">

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


			<textarea style="resize: none;" name="main" cols="125" rows="35">ああああ
作り方はとっても簡単。

ああああ
【あ】

</textarea>
			<!-- htmlボタンなどを設置 -->

			<br>

			<p>
				カテゴリ：<input type="text" name="art_category" style="width: 300px;"
					value="aaa">
			</p>

			<p style="text-align: center;">
				<input type="submit" name="art_ok" value="確認画面へ"
					class="mypagebuttoncollect"> <input type="submit"
					name="button" value="戻る"
					onclick="location.href='sample1'; return false;">
			</p>

		</form>
	</div>

	<footer>
	<p>Copyright © 2018 Beginner's Blog All Rights Reserved.</p>
	<a href="login_top" class="kanri">管理者ログイン</a> </footer>

</body>
</html>