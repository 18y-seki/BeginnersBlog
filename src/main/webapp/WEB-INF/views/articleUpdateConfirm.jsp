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
</head>
<body class="userbody">
	<p class="mypagebuttonmargin">
		<button type="submit" name="mypage" value="mypage"
			onclick="location.href='mypage'" class="mypagebutton1">マイページ</button>
	</p>
	<div class="article_main">


		<!-- つぶやきならタイトル欄を表示しない -->

			<label>タイトル：</label>
			<form:input path="title" maxlength="40" style="width: 540px;" value="本日の献立" readonly></form:input>


		<label>本文：</label>
		<form:textarea path="main" cols="125" rows="35" readonly />

カレーの作り方。
作り方はとっても簡単。
できあがり。

		<label>
			カテゴリ：<form:input path="art_category" style="width: 300px" readonly />
		</label>

		<p style="text-align: center;">
			<form:button class="mypagebuttoncollect">投稿する</form:button>
			<a href="articleUpdate">戻る</a>
		</p>

		<p class="prof">
			<a href="usersMypage">マイページに戻る</a>
		</p>
	</div>
</body>
</html>