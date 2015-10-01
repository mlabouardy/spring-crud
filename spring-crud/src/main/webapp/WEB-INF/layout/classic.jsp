<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title"></tiles:getAsString></title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!--  JQuery script -->
<script src="https://code.jquery.com/jquery-2.1.4.min.js" /></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style>
.container {
	margin-top: 50px;
}

.row-option-left {
	float: right;
}

.btn-success a {
	text-decoration: none;
	color: #fff;
}
</style>
</head>
<body>
	<div class="container">
		<tiles:insertAttribute name="body" />
		<br />
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>