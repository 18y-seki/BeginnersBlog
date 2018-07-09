<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
	<link rel="icon" href="icon.png">
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
				<p class="name"><strong>${beforeUser.userId}</strong>さんのマイページ</></p>

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
