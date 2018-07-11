<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link rel="icon" href="icon.png">
	<link rel="stylesheet" href="css/commons.css">
	<link rel="stylesheet" href="css/top.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">

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
<div id="top">
		<header>
			<h1><p>Beginner's Blog</p></h1>
		</header>
		<p id="headM">このサイトはブログ初心者に向けたブログサイトです！<br></p>
		<p id="headS"><span id="under"><a href="help">このサイトについて詳しく知る</a></span></p>
		<a href="newInsert" class="fl_tw2">
			<i class="fa fa-twitter"></i> <span>新規登録</span>
		</a>
		<a href="login" class="fl_tw3">
			<i class="fa fa-twitter2"></i> <span>ログイン</span>
		</a>
		<div id="jirusi">
			<img src="sankaku1.png" alt="矢印">
			<div></div>
		</div>
	</div>
	<br><br><br><br>
<p class="sintyaku">新着記事一覧</p>
	<br>
<table class="brwsr2">
<form:form action="top" modelAttribute="form" method="get">
	<tbody>
	<tr><th class="tr2"></><th class="tr2">記事タイトル</><th class="tr2">カテゴリ</><th class="tr2">投稿者</><th class="tr2">投稿日時</>



<c:forEach var="article" items="${articleList}"></c:forEach>

<tr>
						<td>${fn:escapeXml(article.title)}</td>
						<td>${fn:escapeXml(article.category01)}</td>
						<td>${fn:escapeXml(article.createdAt)}</td>
						<td>${fn:escapeXml(article.cupdatedAt)}</td>

</tr>
    </tbody>
    </form:form>
</table>


<div class="yohaku">
</div>
		<div class="scroll_button">
   			 <a href="#">ページTOPへ戻る</a>
		</div>
	</div>
</body>
</html>