<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="image/Blog_icon.png" rel="icon">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/usersD.css" rel="stylesheet">
</head>

<body>
	<div class="center">
		<div class="top">
			<h1>
				<a href="top">Beginner's Blog</a>
			</h1>
		</div>

		<div class="box30">
			<p class="box-title">会員 参照ページ</p>
		</div>

		<div class="containe7">
			<table class="table table-striped table-bordered table-hover">

				<form:form action="list" modelAttribute="form" method="get">
					<p class="message">${msg}</p>
					<fieldset>
						<div>
							<label>ID</label>
							<form:input path="userId" />
						</div>
						<form:button type="submit" class="btn btn-primary btn-lg">検索</form:button>
					</fieldset>
				</form:form>
				<thead>
					<tr>
						<th>ID</th>

						<th>名前</th>

						<th>削除</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="user" items="${userList}">
						<tr>
							<td>${fn:escapeXml(user.userId)}</td>
							<td>${fn:escapeXml(user.userName)}</td>



							<td><form:form action="usersDelete" modelAttribute="form">

									<form:button name="id" value="${fn:escapeXml(user.userId)}">削除</form:button>


								</form:form></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<p class="prof">
			<a href="adminMypage">管理者メニューへ</a>
		</p>
	</div>
</body>
</html>