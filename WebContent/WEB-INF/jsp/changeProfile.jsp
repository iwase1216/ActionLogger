<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>プロフィール</title>

<!-- Bootstrap core CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<meta name="theme-color" content="#563d7c">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="/GuiWork/css/dashboard.css" rel="stylesheet">
</head>
<body>
	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">Action
			Logger</a>
	</nav>
	<div class="row">
		<div class="col"></div>
		<div class="col-８">
			<h1 h3 mb-3 font-weight-normal>プロフィール確認</h1>
			<br>
			<h2>ユーザーID:</h2>
			<table border="1">
			<tr><td width="200">${userid}</tr>
			</table>
			<br/>
			<form action="/ActionLogger/Profile" method="post">
			<h2>一言コメント：</h2>
			<input type="hidden" name="userid" value="${userid}">
		    <input type="text" name="comment">
            <input type="submit" value="変更">
			<%-- ${errorData.message}<br> --%>
			<%-- <a href="${errorData.link}">${errorData.linkStr}</a> --%>
			

            <br/>
            </form>
			<a href="/ActionLogger/">戻る</a>

		</div>
		<div class="col"></div>

	</div>
</body>

</html>