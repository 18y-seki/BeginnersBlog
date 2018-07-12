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
<link href="image/Blog_icon.png" rel="icon">
<link href="css/usersD.css" rel="stylesheet">
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
			<p class="box-title">会員強制退会ページ</p>
			<p class="headN">この会員でよろしいですか？</p>

			<form:form action="usersDeleteResult" modelAttribute="form">

				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>名前</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td><form:input path="userId" readonly="true" /></td>
							<td><form:input path="userName" readonly="true" /></td>
						</tr>
					</tbody>
				</table>
				<form:button type="submit" class="btn btn-primary btn-lg">削除</form:button>
			</form:form>
			<br><br>
		</div>
			<p class="prof">
				<a href="adminMypage">管理者メニューへ</a>
			</p>
		</div>
</body>
</html>