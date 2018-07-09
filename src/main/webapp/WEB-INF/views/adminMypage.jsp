<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="image/Blog_icon.png" rel="icon">
<link href="css/moc.css" rel="stylesheet">
</head>
<body class="top">
	<div>
		<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
		</header>
	</div>
	<div class="form-main">
		<div class="form-div">

				<p class="name">
					お疲れ様です<br>管理人 ${beforeUser.userId} さん
				</p>

				<div class="submit">
					<a href="usersInsert" class="Re_btn">会員参照</a>
				</div>
				<div class="submit">
					<a href="adminUpdate" class="Re_btn">パスワード変更参照</a>
				</div>
				<div class="submit">
					<a href="logout" class="Re_btn">ログアウト</a>
				</div>
				<div class="ease"></div>
		</div>
	</div>
</body>
</html>