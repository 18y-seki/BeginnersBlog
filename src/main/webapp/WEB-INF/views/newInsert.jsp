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

<link href="css/newInsert.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="image/icon.png" rel="icon">
</head>
<body class="top">
				<div class="center">
			<h1>
				<a href="top">Beginner's Blog</a>
			</h1>


		<div class="box30">
			<div class="box-title">会員登録ページ</div>
				<div class="center">

					<p class="headN">
						ID、NAME、PASSを登録します！</p><p class="msg">${msg}</p>
				</div>

				<form:form action="newInsert" modelAttribute="form" method="post"
					id="form1">

					<p>
						<strong>①</strong>IDを決めてください。<br> 好きな文字を<strong>8文字以内で</strong>入力してください。<br>
						（例）12うえefキク<br>
					</p>

					<label class="idText">ID</label>
					<form:input path="userId" class="id" />
					<br>

					<p>
						<strong>②</strong>あなたのお名前、またはニックネームを<br> <strong>8文字以内で</strong>入力してください。<br>
						（例）エリザベス3世、きむ
					</p>

					<label class="nameText">名前</label>
					<form:input path="userName" class="id" />

					<p>
						<strong>③</strong>パスワードを決めてください。<br>
						<strong>4文字で</strong>入力してください。<br> （例）12ab、123k、AB12
					</p>

					<label class="nameText">PASS</label>
					<form:input path="password" class="id" />

					<p class="headNN">全ての入力が終わったら、下の確認ボタンをクリックしてください！</p>

					<div class="kakunin">
						<form:button type="submit" class="btn btn-primary btn-lg">確認</form:button>
					</div>
				</form:form>
				</div>
			</div>
			<p class="prof">
				<a href="top">TOPページへ</a>
			</p>
</body>
</html>