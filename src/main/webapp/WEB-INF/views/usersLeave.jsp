<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<header>
		<h1><a href="top">Beginner's Blog</a></h1>
	</header>

<div id="formUsersDelete">
<p class="form-title">会員退会ページ</p>
 <div class="center">
<p id="headN">退会しますか？</p>

<form action="usersLeaveResult" method="post" id="form1">

        <p class="idText">ID</p>
        <p class="id"><input type="text" name="id" value="kimukimu" readonly/></p>

        <p class="nameText">名前</p>
        <p class="id"><input type="text" name="name" value="きゃむ" readonly/></p>

		<a href="usersLeaveResult" class="fl_tw4">
			<i class="fa fa-twitter3"></i><span>退会</span>
		</a>

  </div>
</form>
<p class="prof">
  <a href="usersMypage">マイページに戻る</a>
</p>
</div>
</body>
</html>
