<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<body>
	<section id="carouselCaptions" class="carousel slide carousel-fade"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselCaptions" data-slide-to="0" class="active"></li>
			<li data-target="#carouselCaptions" data-slide-to="1"></li>
			<li data-target="#carouselCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
			<img src="<c:url value="/web/assets/images/video.png"/>" alt="...">
				<div class="carousel-gradient-overlay">
					<div class="carousel-caption">
						<div class="carousel-content">
							<h1>Dr. Stone</h1>
							<p>Dr. Stone là một loạt manga Nhật Bản được viết bởi
								Riichiro Inagaki và minh họa bởi Boichi, đăng trên Weekly Shonen
								Jump từ ngày 06 tháng 3 năm 2017 với các chương đơn lẻ được thu
								thập...</p>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="<c:url value="/web/assets/images/1.png"/>" alt="...">
				<div class="carousel-gradient-overlay">
					<div class="carousel-caption">
						<div class="carousel-content">
							<h1>Dr. Stone</h1>
							<p>Dr. Stone là một loạt manga Nhật Bản được viết bởi
								Riichiro Inagaki và minh họa bởi Boichi, đăng trên Weekly Shonen
								Jump từ ngày 06 tháng 3 năm 2017 với các chương đơn lẻ được thu
								thập...</p>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
			<img src="<c:url value="/web/assets/images/phuong-nghich-thien-ha.png"/>" alt="...">
				<div class="carousel-gradient-overlay">
					<div class="carousel-caption">
						<div class="carousel-content">
							<h1>Dr. Stone</h1>
							<p>Dr. Stone là một loạt manga Nhật Bản được viết bởi
								Riichiro Inagaki và minh họa bởi Boichi, đăng trên Weekly Shonen
								Jump từ ngày 06 tháng 3 năm 2017 với các chương đơn lẻ được thu
								thập...</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="card-list container-fluid">
		<h3>Truyện hay</h3>
			<div class="row" style="align-items: flex-end;">
				<c:forEach var="comic" items="${lstcommic}">
					<div class="col-lg">
						<div class="card card-left">
							<div class="card-img-container">
							<img class="card-img" src="<c:url value="/web/assets/images/${comic.thumbnail }"/>" alt="Card image cap">
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
									<h5 class="card-title">${comic.name}</h5>
									<c:url var="urlcomic"  value="/truyen">
									<c:param name="id">${comic.id}</c:param>
									<c:param name="name">chap1</c:param>
									</c:url>
									<a href="${urlcomic }" class="btn btn-secondary btn-sm">Đọc</a>
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
					</div>
				</c:forEach>
			</div>
	</section>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
	<script type="text/javascript">
		$('#abc').click(function() {
			$.ajax({
				type: "GET",
				headers: { 
			        Accept : "application/json; charset=utf-8",
			        "Content-Type": "application/json; charset=utf-8"
			    },
			    url: '${pageContext.request.contextPath}/dshs',
			    success: function(result){
			    	console.log(result);
				}, 
				error:function(data,status,er) { 
			        alert('lỗi');
			    }
			});
		});
	</script>
</body>
