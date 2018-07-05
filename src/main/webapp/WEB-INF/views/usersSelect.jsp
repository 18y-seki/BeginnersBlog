<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="image/Blog_icon.png" rel="icon">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="top">
	<header>
		<h1>
			<a href="#">Beginner's Blog</a>
		</h1>
	</header>
	<div class="center ue">
		<p class="form-title">会員 参照結果</p>
	</div>

	<div class="containe5">
		<table class="table table-striped table-bordered table-hover">

<form:form action="list" modelAttribute="form" method="get">

		<fieldset>
			<div>
				<label class="required">ID</label>
				<form:input path="userId" />
			</div>
		</fieldset>
		<form:button>検索</form:button>

</form:form>
			<thead>
				<tr>
					<th>ID</th>

					<th>名前</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${fn:escapeXml(user.userId)}</td>
					<td>${fn:escapeXml(user.userName)}</td>

				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<p class="prof">
		<a href="adminMypage.html">管理者メニューへ</a>
	</p>
</body>
</html>