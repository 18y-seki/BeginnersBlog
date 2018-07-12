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
<link href="css3/commons.css" rel="stylesheet">
<link href="css3/login.css" rel="stylesheet">
<link href="css3/topBack.css" rel="stylesheet">
</head>
<body class="top">
	<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
	</header>
    <div class=bag>
	<div class="formInsertCon">
     <div class=form2>
		<form:form action="adminUpdateConfirm" modelAttribute="form">

			<p class="form-title">パスワード変更画面</p>

			<p class="headM">
				ID${beforeUser.userId}さん、<br> 新しいPASSを入力してください<br>
			</p>



			<p class="passText">新しいPASS</p>
			<p class="pass">
				<form:password path="password" />
			</p>
			<div>
			<p class="fl_tw4">
				<i class="fa fa-twitter3"></i>
				<form:button>確認</form:button>
			</p>
			</div>
		</form:form>
		</div>
		<p class="prof">
			<a href="adminMypage">管理者メニューへ</a>
		</p>

		</div>
	</div>
</body>
</html>