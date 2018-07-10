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
			<p class="form-title2">
				会員登録ページ<br>
			<p class="headN">
				ID、NAME、PASSを登録します！<span class="required"></span> <br>${msg}
			</p>
		</div>

		<form:form action="newInsert" modelAttribute="form" method="post">

			<div class="formNew2">
				<p class="headNu">
					①IDを決めてください。<br> 好きな文字を<strong>8文字以内で</strong>入力してください。<br>
					（例）12abあい78<br>
				</p>

				<p class="idText3">ID</p>
				<p class="id">
					<form:input path="userId" />
				</p>
			</div>

			<div class="formNew2">
				<p class="headNu">
					<strong>②</strong>あなたのお名前、またはニックネームを<br>
					<strong>8文字以内で</strong>入力してください。<br>
					（例）エリザベス3世、きむ
				</p>


				<p class="nameText3">NAME</p>
				<p class="id">
					<form:input path="userName" />
				</p>
			</div>

			<div class="formNew2">
				<p class="headNu">
					③パスワードを決めてください。<br><strong>4文字で</strong>入力してください。<br>
					（例）12ab、123k、AB12
				</p>

				<p class="passText3">PASS</p>
				<p class="pass">
					<form:input path="password" />
				</p>
			</div>

			<div class="formNew">
				<p class="headNuu">全ての入力が終わったら、下の確認ボタンをクリックしてください！</p>

				<div  class="fa fa-twitter3">
				<form:button>
				<i class="fa fa-twitter3"></i>
				<span>確認</span></form:button></div>
			</div>
		</form:form>

		<p class="prof">
			<a href="top">TOPページへ</a>
		</p>

	</div>

</body>
</html>