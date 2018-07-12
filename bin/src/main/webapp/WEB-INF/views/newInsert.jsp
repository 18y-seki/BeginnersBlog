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
		<h1><p><a href="top">Beginner's Blog</a></p></h1>
	</header>

<article id="new">


	<div id="formNew">
<p class="form-title2">会員登録ページ<br>

<p id="headN">ID、NAME、PASSを登録します！</p>
</div>
<form action="newInsertConfirm" method="post">

	<div id="formNew2">
        <p id="headNu"><strong>①</strong>数字を<strong>8文字</strong>入力してください。<br>
        （例）12345678</p>

        <p class="idText3">ID</p>
        <p class="id"><input type="text" name="id" /></p>
    </div>

	<div id="formNew2">
        <p id="headNu"><strong>②</strong>あなたのお名前、またはニックネームを入力してください。<br>
        （例）山田太郎、きむ</p>

        <p class="nameText3">NAME</p>
        <p class="id"><input type="text" name="name" /></p>
     </div>

	<div id="formNew2">
        <p id="headNu"><strong>③</strong>英語と数字組み合わせ、<strong>4文字</strong>入力してください。<br>
        （例）12ab、123k、AB12</p>

        <p class="passText3">PASS</p>
        <p class="pass"><input type="password" name="pass" /></p>
     </div>


	<div id="formNew">
	<p id="headNuu">全ての入力が終わったら、右下の確認ボタンをクリックしてください！</p>

						<a href=""newInsertConfirm" class="">
		<button type="submit" class="btn btn-info btn-lg">確認</button>
		</a>


</form>
<p class="prof">
  <a href="top">TOP画面へ戻る</a>
</p>

</div>

</article>


</body>
</html>
