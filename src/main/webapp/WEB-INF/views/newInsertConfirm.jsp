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
<link href="css3/commons.css" rel="stylesheet">
<link href="css3/login.css" rel="stylesheet">
<link href="css3/topBack.css" rel="stylesheet">
<link href="css3/newss.css" rel="stylesheet">

<link rel="icon" href="icon.png">
</head>
<body class="top">
	<h1>
		<a href="top">Beginner's Blog</a>
	</h1>

	<div class="new">

		<div class="formNew">
			<p class="form-title2">入力情報確認ページ</p>

			<p class="headN">入力した情報を確認してください。</p>

		</div>
<form:form action="newInsertConfirm" modelAttribute="form" method="post">
		<div class="formNew2">


				<p class="idText3">ID</p>
				<p class="id">
					<form:input path="userId" value="${fn:escapeXml(form.userId)}" readonly="true" />
				</p>

				<p class="nameText3">名前</p>
				<p class="id">
					<form:input path="userName" value="${fn:escapeXml(form.userName)}" readonly="true" />
				</p>

				<p class="passText3">PASS</p>
				<p class="pass">
					<form:input path="password" value="${fn:escapeXml(form.password)}" readonly="true" />
				</p>

		</div>

		<div class="formNew">
			<p class="headN">
				登録情報に間違いがなければ、<br>下の登録ボタンをクリックしてください！
			</p>

			<form:button><div class="fa fa-twitter3">登録</div></form:button>


			<div class="prof">
				<a href="newInsert">戻る</a>
			</div>
		</div>
</form:form>

		<div class="prof">
			<a href="top">TOPページへ</a>
		</div>

	</div>

</body>
</html>