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
<link href="css/usersD.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
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
			新しいパスワードを入力してください<br> ※IDは変更できません
		</p>

		<form:form action="usersPassUpdateConfirm" modelAttribute="form">

			<p class="idText">ID</p>
			<p class="id">
				<form:input path="userId" readonly="true" />
			</p>
			<p class="passText">PASS</p>
			<p class="pass">
				<form:password path="newPassword" />
			</p>
			<form:button type="submit" class="btn btn-primary btn-lg">変更</form:button>
		</form:form>
		<br><br>
	</div>
		<p class="prof">
			<a href="usersMypage">マイページへ</a>
		</p>
	</div>
</body>
</html>