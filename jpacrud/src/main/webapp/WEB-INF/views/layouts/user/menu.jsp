<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="sidebar sidebar-active">
	<button class="btn btn-close">
		<img src="<c:url value="/web/assets/x.svg"/>" alt="close">
	</button>
	<div class="sidebar-content">
		<h2>TRUYỆN HAY</h2>
		<form action="">
			<input type="text" name="timkiem" placeholder="Tìm kiếm truyện..."/>
			<input type="submit" value="Tìm"/>
		</form>
		
		<ul class="list-group">
			<li class="list-group-item"><a href="/btphantrang/trang-chu"><span>Trang chủ</span>
			</a></li>
			<li class="list-group-item"><a href="danh-muc/tat-ca"><span>Manga</span>
			</a></li>
			<li class="list-group-item social-network"><a href="#"
				class="icon"> <img class="facebook" src="<c:url value="/web/assets/facebook.svg"/>" alt="Facebook">
			</a> <a href="#" class="icon"> <img class="instagram" src="<c:url value="/web/assets/instagram.svg"/>" alt="Instagram">
			</a></li>
		</ul>
	</div>
</nav>