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
<link rel="icon" href="image/icon.png">
<link rel="stylesheet" href="css/mypage.css">
</head>
<body class="userbody">
	<!-- 投稿ページ　編集時もここに飛ぶ -->
	<!-- 会員ログイン時 -->

	<p style="text-align: center;" class="mypagebuttonmargin">
		<button type="submit" name="mypage" value="mypage"
			onclick="location.href='usersMypage'" class="mypagebutton1">マイページ</button>
		<button type="submit" onclick="location.href='high'"
			class="mypagebutton1">チュートリアル</button>
	</p>

	<!-- 編集時のみ出る -->
	<!-- <a href="blogmng">記事管理ページに戻る</a> -->


	<h1>記事編集</h1>

	<div class="article_main">
		<form:form action="articleUpdateResult" modelAttribute="form"
			method="post" enctype="multipart/form-data">

			</p>
				<label>タイトル：</label>
				<form:input path="title" maxlength="40" style="width: 540px;"
					value="${fn:escapeXml(form.title)}" readonly="true" />
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


			<form:textarea cols="125" rows="35" path="articleText"
				value="${fn:escapeXml(form.articleText)}" readonly="true" />




			<!-- htmlボタンなどを設置 -->

			<label>カテゴリ：</label>
			<form:input path="category" style="width: 300px;"
				value="${fn:escapeXml(form.category)}" readonly="true" />

			<p style="text-align: center;">
				<form:button class="mypagebuttoncollect">投稿する</form:button>
				<a href="article">戻る</a>

			</p>
		</form:form>
	</div>

	<p class="prof">
		<a href="usersMypage">マイページへ</a>
	</p>

	<p>Copyright © 2018 Beginner's Blog All Rights Reserved.</p>

</body>
</html>