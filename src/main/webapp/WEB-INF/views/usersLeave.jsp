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
<link href="icon.png" rel="image/Blog_icon">
<link href="css/usersL.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.min.css">
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

				<form:form action="usersLeaveResult" modelAttribute="form"
					id="form1">

					<label class="idText">ID</label>
					<form:input path="userId" value="${login.userId}" class="id"
						readonly="true" />
					<br>

					<label class="nameText">NAME</label>
					<form:input path="userName" value="${login.userName}" class="id"
						readonly="true" />
						<br><br>

					<div class="center">
						<button type="button" class="btn btn-primary btn-lg">退会</button>
					</div>
					<br><br>


				</form:form>

			</div>
		</div>
			<p class="prof">
				<a href="usersMypage">マイページへ</a>
			</p>
		</div>
	</div>
</body>
</html>