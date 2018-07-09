<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="image/Blog_icon">
<link href="css/moc3.css" rel="stylesheet">
<link href="css/commons2.css" rel="stylesheet">
<link href="css/login2.css" rel="stylesheet">
<link href="css/topBack2.css" rel="stylesheet">
</head>
<body id="top">
	<header>
	<h1>
		<a href="top">Beginner's Blog</a>
	</h1>
	</header>

	<div id="formUsersUpCon">
		<p class="form-title">更新内容確認ページ</p>

		<p id="headM">これでよろしいですか？</p>

		<form:form action="usersUpdateResult" modelAttribute="form">

			<p class="idTextr">ID:${beforeUser.userId}</p>

			<fieldset class="col">
				<legend id="headM">変更前</legend>
				<p class="nameText">名前</p>
				<p class="id">
					<form:input path="userName" value="${beforeUser.userName}" />
				</p>
				<p class="passText">PASS</p>
				<p class="pass">
					<form:input path="Password" value="${beforeUser.password}" />
				</p>
			<p class="sexText">性別</p>
			<p class="id">${beforeUser.sex}</p>

 			<p class="dayText">誕生日</p>
			<p class="id">
				<p>${beforeUser.year}年 </p>

					<p>${beforeUser.month}月 </p>

				<p>${beforeUsers.date}日 </p>
			<p class="hobyText">趣味</p>
			<p class="id">${beforeUser.hobby}</p>

			<p class="comText">コメント</p>
			<p class="id"><form:textarea name="com" cols="30" rows="3" maxlength="10"
					path="Greet" value="${beforeUser.greet}" /></p>
  </fieldset>

  <div id="headDown">↓</div>

  <fieldset class="col label-110">
        <p class="nameText">名前</p>
        <p class="id">
			<form:input path="newuserName" value="${newUsers.userName}" readonly ="true"/>
		</p>
        <p class="passText">PASS</p>
        <p class="pass">
			<form:input path="newPassword" value="${newUsers.password}"  readonly ="true"/>
				</p>
			<p class="sexText">性別</p>
			<p class="id">${newUsers.sex}</p>

 			<p class="dayText">誕生日</p>
			<p class="id">
				<p>${newUsers.year}年 </p>

					<p>${newUsers.month}月 </p>

				<p>${newUsers.date}日 </p>
        <p class="id">
			<p class="hobyText">趣味</p>
			<p class="id">${newUsers.hobby}</p>

			<p class="comText">コメント</p>
			<p class="id">
			<form:textarea cols="30" rows="3" maxlength="10"
					path="newGreet" value="${newUsers.greet}" readonly ="true"/>
					</p>
  </fieldset>
			<br>
			<div id="center_yose">
				<form:button>確認</form:button>
			</div>
</form:form>
<p class="prof">
  <a href="usersMypage">マイページへ</a>
</p>
</div>
</body>
</html>