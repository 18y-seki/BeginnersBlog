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
<link href="css/commons.css" rel="stylesheet">

<link href="css/topBack.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/kimura.css" rel="stylesheet">

</head>
<body class="top">
	<header>
	<h1>
		<a href="#">Beginner's Blog</a>
	</h1>
	</header>
	<div class="center ue">
		<p class="form-title">管理者 参照結果</p>
	</div>
	<div class="containe7">
		<table class="table table-striped table-bordered table-hover">

			<form:form action="adminList" modelAttribute="form" method="get">

				<fieldset class="ID">
					<div>
						<p class="message">${msg}</p>
						<label>ID</label>
						<form:input path="userId" />

					</div>

				</fieldset>
				<form:button class="button1">検索</form:button>
			</form:form>
			<thead>
				<tr>
					<th>ID</th>

					<th>削除</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${userList}" >
					<tr>
						<td>${fn:escapeXml(user.userId)}</td>


						<td>

						<form:form action="adminDelete" modelAttribute="form" >

						<form:button name="id" value="${fn:escapeXml(user.userId)}">削除</form:button>

							</form:form>

							</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<p class="prof">
		<a href="superuserMypage">スーパーユーザメニューへ</a>
	</p>
</body>
</html>