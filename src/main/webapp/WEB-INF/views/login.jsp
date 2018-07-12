<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link rel="icon" href="icon.png">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/topBack.css" rel="stylesheet">
</head>
<body id="top">
	<header>
	<h1>
		<p>Beginner's Blog</p>
	</h1>
	</header>

	<div id="formInsert">
		<p class="form-title2">Login</p>

		<form:form action="login" modelAttribute="form">
			<p class="idText2">ID</p>
			<p class="id">
				<form:input path="userId" />
			</p>
			<p class="passText2">PASS</p>
			<p class="pass">
				<form:password path="password" />
			</p>
			<form:button>ログイン</form:button>
		</form:form>

		</div>
		<p class="prof">
			<a href="top">TOP画面へ</a>
		</p>
</body>
</html>