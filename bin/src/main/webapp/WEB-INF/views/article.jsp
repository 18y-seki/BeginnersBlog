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
<link href="icon.png" rel="image/Blog_icon">
<link href="css/article.css" rel="stylesheet">
<link href="css/commons.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
<link href="css/overflow.css" rel="stylesheet">
<!-- jquery読み込み -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<!-- スクロール -->
<script type="text/javascript">
$(function(){
    $("a[href^=#]").click(function(){
    var speed = 1200;
    var href = $(this).attr("href");
    var target = $(href == "#" || href == ""?"html" : href);
    var position = target.offset().top;
    $("body, html").animate({scrollTop:position}, speed, "swing");
    return false;
    });
});
</script>

</head>
<body>

	<div id="top3">
		<header>
			<h1>
				<a href="top">
					Beginner's Blog
				</a>
			</h1>
		</header>
	</div>

<fieldset class="containe">
		<div class="column">
			<div id="content">
				<div class="title">
						<h2>${art.title}</h2>
				</div>
				<div class="text">
					${art.articleText}
					<br>
					<img src="img/resize_image.jpg">
					<p class="kategori">カテゴリ：${art.category_01}　　　　　投稿日時:${art.createdAt}</p>
					</fieldset>
					<div>
						<fieldset class="containeC">
						<div class="overflow">
							<h3>コメント</h3>

							<c:forEach var="comment" items="${comments}">
							<p>名前:${comment.userName}</p>
							<p class="comment">${comment.commentText}</p>
							<p class="nitiji">${comment.createdAt}</p>
							<br>

							</c:forEach>
							</div>
						</fieldset>
						<fieldset class="containe">
							<h3>コメントフォーム</h3>
							<form:form action="comment" modelAttribute="form">
								※コメントは最大1000文字まで<br> <label>名前:${login.userName}</label>
								<br>
								<label>コメント:</label>
								<form:textarea path="commentText" rows="4" cols="40"/>
								<br> <input type="submit" value="送信">
							</form:form>
						</fieldset>
						<fieldset class="containe">
							<div align="center">
								<div id="page">
									<div style="">
										<a href="sample3" class="square_btn"><i
											class="fa fa-caret-right"></i>前の記事へ</a> <a href="sample2"
											class="square_btn"><i class="fa fa-caret-right"></i>次の記事へ</a>
									</div>
								</div>
						</fieldset>
					</div>
					<div class="prof2">
					<a href="articleUpdate">記事の編集</a>
					<a href="articleDelete">記事の削除</a>
					</div>
						<br><br><br><br>
					<div class="scroll_button">
						<a href="#">ページTOPへ戻る</a>
					</div>
</body>
</html>