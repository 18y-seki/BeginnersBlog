<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="image/Blog_icon.png" rel="icon">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="top">
	<header>
		<h1>
			<a href="#">Beginner's Blog</a>
		</h1>
	</header>

	<div class="formInsert">

		<p class="form-title">会員強制退会ページ</p>
		<p class="headM">この会員でよろしいですか？</p>

		<form action="powerDeleteResult.html" method="post">

			<table class="table table-striped table-bordered table-hover">
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
					</tr>
				</tbody>
			</table>
			<a href="usersDeleteResult.html" class="fl_tw4"> <i
				class="fa fa-twitter3"></i> <span>削除</span>
			</a>
		</form>
		<p class="prof">
			<a href="adminMypage.html">管理者メニューへ</a>
		</p>
	</div>
</body>
</html>