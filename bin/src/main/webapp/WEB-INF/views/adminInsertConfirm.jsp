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
<link href="icon.png" rel="icon">
<link href="css2/commons.css" rel="stylesheet">
<link href="css2/login.css" rel="stylesheet">
<link href="css2/topBack.css" rel="stylesheet">
</head>
<body class="top">
	<header>
	<h1>
		<a href="top">Beginner's Blog</a>
	</h1>
	</header>

	<div class="formAdInCon">
		<p class="form-title">管理者 登録情報確認ページ</p>

		<p class="headM">入力した情報を確認してください。</p>

		<form:form action="adminInsertConfirm" modelAttribute="form"
			method="post">
			<p class="idText">ID</p>
			<p class="id">
				<form:input path="userId" value="${fn:escapeXml(form.userId)}"
					readonly="true" />
			</p>



			<p class="passText">PASS</p>
			<p class="pass">
				<form:password path="password" value="${fn:escapeXml(form.password)}"
					readonly="true" />

			</p>

			<p id="headS">
				登録情報に間違いがなければ、<br>下の登録ボタンをクリックしてください！
			</p>

			<div class="button_line">
				<div class="button_left">
					<form:button onclick="location.href='adminInsert'; return false;"
						class="fl_tw5">
						<div class="fa fa-twitter3"></div>
						<span>戻る</span>
					</form:button>
				</div>
				<div class="button_left">
					<form:button class="fl_tw5">
						<div class="fa fa-twitter3"></div>
						<span>登録</span>
					</form:button>
				</div>
			</div>
		</form:form>

		<p class="prof">
			<a href="superuserMypage">スーパーユーザメニューへ</a>
		</p>

	</div>

</body>
</html>