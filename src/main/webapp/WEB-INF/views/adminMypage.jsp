<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="image/Blog_icon.png" rel="icon">
<link href="css/moc.css" rel="stylesheet">
</head>
<body class="top">
	<div>
		<header>
			<h1>
				<a href="#">Beginner's Blog</a>
			</h1>
		</header>
	</div>
	<div class="form-main">
		<div class="form-div">

			<form class="form" class="form1">
				<p class="name">
					<strong>お疲れ様です<br>管理人 しおり さん
				</p>

				<div class="submit">
					<a href="usersSelect.html"> <input type="text" value="会員参照"
						class="button-blue" />
					</a>
				</div>

				<div class="submit">
					<a href="adminUpdate.html"> <input type="text" value="パスワード変更"
						class="button-blue" />
					</a>
				</div>

				<div class="submit">
					<a href="#"> <input type="text" value="ログアウト"
						class="button-blue" />
					</a>
				</div>
				<div class="ease"></div>
			</form>
		</div>
	</div>
</body>
</html>