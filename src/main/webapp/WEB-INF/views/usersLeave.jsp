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
<link href="css/moc3.css" rel="stylesheet">
<link href="css/commons.css" rel="stylesheet">

<link href="css/login2.css" rel="stylesheet">
<link href="css/topBack2.css" rel="stylesheet">
</head>

<body id="top">
	<div class="center">

			<h1><a href="top">Beginner's Blog</a></h1>

		<div id="formUsersDelete">
			<p class="form-title">会員退会ページ</p>
			<div class="center">
				<p id="headN">退会しますか？</p>

				<form:form action="usersLeaveResult" modelAttribute="form" id="form1">

					<fieldset>
						<label class="idText">ID</label>
						<div class="id">
							<form:input path="userId" value="${login.userId}" readonly="true" />
						</div>

						<label class="nameText">名前</label>
						<div class="id">
							<form:input path="userName" value="${login.userName}" readonly="true" />
						</div>

					</fieldset>

					<div>
						<form:button type="submit" class="fa fa-twitter3">退会</form:button>
					</div>

				</form:form>

			</div>

			<p class="prof">
				<a href="usersMypage">マイページへ</a>
			</p>
		</div>
	</div>
</body>
</html>
