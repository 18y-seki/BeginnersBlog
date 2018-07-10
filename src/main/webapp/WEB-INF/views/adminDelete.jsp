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
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="top">
	<header>
	<h1>
		<a href="top">Beginner's Blog</a>
	</h1>
	</header>

	<div class="formInsert">

		<p class="form-title">管理者強制退会ページ</p>
		<p class="headM">この管理者でよろしいですか？</p>
		<form:form action="adminDeleteResult" modelAttribute="form">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th>ID</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td><form:input path="userId"  value="${fn:escapeXml(users.userId)}" readonly="true" /></td>

					</tr>
				</tbody>
			</table>

			<i class="fa fa-twitter3"></i>
			<form:button>削除</form:button>

		</form:form>

		<p class="prof">
			<a href="superuserMypage">スーパーユーザメニューへ</a>
		</p>

	</div>
</body>
</html>