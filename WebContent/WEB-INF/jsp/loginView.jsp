<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8">
<title>ActionLogger ログイン</title>
<style>
header{
background-color:#a9a9a9;
}
</style>
</head>
<body style="background-color:#fffacd;">
<header>
<h2 >ActionLogger</h2>
</header>
</body>
<form action="/ActionLogger/logincheck" method="post">
<p>ユーザー名<br> <input type="text" name="userid" placeholder="名前" required autofocus></p>
</html>