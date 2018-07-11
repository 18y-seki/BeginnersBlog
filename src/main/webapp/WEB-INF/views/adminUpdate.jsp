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
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/adminU.css" rel="stylesheet">
</head>
<body>
	<div class="center">
		<div class="top">
			<h1>
				<a href="top">Beginner's Blog</a>
			</h1>
		</div>

		<div class="box30">
			<p class="box-title">パスワード変更画面</p>

			<p class="headN">
				ID${beforeUser.userId}さん、<br> 新しいPASSを入力してください<br>
			</p>

			<form:form action="adminUpdateConfirm" modelAttribute="form">
				<p class="passText">新しいPASS</p>
				<p class="pass">
					<form:password path="password" />
				</p>
				<form:button type="submit" class="btn btn-primary btn-lg">確認</form:button>



			</form:form>

		</div>

		<p class="prof">
			<a href="adminMypage">管理者メニューへ</a>
		</p>
	</div>
</body>
</html>