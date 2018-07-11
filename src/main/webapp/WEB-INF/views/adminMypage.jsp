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
<link href="image/icon.png" rel="icon">
<link href="css/moc.css" rel="stylesheet">
<link href="css/commons3.css" rel="stylesheet">
<link href="css/superuser2.css" rel="stylesheet">
</head>
<body class="top">
	<div>
		<header>
		<h1>
			<a href="top">Beginner's Blog</a>
		</h1>
		</header>
	<p class="Smsg">
		お疲れ様です　${login.userId}さん
	</p>
<table class="price">
    <thead>
        <tr>
            <th class="c1">会員参照<br></th>
            <th class="c2">パスワード変更<br></th>
            <th class="c3">ログアウト<br></th>
        </tr>
    </thead>
    <tbody>
		<tr>
			<td class="c1">
			</td>
			<a href="usersSelect">
				<img src="image/adminselect.png" class="sMimg1">
           </a>
            <td class="c2">
            </td>
             <a href="adminUpdate">
            	<img src="image/superupdate.png" class="sMimg2">
            </a>
            <td class="c3">
            </td>
             <a href="logout">
            	<img src="image/superlogout.png" class="sMimg3">
            </a>
        </tr>
        <tr>
            <td class="c1">
            </td>
            <td class="c2">
            </td>
            <td class="c3">
            </td>
        </tr>
    </tbody>
</table>
<div>　<br>　</div>
</body>
</html>