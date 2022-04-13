<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<body>
	<section id="watch-read-1" class="container-fluid row">
		<div class="col-md-6 offset-md-3">
			<h3>DR. STONE</h3>
			<p>
				Dr. Stone là một loạt manga Nhật Bản được viết bởi Riichiro Inagaki
				và minh họa bởi Boichi, đăng trên Weekly Shonen Jump từ ngày 06
				tháng 3 năm 2017 với các chương đơn lẻ được thu thập và xuất bản bởi
				Shueisha thành mười tập<span class="showmore">...</span><span
					class="showmore d-none"> tankōbon Tính đến tháng 4 năm 2019.
					Viz Media đã cấp phép cho manga ở Bắc Mỹ</span>
			</p>
			<div class="center">
				<button class="btn btn-link showmore-btn">Read More...</button>
			</div>
			<div class="chapter-control">
				<select class="form-control" id="chap">
				<c:forEach var="chap" items="${listchap}">
					<option value="${chap.name }">${chap.name }</option>
				</c:forEach>
				</select>
			</div>
			<div class="btn-centered">
				<div class="btn btn-dark" id="xem">Xem ngay</div>
			</div>
			<section class="read">
				<c:forEach var="comic" items="${comicchapter}">
					<tr>
						<td><img
							src="<c:url value="/web/assets/images/${comic.img}"/>"
							alt="list-icon"></td>
					</tr>
				</c:forEach>
			</section>
			<div class="chapter-control">
				<select class="form-control" id="chap">
				<c:forEach var="chap" items="${listchap}">
					<option disabled> Bạn đang đọc ${chapter}</option>
					<option value="${chap.name }">${chap.name }</option>
				</c:forEach>
				</select>
			</div>
			<div class="btn-centered">
				<div class="btn btn-dark" id="xem">Xem ngay</div>
			</div>
		</div>
	</section>
	<section id="watch-read-2" class="container-fluid">
		<div class="row">
			<div class="col-md-7">
				<div class="tag">
					<span class="badge badge-pill badge-primary"> English</span> <span
						class="badge badge-pill badge-warning"> Korean</span> <span
						class="badge badge-pill badge-success"> Vietnamese</span> <span
						class="badge badge-pill badge-secondary"> Japanese</span>
				</div>
				<textarea placeholder="Type somethimg" name="comment-input"
					id="comment-input" cols="30" rows="10" class="form-control"></textarea>
				<button class="btn btn-primary">Comment</button>
				<section id="comments">
					<div class="comments__information">
						<img src="<c:url value="/web/assets/Avatar(red).svg"/>"
							alt="avatar(red)">
						<p class="comments__information--name">Name Surname</p>
						<p class="comments__information--datetime">1h ago</p>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut ero labore et dolore magna
						aliqua. Ut enim ad minim veniam.</p>

				</section>
			</div>
			<section class="col-md-5 card-list">
				<div class="card card-small">
					<div class="card-img-container">
						<img class="card-img"
							src="<c:url value="/web/assets/images/1.png"/>">
						<div class="card-img-gradient-overlay">
							<div class="card-tag">
								<span class="badge badge-pill badge-primary"> English</span> <span
									class="badge badge-pill badge-warning">Korean</span> <span
									class="badge badge-pill badge-success"> Vietnamese</span> <span
									class="badge badge-pill badge-secondary"> Japanese</span>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="card-first">
							<h5 class="card-title">Thánh Võ Tinh Thần | Chap 35</h5>
							<a href="/pages/watch&read.html" class="btn btn-secondary btn-sm">Read
								Avaliable</a>
						</div>
						<div class="card-second">
							<p>12.374 views | 2 tháng trước</p>
							<div class="dot-group">
								<svg height="20" width="40">
                                        <circle cx="6" cy="10" r="5"
										class="dot-primary" />
                                        <circle cx="20" cy="10" r="5"
										class="dot-secondary" />
                                        <circle cx="35" cy="10" r="5"
										class="dot-success" />
                                    </svg>
							</div>
						</div>
					</div>
				</div>

			</section>
		</div>
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
	<script type="text/javascript">
		$('#xem').click(function() {
			var chap = $("#chap").val();
			window.location.href = "${pageContext.request.contextPath}/truyen?id=${idcomic}&name="+chap;
		});
	</script>
</body>