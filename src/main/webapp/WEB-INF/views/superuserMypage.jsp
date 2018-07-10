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
<link href="icon.png" rel="icon">
<link href="css/moc.css" rel="stylesheet">
</head>
<body class="top">
	<header>
	<h1><a href="top">Beginner's Blog</a></h1>
	</header>

	<p class="Smsg">
		お疲れ様です<br>スーパーユーザ くま さん
	</p>
	<div class="btns">
		<div>
			<a href="adminInsert" class="Re_btn">管理者登録</a>
		</div>

		<div>
			<a href="adminSelect" class="Se_btn">管理者参照</a>
		</div>

		<div>
			<a href="superuserUpdate" class="Ch_btn">パスワード変更</a>
		</div>

		<div>
			<a href="top" class="Lo_btn">ログアウト</a>
		</div>
	</div>
</body>
</html>
