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
<link href="image/Blog_icon.png" rel="icon">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
</head>
<body class="top">
	<header>
	<h1><a href="top">Beginner's Blog</a></h1>
	</header>

	<div class="formInsertCon">
		<p class="form-title">パスワード変更画面</p>

		<p class="headM">
			新しいパスワードを入力してください<br> ※IDは変更できません
		</p>

		<form action="adminUpdate" method="post">

			<p class="idText">ID</p>
			<p class="id">
				<input type="text" name="id" value="shiorin" readonly />
			</p>
			<p class="passText">PASS</p>
			<p class="pass">
				<input type="password" name="pass" />
			</p>
			<a href="adminUpdateConfirm.html" class="fl_tw4"> <i
				class="fa fa-twitter3"></i> <span>変更</span>
			</a>
		</form>
		<p class="prof">
			<a href="adminMypage">管理者メニューへ</a>
		</p>
	</div>
</body>
</html>
