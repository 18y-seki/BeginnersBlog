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
<link href="css2/moc.css" rel="stylesheet">
<link href="css2/commons.css" rel="stylesheet">
<link href="css2/login.css" rel="stylesheet">
<link href="css2/topBack.css" rel="stylesheet">
</head>
<body class="top">
	<div>
		<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
		</header>

		<div>
			<div>

				<form class="form" class="form1">
					<p class="name">
						お疲れ様です<br>管理人 さん
					</p>

					<div class="submit">
						<a href="usersSelect">会員参照</a>
					</div>

					<div class="submit">
						<a href="adminUpdate">パスワード変更</a>
					</div>

					<div class="submit">
						<a href="logout">ログアウト</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>