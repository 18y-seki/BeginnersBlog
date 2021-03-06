<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="icon">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
</head>
<body class="top">
	<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
	</header>

	<div class="formInsertCon">
		<p class="form-title">パスワード変更画面</p>

		<p class="headM">
			ID${beforeUser.userId}さん、<br>
			新しいPASSを入力してください<br>
		</p>

		<form:form action="superuserUpdateConfirm" modelAttribute="form">
			<p class="passText">新しいPASS</p>
			<p class="pass">
				<form:password path="password" />
			</p>
			<p class="fl_tw4"> <i class="fa fa-twitter3"></i>
				<form:button>確認</form:button>
			</p>
		</form:form>
		<p class="prof">
			<a href="superuserMypage">スーパーユーザメニューへ</a>
		</p>
	</div>
</body>
</html>