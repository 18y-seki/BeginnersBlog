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
<link href="icon.png" rel="icon">
<link href="css2/commons.css" rel="stylesheet">
<link href="css2/login.css" rel="stylesheet">
<link href="css2/topBack.css" rel="stylesheet">
<link href="css2/adminI.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="center">
		<div class="top">
			<h1>
				<a href="top">Beginner's Blog</a>
			</h1>
		</div>

		<div class="box30">
			<p class="box-title">新規管理者登録</p>

			<div class="center">

				<p class="headN">
					登録するIDとパスワードを入力してください！ <br>${msg}</p>

				<form:form action="adminInsert" modelAttribute="form" method="post">
					<p class="idText">ID</p>
					<p class="id">
						<form:input path="userId" />
					</p>
					<p class="passText">PASS</p>
					<p class="pass">
						<form:password path="password" />
					</p>

					<form:button type="submit" class="btn btn-primary btn-lg">確認</form:button>

				</form:form>

			</div>
		</div>

		<p class="prof">
			<a href="superuserMypage">スーパーユーザメニューへ</a>
		</p>
	</div>
</body>
</html>
