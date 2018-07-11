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
<link href="css/userMy.css" rel="stylesheet">
</head>
<body>
	<div id="top">
		<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
		</header>
	</div>
	<div class="profile">
		<img src="image/admininsert.png" alt="画像" class="profile2"><br>
		<p class="idTextr">会員ID:${login.userId}</p>
		<p class="nameText">名前:${login.userName} 性別:${login.sex}</p>
		<p class="dayText">誕生日:${login.birthday}</p>
		<p class="hobyText">趣味:${login.hobby}</p>
		<p class="comText">コメント:${login.greet}</p>
		<p>
			<a href="logout">ログアウト</a>
		</p>
	</div>

	<table class="blog">
		<thead>
			<tr>
				<th class="c1">ブログ投稿<br></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="c1"></td>
				<a href="stepup"> <img src="image/articleCo.png"
					class="sMimg1">
				</a>
			</tr>
		</tbody>
	</table>

	<table class="price">
		<thead>
			<tr>
				<th class="c2">投稿記事一覧<br></th>
				<th class="c3">プロフィール変更<br></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="c2"></td>
				<a href="articleList"> <img src="image/articleicon.png"
					class="sMimg2">
				</a>
				<td class="c3"></td>
				<a href="usersUpdate"> <img src="image/userPro.png"
					class="sMimg3">
				</a>
			</tr>
			<tr>
				<td class="c2"></td>
				<td class="c3"></td>
			</tr>
		</tbody>
	</table>
	<table class="price2">
		<thead>
			<tr>
				<th class="c4">パスワード変更<br></th>
				<th class="c5">退会<br></th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="c4"></td>
				<a href="usersPassUpdate"> <img src="image/superupdate.png"
					class="sMimg4">
				</a>
				<td class="c5"></td>
				<a href="usersLeave"> <img src="image/superlogout.png"
					class="sMimg5">
				</a>
			</tr>
			<tr>
				<td class="c4"></td>
				<td class="c5"></td>
			</tr>
		</tbody>
	</table>
	<p class="prof">
		<a href="top">TOP画面へ</a>
	</p>
</body>
</html>