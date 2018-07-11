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
<link href="css/adminD.css" rel="stylesheet">
</head>
<body>
	<div class="center">
		<div class="top">
			<h1>
				<a href="top">Beginner's Blog</a>
			</h1>
		</div>

		<div class="box30">

			<div class="box-title">管理者強制退会ページ</div>

			<div class="center">

				<p class="headN">この管理者でよろしいですか？</p>

				<form:form action="adminDeleteResult" modelAttribute="form">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>ID</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td><form:input path="userId" readonly="true" /></td>
							</tr>
						</tbody>
					</table>

					<div class="center">
						<form:button type="submit" class="btn btn-warning btn-lg">削除</form:button>
					</div>

				</form:form>
			</div>
		</div>

		<p class="prof">
			<a href="superuserMypage">スーパーユーザメニューへ</a>
		</p>

	</div>
</body>
</html>