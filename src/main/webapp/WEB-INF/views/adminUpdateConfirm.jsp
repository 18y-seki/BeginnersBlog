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
<link href="image/Blog_icon.png" rel="icon">
<link href="css3/commons.css" rel="stylesheet">
<link href="css3/login.css" rel="stylesheet">
<link href="css3/topBack.css" rel="stylesheet">
</head>
<body class="top">
	<header>
	<h1><a href="top">Beginner's Blog</a></h1>
	</header>
<div class="bag">
	<div class="formUpCon">

 <div class=form1>
		<form:form action="adminUpdateResult" modelAttribute="form">

        <p class="form-title">変更内容確認ページ</p>

		<p class="headM">これでよろしいですか？</p>

		<p class="idTextr">ID:${beforeUser.userId}</p>

			<fieldset class="col">
				<legend class="headM">変更前</legend>
				<p class="passText">PASS</p>
				<p class="pass">
					<form:input value="${beforeUser.password}" path="password" readonly="true" />
				</p>
			</fieldset>

			<div class="headDown">↓</div>
			<br>

			<fieldset class="col label-110">
				<legend class="headM">変更後</legend>
				<p class="passText">
					PASS<br>(再入力)
				</p>
				<p class="pass">
					<form:password path="newPassword" />
				</p>
			</fieldset>
			<br>
				<p class="fl_tw4"> <i class="fa fa-twitter3"></i>
				<form:button>確認</form:button>
		</form:form>
		</div>
		<p class="prof">
			<a href="adminMypage">管理者メニューへ</a>
		</p>
	</div>
	</div>
</body>
</html>