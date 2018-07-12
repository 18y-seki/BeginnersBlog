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

<link rel="icon" href="icon.png">

<link href="css/loginn.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="top">
	<div class="center">
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>


		<div class="box30">
			<div class="box-title">ログイン</div>

			<form:form action="login" modelAttribute="form">

				<label class="idText">ID</label>
				<p class="id">
					<form:input path="userId" />
				</p>
				<br>

				<label class="nameText">PASS</label>
				<p class="pass">
					<form:password path="password" />
				</p>

				<div class="kakunin">
					<form:button type="submit" class="btn btn-primary btn-lg">ログイン</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<p class="prof">
		<a href="top">TOPページへ</a>
	</p>
</body>
</html>