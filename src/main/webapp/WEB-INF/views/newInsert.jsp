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
			<p class="form-title2">
				会員登録ページ<br>
			<p id="headN">
				ID、NAME、PASSを登録します！<br> <span class="required"></span>は必須です。
			</p>
		</div>

		<form:form action="newInsertConfirm" modelAttribute="form"
			method="post">

			<div id="formNew2">
				<p id="headNu">
					①IDを決めてください。<br> 好きな文字を<strong>8文字</strong>入力してください。<br>
					（例）12abあい78<br>
				</p>

				<label class="required idText3">ID</label>
				<p class="id">
					<form:input path="id" />
				</p>
			</div>

			<div id="formNew2">
				<p id="headNu">
					②あなたのお名前、またはニックネームを入力してください。<br> （例）山本太陽、きむ、kimu2
				</p>

				<label class="required nameText3">NAME</label>
				<p class="id">
					<form:input path="name" />
				</p>
			</div>

			<div id="formNew2">
				<p id="headNu">
					③パスワードを決めてください。 英語と数字組み合わせ、<strong>4文字</strong>入力してください。<br>
					（例）12ab、123k、AB12
				</p>

				<label class="required passText3">PASS</label>
				<p class="pass">
					<form:password path="pass" />
				</p>
			</div>

			<div id="formNew">
				<p id="headNuu">全ての入力が終わったら、右下の確認ボタンをクリックしてください！</p>

				<form:button type="submit" class="fa fa-twitter3">確認</form:button>
			</div>
		</form:form>

		<p class="prof">
			<a href="top">TOP画面へ戻る</a>
		</p>

	</div>

</body>
</html>
