<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link rel="icon" href="icon.png">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/topBack.css" rel="stylesheet">
</head>
<body id="top">
	<header>
	<h1>
		<p>Beginner's Blog</p>
	</h1>
	</header>

	<div id="formInsert">
		<p class="form-title2">Login</p>
		<form action="top_login" method="post">
			<p class="idText2">ID</p>
			<p class="id">
				<input type="text" name="id" />
			</p>
			<p class="passText2">PASS</p>
			<p class="pass">
				<input type="password" name="pass" />
			</p>
			<a href="login_top" class="fl_tw4"> <i
				class="fa fa-twitter3"></i> <span>ログイン</span>
			</a>
		</form>
		<p class="prof">
			<a href="top">TOP画面へ</a>
		</p>
</body>
</html>