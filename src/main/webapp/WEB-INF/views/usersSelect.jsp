<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="image/Blog_icon.png" rel="icon">
<link href="css2/commons.css" rel="stylesheet">
<link href="css2/login.css" rel="stylesheet">
<link href="css2/topBack.css" rel="stylesheet">
<link href="css2/bootstrap.min.css" rel="stylesheet">
</head>
<body class="top">
	<header>
	<h1><a href="#">Beginner's Blog</a></h1>
	</header>
	<div class="center ue">
		<p class="form-title">会員 参照結果</p>
	</div>

	<div class="containe5">
		<table class="table table-striped table-bordered table-hover">
			<input type="search" name="search" placeholder="IDで検索">
			<input type="submit" name="submit" value="検索">

			<thead>
				<tr>
					<th>ID</th>
					<th>名前</th>
					<th>PASSWORD</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td>111</td>
					<td>山田</td>
					<td>axizaxiz</td>
					<td>
						<button type="submit" onclick="location.href='usersDelete'"
							class="mypagebuttoncollect">削除</button>
					</td>
				</tr>
				<tr>
					<td>kimukimu</td>
					<td>木村</td>
					<td>pass</td>
					<td>
						<button type="submit" onclick="location.href='usersDelete'"
							class="mypagebuttoncollect">削除</button>
					</td>
				</tr>

			</tbody>
		</table>
	</div>
	<p class="prof">
		<a href="adminMypage">管理者メニューへ</a>
	</p>
</body>
</html>