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

<link href="css/newInsertCon.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="icon" href="image/icon.png">
</head>
<body class="top">
				<div class="center">
			<h1>
				<a href="top">Beginner's Blog</a>
			</h1>


		<div class="box30">
			<div class="box-title">入力情報確認ページ</div>
				<div class="center">

					<p class="headN">
						入力した情報を確認してください。</p><p class="msg">${msg}</p>
				</div>

				<form:form action="newInsertConfirm" modelAttribute="form" method="post">

					<label class="idText">ID</label>
					<form:input path="userId" class="id" value="${fn:escapeXml(form.userId)}"
						readonly="true" />
					<br>

					<label class="nameText">名前</label>
					<form:input path="userName" class="id" value="${fn:escapeXml(form.userName)}"
						readonly="true" />
<br>
					<label class="nameText">PASS</label>
					<form:input path="password" class="id" value="${fn:escapeXml(form.password)}"
						readonly="true" />
<br>
					<p class="headNN">登録情報に間違いがなければ、下の登録ボタンをクリックしてください！</p>

					<div class="kakunin">
						<form:button type="submit" class="btn btn-primary btn-lg">登録</form:button>

						<a href="newInsert" class="btn btn-primary btn-lg">戻る</a>
					</div>
				</form:form>
				</div>
			</div>
			<p class="prof">
				<a href="top">TOPページへ</a>
			</p>
</body>
</html>