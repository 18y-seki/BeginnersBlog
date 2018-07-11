<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String greet =request.getParameter("greet"); %>
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

			<fieldset class="uUCbox1">
				<legend id="headM">変更前</legend>
				<p class="nameText">名前</p>
				<p class="id">${beforeUser.userName}</p>
				<br>
				<p class="sexText">性別</p>
				<p class="id">${beforeUser.sex}</p>
				<br><br>
				<p class="dayText">誕生日</p>
				<p class="id">${beforeUser.year}年 ${beforeUser.month}月
					${beforeUsers.date}日</p>
				<br>
				<p class="hobyText">趣味</p>
				<p class="id">${beforeUser.hobby}</p>
				<br>
				<p class="comText">コメント</p>
				<p class="id"><%= greet %></p>
			</fieldset>

			<div id="headDown">→</div>

			<fieldset class="uUCbox2">
				<p class="nameText">名前</p>
				<p class="id">${newUsers.newuserName}</p>
				<br><br>
				<p class="sexText">性別</p>
				<p class="id">${newUsers.newSex}</p>

				<br>

				<p class="dayText">誕生日</p>
				<p class="id">${newUsers.newYear}年 ${newUsers.newMonth}月
					${newUsers.newDate}日</p>
				<p class="hobyText">趣味</p>
				<p class="id">${newUsers.newHobby}</p>
				<br>
				<p class="comText">コメント</p>
				<p class="id">${newUsers.newGreet}</p>
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