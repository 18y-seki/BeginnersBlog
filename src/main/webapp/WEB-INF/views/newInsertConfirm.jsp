<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/newss.css" rel="stylesheet">

<link rel="icon" href="icon.png">
</head>
<body id="top">
	<header>
	<h1><a href="top">Beginner's Blog</a></h1>
	</header>

	<article id="new">

	<div id="formNew">
		<p class="form-title2">入力情報確認ページ</p>

		<p id="headN">入力した情報を確認してください。</p>

	</div>

	<div id="formNew2">
		<form action="newInsertResult" method="post">

			<p class="idText3">ID</p>
			<p class="id">
				<input type="text" name="id" />
			</p>
			<p class="nameText3">名前</p>
			<p class="id">
				<input type="text" name="name" />
			</p>
			<p class="passText3">PASS</p>
			<p class="pass">
				<input type="password" name="pass" />
			</p>
		</form>
	</div>

	<div id="formNew">
		<p id="headN">
			登録情報に間違いがなければ、<br>下の登録ボタンをクリックしてください！
		</p>

		<a href="newInsertResult" class="fl_tw4"> <i
			class="fa fa-twitter3"></i> <span>登録</span>
		</a>

		<p class="prof">
			<a href="newInsert">戻る</a>
		</p>

	</div>

	</article>

</body>
</html>
