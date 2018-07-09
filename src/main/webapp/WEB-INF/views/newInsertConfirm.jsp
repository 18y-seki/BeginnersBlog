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
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/newss.css" rel="stylesheet">

<link rel="icon" href="icon.png">
</head>
<body id="top">
	<h1>
		<a href="top">Beginner's Blog</a>
	</h1>

	<div id="new">

		<div id="formNew">
			<p class="form-title2">入力情報確認ページ</p>

			<p id="headN">入力した情報を確認してください。</p>

		</div>

		<div id="formNew2">
			<form:form action="newInsertResult" modelAttribute="form" method="post">

				<label class="idText3">ID</label>
				<p class="id">
					<form:input path="id" value="${fn:escapeXml(form.userId)}" readonly="true" />
				</p>

				<label class="nameText3">名前</label>
				<p class="id">
					<form:input path="name" value="${fn:escapeXml(form.userName)}" readonly="true" />
				</p>

				<label class="passText3">PASS</label>
				<p class="pass">
					<form:password path="pass" value="${fn:escapeXml(form.pass)}" readonly="true" />
				</p>

			</form:form>
		</div>

		<div id="formNew">
			<p id="headN">
				登録情報に間違いがなければ、<br>下の登録ボタンをクリックしてください！
			</p>

			<form:button type="submit" class="fa fa-twitter3">登録</form:button>

			<p class="prof">
				<a href="newInsert">戻る</a>
			</p>

		</div>

		<p class="prof">
			<a href="top">TOPページへ</a>
		</p>

	</div>
</body>
</html>
