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
<link rel="icon" href="icon.png">
<link href="css/moc.css" rel="stylesheet">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
</head>
<body id="top">
	<div class="center">
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>

		<div id="formInsert">
			<p id="headN">この記事を削除しますか？</p>

			<form:form action="articleDeleteResult" modelAttribute="form" method="post" id="form1">

				<label class="idText2">記事ID</label>
				<p class="id">
					<form:input path="articleId" value="${Article.articleId}" readonly />
				</p>

				<label class="nameText2">記事タイトル</label>
				<p class="id">
					<form:input path="title" value="${Article.title}" readonly />
				</p>

				<label class="idText2">会員ID</label>
				<p class="id">
					<form:input path="id" value="${Users.userId}" readonly />
				</p>
				<form:button type="submit" class="fa fa-twitter3">></i>削除</form:button>
				<p class="prof">
					<a href="usersMypage">マイページに戻る</a>
				</p>

			</form:form>
		</div>
	</div>

</body>
</html>
