<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="icon">
<link href="css/moc3.css" rel="stylesheet">
<link href="css/topBack2.css" rel="stylesheet">
</head>
<body id="top">
<div id="top">
	<header>
		<h1><a href="top">Beginner's Blog</a></h1>
	</header>
</div>

		<div id="form-div">

				<p class="name"><strong>${login.userName}</strong>さんのマイページ</p>
				<p class="idTextr">ID:${login.userId}</p>
				<p class="idTextr">性別:${login.sex}</p>
				<p class="hobyText">趣味:${login.hobby} </p>
				<p class="dayText">誕生日:${login.birthday}</p>
				<p class="comText">コメント:${login.greet}</p>

				<div class="submit">
					<a href="stepup" class="Re_btn">ブログ投稿</a>
				</div>

				<div class="submit">
					<a href="usersUpdate" class="Re_btn">プロフィール変更</a>
				</div>

				<div class="submit">
					<a href="usersPassUpdate" class="Re_btn">パスワード変更</a>
				</div>

				<div class="submit">
					<a href="usersLeave" class="Re_btn">退会</a>
				</div>

				<div class="submit">
					<a href="logout" class="Re_btn">ログアウト</a>
				</div>
		</div>
	<p class="profM">
 <a href="top">TOP画面へ</a>
 </p><br>
</body>
</html>