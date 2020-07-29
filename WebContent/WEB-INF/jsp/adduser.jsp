<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー登録</title>
<style>
body.adduser{
text-align:center;
}
</style>
</head>
<body class="adduser">
<form class="form-adduser" action="/ActionLogger/adduser"
				method="post">
				<br>
				<h3>新規ユーザー登録画面</h3>
				<div class="user">
				<br>
					<label for="userid">ユーザーID</label> <input type="text"
						class="form-control" id="userid" name="userid"
						placeholder="ユーザーID" 　	required>
					<div class="invalid-feedback"><br></div>
				</div>
				<div class="pass">
					<label for="password">パスワード</label> <input type="password"
						class="form-control" id="password" name="password"
						placeholder="パスワード" 　required>
					<div class="invalid-feedback"><br></div>
				</div>
				<div class="name">
					<label for="name">氏名</label> <input type="text"
						class="form-control" id="name" name="name" placeholder="氏名"
						　required>
					<div class="invalid-feedback"><br></div>
				</div>
				<div class="address">
					<label for="address">住所（任意）</label> <input type="text"
						class="form-control" id="address" name="address" placeholder="住所">
				</div>
				<div class="number">
					<label for="tel">電話番号（任意）</label> <input type="text"
						class="form-control" id="tel" name="tel"
						placeholder="xxxx-xxxx-xxxx">
				</div>
				<%-- フォームの正当性確認データ --%>
				<div class="mail">
					<label for="email">メールアドレス（任意）</label> <input type="text"
						class="form-control" id="email" name="email" placeholder="メールアドレス">
				</div>
				<input type="submit" value="登録"></input>
</form>					
</body>
</html>