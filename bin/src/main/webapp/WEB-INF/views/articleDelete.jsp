<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h1><p><a href="top.html">Beginner's Blog</a></p></h1>
	</header>

<div id="formInsert">
<p id="headN">この記事を削除しますか？</p>

<form action="articleDelete.html" method="post" id="form1">


        <p class="idText2">記事ID</p>
        <p class="id"><input type="text" name="articleId" value="1" readonly/></p>

        <p class="nameText2">記事タイトル</p>
        <p class="id"><input type="text" name="title" value="今日のごはん" readonly/></p>

        <p class="idText2">会員ID</p>
        <p class="id"><input type="text" name="id" value="kimukimu" readonly/></p>

		<a href="articleDeleteResult.html" class="fl_tw4">
			<i class="fa fa-twitter3"></i><span>削除</span><br>
		</a>
<p class="prof">
      <a href="usersMypage.html">マイページに戻る</a>
      </p>
  </div>
  </div>
</form>

</div>
</body>
</html>
