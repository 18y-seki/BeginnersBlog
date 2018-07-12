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

<link href="image/icon.png" rel="image/Blog_icon">

<link href="css/usersL.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
	<div class="center">
	<div class="top">
			<h1><a href="top">Beginner's Blog</a></h1>
			</div>

		<div class="box30">
			<div class="box-title">会員退会ページ</div>

			<div class="center">

				<p class="headN">退会しますか？</p>

				<form:form action="usersLeaveResult" modelAttribute="form">

					<label class="idText">ID</label>
					<form:input path="userId" value="${login.userId}" class="id"
						readonly="true" />
					<br>

					<label class="nameText">名前</label>
					<form:input path="userName" value="${login.userName}" class="id"
						readonly="true" />
						<br><br>

					<div class="center">
						<form:button type="submit" class="btn btn-primary btn-lg">退会</form:button>
					</div>	<br><br>

				</form:form>

			</div>
		</div>
			<p class="prof">
				<a href="usersMypage">マイページへ</a>
			</p>
		</div>
</body>
</html>