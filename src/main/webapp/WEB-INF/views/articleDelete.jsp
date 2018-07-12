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
	<header>
		<h1><p><a href="top">Beginner's Blog</a></p></h1>
	</header>

<div id="formInsert">
<p id="headN">この記事を削除しますか？</p>

<form:form action="articleDeleteResult" modelAttribute="form">


        <p class="idText2">記事ID</p>
        <p class="id"><form:input path="articleId" readonly="true" /></p>

        <p class="nameText2">記事タイトル</p>
        <p class="id"><form:input path="title" readonly="true" /></p>

        <p class="idText2">会員ID</p>
        <p class="id"><form:input path="userId" readonly="true" /></p>


		<i class="fa fa-twitter3"></i><span><form:button class="fl_tw4">削除</form:button></span><br>

		</form:form>

<p class="prof">
      <a href="usersMypage">マイページに戻る</a>
      </p>
  </div>
  </div>


</body>
</html>
