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
  text-align: center
}
div{height:500px;}
body{
text-align:center;


}
</style>
</head>
<body style="background-color:#fffacd;">
<header>

   <h2 >ActionLogger　　by KBC</h2>

</header>
<form action="/ActionLogger/logincheck" method="post">
<div>
<br><h2>ユーザー名</h2><input type="text" name="userid" placeholder="名前" required autofocus>
<br><h2>パスワード</h2><input type="password" name="password" placeholder="パスワード" required>
<br>
<br>
<input type="submit" name="submit" value="送信">
</div>

<a href="/ActionLogger/AddUser">新規登録はこちら</a>
</body>
</html>