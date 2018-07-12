<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beginner's Blog</title>

<link href="image/icon.png" rel="icon">
<link href="css/commons3.css" rel="stylesheet">
<link href="css/superuser.css" rel="stylesheet">

</head>
<body class="top">
	<header>
		<h1>
			<a href="top">
				Beginner's Blog
			</a>
		</h1>
	</header>

	<p class="Smsg">
		お疲れ様です　${login.userId}さん
	</p>
<table class="price">
    <thead>
        <tr>
            <th class="c1">管理者登録<br></th>
            <th class="c2">管理者参照<br></th>
            <th class="c3">パスワード変更<br></th>
            <th class="c4">ログアウト<br></th>
        </tr>
    </thead>
    <tbody>
		<tr>
			<td class="c1">
			</td>
			<a href="adminInsert">
				<img src="image/admininsert.png" class="sMimg1">
           </a>
            <td class="c2">
            </td>
             <a href="adminSelect">
            	<img src="image/adminselect.png" class="sMimg2">
            </a>
            <td class="c3">
            </td>
             <a href="logout">
            	<img src="image/superlogout.png" class="sMimg3">
            </a>
            <td class="c4">
            </td>
             <a href="superuserUpdate">
            	<img src="image/superupdate.png" class="sMimg4">
            </a>
        </tr>
        <tr>
            <td class="c1">
            </td>
            <td class="c2">
            </td>
            <td class="c3">
            </td>
            <td class="c4">
            </td>
        </tr>
    </tbody>
</table>
<div><br></div>
</body>
</html>