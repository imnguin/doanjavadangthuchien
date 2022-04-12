<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="<c:url value="/web/css/main.css" />" rel="stylesheet" />
</head>
<body>
	<%@include file="/WEB-INF/views/layouts/user/menu.jsp"%>
	<main class="main-active">
        <button id="sidebar-button" class="btn btn-primary btn-sm">
        	<img src="<c:url value="/web/assets/list.svg"/>" alt="list-icon">
        </button>
        <decorator:body />
    </main>
	<script
		src=" <c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" />"
		integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
		crossorigin="anonymous"></script>
	<script
		src=" <c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" />"></script>
	<script src=" <c:url value="/web/js/script.js" />"></script>
</body>

</html>