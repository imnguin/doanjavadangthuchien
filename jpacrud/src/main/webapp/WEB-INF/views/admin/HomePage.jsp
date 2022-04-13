<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<body>
	<div class="main-content">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="overview-wrap">
							<h2 class="title-1">overview</h2>
							<button class="au-btn au-btn-icon au-btn--blue">
								<i class="zmdi zmdi-plus"></i>add item
							</button>
						</div>
					</div>
				</div>
				<div class="row m-t-25">
					<div class="col-sm-6 col-lg-3">
						<div class="overview-item overview-item--c1">
							<div class="overview__inner">
								<div class="overview-box clearfix">
									<div class="icon">
										<i class="zmdi zmdi-account-o"></i>
									</div>
									<div class="text">
										<h2>10368</h2>
										<span>members online</span>
									</div>
								</div>
								<div class="overview-chart">
									<canvas id="widgetChart1"></canvas>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-lg-3">
						<div class="overview-item overview-item--c2">
							<div class="overview__inner">
								<div class="overview-box clearfix">
									<div class="icon">
										<i class="zmdi zmdi-shopping-cart"></i>
									</div>
									<div class="text">
										<h2>388,688</h2>
										<span>items solid</span>
									</div>
								</div>
								<div class="overview-chart">
									<canvas id="widgetChart2"></canvas>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-lg-3">
						<div class="overview-item overview-item--c3">
							<div class="overview__inner">
								<div class="overview-box clearfix">
									<div class="icon">
										<i class="zmdi zmdi-calendar-note"></i>
									</div>
									<div class="text">
										<h2>1,086</h2>
										<span>this week</span>
									</div>
								</div>
								<div class="overview-chart">
									<canvas id="widgetChart3"></canvas>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-lg-3">
						<div class="overview-item overview-item--c4">
							<div class="overview__inner">
								<div class="overview-box clearfix">
									<div class="icon">
										<i class="zmdi zmdi-money"></i>
									</div>
									<div class="text">
										<h2>$1,060,386</h2>
										<span>total earnings</span>
									</div>
								</div>
								<div class="overview-chart">
									<canvas id="widgetChart4"></canvas>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-9">
						<h2 class="title-1 m-b-25">Earnings By Items</h2>
						<div class="table-responsive table--no-card m-b-40">
							<table class="table table-borderless table-striped table-earning">
								<thead>
									<tr>
										<th>date</th>
										<th>order ID</th>
										<th>name</th>
										<th class="text-right">price</th>
										<th class="text-right">quantity</th>
										<th class="text-right">total</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2018-09-29 05:57</td>
										<td>100398</td>
										<td>iPhone X 64Gb Grey</td>
										<td class="text-right">$999.00</td>
										<td class="text-right">1</td>
										<td class="text-right">$999.00</td>
									</tr>
									<tr>
										<td>2018-09-28 01:22</td>
										<td>100397</td>
										<td>Samsung S8 Black</td>
										<td class="text-right">$756.00</td>
										<td class="text-right">1</td>
										<td class="text-right">$756.00</td>
									</tr>
									<tr>
										<td>2018-09-27 02:12</td>
										<td>100396</td>
										<td>Game Console Controller</td>
										<td class="text-right">$22.00</td>
										<td class="text-right">2</td>
										<td class="text-right">$44.00</td>
									</tr>
									<tr>
										<td>2018-09-26 23:06</td>
										<td>100395</td>
										<td>iPhone X 256Gb Black</td>
										<td class="text-right">$1199.00</td>
										<td class="text-right">1</td>
										<td class="text-right">$1199.00</td>
									</tr>
									<tr>
										<td>2018-09-25 19:03</td>
										<td>100393</td>
										<td>USB 3.0 Cable</td>
										<td class="text-right">$10.00</td>
										<td class="text-right">3</td>
										<td class="text-right">$30.00</td>
									</tr>
									<tr>
										<td>2018-09-29 05:57</td>
										<td>100392</td>
										<td>Smartwatch 4.0 LTE Wifi</td>
										<td class="text-right">$199.00</td>
										<td class="text-right">6</td>
										<td class="text-right">$1494.00</td>
									</tr>
									<tr>
										<td>2018-09-24 19:10</td>
										<td>100391</td>
										<td>Camera C430W 4k</td>
										<td class="text-right">$699.00</td>
										<td class="text-right">1</td>
										<td class="text-right">$699.00</td>
									</tr>
									<tr>
										<td>2018-09-22 00:43</td>
										<td>100393</td>
										<td>USB 3.0 Cable</td>
										<td class="text-right">$10.00</td>
										<td class="text-right">3</td>
										<td class="text-right">$30.00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-lg-3">
						<h2 class="title-1 m-b-25">Top countries</h2>
						<div class="au-card au-card--bg-blue au-card-top-countries m-b-40">
							<div class="au-card-inner">
								<div class="table-responsive">
									<table class="table table-top-countries">
										<tbody>
											<tr>
												<td>United States</td>
												<td class="text-right">$119,366.96</td>
											</tr>
											<tr>
												<td>Australia</td>
												<td class="text-right">$70,261.65</td>
											</tr>
											<tr>
												<td>United Kingdom</td>
												<td class="text-right">$46,399.22</td>
											</tr>
											<tr>
												<td>Turkey</td>
												<td class="text-right">$35,364.90</td>
											</tr>
											<tr>
												<td>Germany</td>
												<td class="text-right">$20,366.96</td>
											</tr>
											<tr>
												<td>France</td>
												<td class="text-right">$10,366.96</td>
											</tr>
											<tr>
												<td>Australia</td>
												<td class="text-right">$5,366.96</td>
											</tr>
											<tr>
												<td>Italy</td>
												<td class="text-right">$1639.32</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
							<div class="au-card-title"
								style="background-image: url('images/bg-title-01.jpg');">
								<div class="bg-overlay bg-overlay--blue"></div>
								<h3>
									<i class="zmdi zmdi-account-calendar"></i>26 April, 2018
								</h3>
								<button class="au-btn-plus" type="button" data-toggle="modal" data-target="#exampleModalCenter">
									<i class="zmdi zmdi-plus"></i>
								</button>
							</div>
							<div class="au-task js-list-load">
								<div class="au-task__title">
									<p>Tasks for John Doe</p>
								</div>
								<div class="au-task-list js-scrollbar3">
									<div class="au-task__item au-task__item--danger">
										<div class="au-task__item-inner">
											<h5 class="task">
												<a href="#">Meeting about plan for Admin Template 2018</a>
											</h5>
											<span class="time">10:00 AM</span>
										</div>
									</div>
									<div class="au-task__item au-task__item--warning">
										<div class="au-task__item-inner">
											<h5 class="task">
												<a href="#">Create new task for Dashboard</a>
											</h5>
											<span class="time">11:00 AM</span>
										</div>
									</div>
									<div class="au-task__item au-task__item--primary">
										<div class="au-task__item-inner">
											<h5 class="task">
												<a href="#">Meeting about plan for Admin Template 2018</a>
											</h5>
											<span class="time">02:00 PM</span>
										</div>
									</div>
									<div class="au-task__item au-task__item--success">
										<div class="au-task__item-inner">
											<h5 class="task">
												<a href="#">Create new task for Dashboard</a>
											</h5>
											<span class="time">03:30 PM</span>
										</div>
									</div>
									<div class="au-task__item au-task__item--danger js-load-item">
										<div class="au-task__item-inner">
											<h5 class="task">
												<a href="#">Meeting about plan for Admin Template 2018</a>
											</h5>
											<span class="time">10:00 AM</span>
										</div>
									</div>
									<div class="au-task__item au-task__item--warning js-load-item">
										<div class="au-task__item-inner">
											<h5 class="task">
												<a href="#">Create new task for Dashboard</a>
											</h5>
											<span class="time">11:00 AM</span>
										</div>
									</div>
								</div>
								<div class="au-task__footer">
									<button class="au-btn au-btn-load js-load-btn"
										data-toggle="modal" data-target="#exampleModalCenter">load
										more</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
							<div class="au-card-title"
								style="background-image: url('images/bg-title-02.jpg');">
								<div class="bg-overlay bg-overlay--blue"></div>
								<h3>
									<i class="zmdi zmdi-comment-text"></i>New Messages
								</h3>
								<button class="au-btn-plus">
									<i class="zmdi zmdi-plus"></i>
								</button>
							</div>
							<div class="au-inbox-wrap js-inbox-wrap">
								<div class="au-message js-list-load">
									<div class="au-message__noti">
										<p>
											You Have <span>2</span> new messages
										</p>
									</div>
									<div class="au-message-list">
										<div class="au-message__item unread">
											<div class="au-message__item-inner">
												<div class="au-message__item-text">
													<div class="avatar-wrap">
														<div class="avatar">
															<img src="images/icon/avatar-02.jpg" alt="John Smith">
														</div>
													</div>
													<div class="text">
														<h5 class="name">John Smith</h5>
														<p>Have sent a photo</p>
													</div>
												</div>
												<div class="au-message__item-time">
													<span>12 Min ago</span>
												</div>
											</div>
										</div>
										<div class="au-message__item unread">
											<div class="au-message__item-inner">
												<div class="au-message__item-text">
													<div class="avatar-wrap online">
														<div class="avatar">
															<img src="images/icon/avatar-03.jpg"
																alt="Nicholas Martinez">
														</div>
													</div>
													<div class="text">
														<h5 class="name">Nicholas Martinez</h5>
														<p>You are now connected on message</p>
													</div>
												</div>
												<div class="au-message__item-time">
													<span>11:00 PM</span>
												</div>
											</div>
										</div>
										<div class="au-message__item">
											<div class="au-message__item-inner">
												<div class="au-message__item-text">
													<div class="avatar-wrap online">
														<div class="avatar">
															<img src="images/icon/avatar-04.jpg" alt="Michelle Sims">
														</div>
													</div>
													<div class="text">
														<h5 class="name">Michelle Sims</h5>
														<p>Lorem ipsum dolor sit amet</p>
													</div>
												</div>
												<div class="au-message__item-time">
													<span>Yesterday</span>
												</div>
											</div>
										</div>
										<div class="au-message__item">
											<div class="au-message__item-inner">
												<div class="au-message__item-text">
													<div class="avatar-wrap">
														<div class="avatar">
															<img src="images/icon/avatar-05.jpg" alt="Michelle Sims">
														</div>
													</div>
													<div class="text">
														<h5 class="name">Michelle Sims</h5>
														<p>Purus feugiat finibus</p>
													</div>
												</div>
												<div class="au-message__item-time">
													<span>Sunday</span>
												</div>
											</div>
										</div>
										<div class="au-message__item js-load-item">
											<div class="au-message__item-inner">
												<div class="au-message__item-text">
													<div class="avatar-wrap online">
														<div class="avatar">
															<img src="images/icon/avatar-04.jpg" alt="Michelle Sims">
														</div>
													</div>
													<div class="text">
														<h5 class="name">Michelle Sims</h5>
														<p>Lorem ipsum dolor sit amet</p>
													</div>
												</div>
												<div class="au-message__item-time">
													<span>Yesterday</span>
												</div>
											</div>
										</div>
										<div class="au-message__item js-load-item">
											<div class="au-message__item-inner">
												<div class="au-message__item-text">
													<div class="avatar-wrap">
														<div class="avatar">
															<img src="images/icon/avatar-05.jpg" alt="Michelle Sims">
														</div>
													</div>
													<div class="text">
														<h5 class="name">Michelle Sims</h5>
														<p>Purus feugiat finibus</p>
													</div>
												</div>
												<div class="au-message__item-time">
													<span>Sunday</span>
												</div>
											</div>
										</div>
									</div>
									<div class="au-message__footer">
										<button class="au-btn au-btn-load js-load-btn">load
											more</button>
									</div>
								</div>
								<div class="au-chat">
									<div class="au-chat__title">
										<div class="au-chat-info">
											<div class="avatar-wrap online">
												<div class="avatar avatar--small">
													<img src="images/icon/avatar-02.jpg" alt="John Smith">
												</div>
											</div>
											<span class="nick"> <a href="#">John Smith</a>
											</span>
										</div>
									</div>
									<div class="au-chat__content">
										<div class="recei-mess-wrap">
											<span class="mess-time">12 Min ago</span>
											<div class="recei-mess__inner">
												<div class="avatar avatar--tiny">
													<img src="images/icon/avatar-02.jpg" alt="John Smith">
												</div>
												<div class="recei-mess-list">
													<div class="recei-mess">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit non iaculis</div>
													<div class="recei-mess">Donec tempor, sapien ac
														viverra</div>
												</div>
											</div>
										</div>
										<div class="send-mess-wrap">
											<span class="mess-time">30 Sec ago</span>
											<div class="send-mess__inner">
												<div class="send-mess-list">
													<div class="send-mess">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit non iaculis</div>
												</div>
											</div>
										</div>
									</div>
									<div class="au-chat-textfield">
										<form class="au-form-icon">
											<input class="au-input au-input--full au-input--h65"
												type="text" placeholder="Type a message">
											<button class="au-input-icon">
												<i class="zmdi zmdi-camera"></i>
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="copyright">
							<p>
								Copyright © 2018 Colorlib. All rights reserved. Template by <a
									href="https://colorlib.com">Colorlib</a>.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content rounded-0">
          <div class="modal-body py-0">
            <div class="d-flex main-content">
              <div class="bg-image promo-img mr-3" style="background-image: url('images/img_1.jpg');">
              </div>
              <div class="content-text p-4">
                <h3>THÊM TRUYỆN</h3>
                <p></p>
                <form>
                  <div class="form-group">
                    <label for="country">Thể loại</label>
                      <select id="theloai" name="theloai" class="custom-select">
                		<c:forEach var="danhmuc" items="${dsdanhmuc}">
							<option value="${danhmuc.name }">${danhmuc.name }</option>
						</c:forEach>
                      </select>
                  </div>
                  <div class="form-group">
                    <label for="fname">Tên truyện</label>
                    <input type="text" class="form-control" id="fname" placeholder="Nhập tên">
                  </div>
                  <div class="form-group">
                    <label for="name">Trạng thái</label>
                    <select id="trangthai" name="trangthai" class="custom-select">
                		<option value="1">Hiển thị</option>
                		<option value="0">Không kiển thị</option>
                      </select>
                  </div>
                  
                  <div class="form-group row mb-4">
                      <div class="col-12">
                        <label for="mm">Chọn ảnh</label>
                      </div>
                      <div class="col-md-4">
                        <input type="file" id="files" multiple>
                      </div>
                  </div>
                  <div class="form-group">
                    <input id="uploadButton" type="button" value="Lưu" class="btn btn-primary btn-block" />
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
		var totalFileLength, totalUploaded, fileCount, filesUploaded;
		//To log everything on console
		function debug(s) {
			var debug = document.getElementById('debug');
		}
		//Will be called when upload is completed
		function onUploadComplete(e) {
			totalUploaded += document.getElementById('files').files[filesUploaded].size;
			filesUploaded++;
			debug('complete ' + filesUploaded + " of " + fileCount);
			debug('totalUploaded: ' + totalUploaded);
			if (filesUploaded < fileCount) {
				uploadNext();
			} else {
				var bar = document.getElementById('bar');
				bar.style.width = '100%';
				bar.innerHTML = '100% complete';
				alert('Finished uploading file(s)');
			}
		}
	
		//Will be called when user select the files in file control
		function onFileSelect(e) {
			var files = e.target.files; // FileList object
			var output = [];
			fileCount = files.length;
			totalFileLength = 0;
			for (var i = 0; i < fileCount; i++) {
				var file = files[i];
				totalFileLength += file.size;
			}
			document.getElementById('selectedFiles').innerHTML = output.join('');
			debug('totalFileLength:' + totalFileLength);
		}
	
		//This will continueously update the progress bar
		function onUploadProgress(e) {
			if (e.lengthComputable) {
				var percentComplete = parseInt((e.loaded + totalUploaded) * 100
						/ totalFileLength);
				var bar = document.getElementById('bar');
				bar.style.width = percentComplete + '%';
				bar.innerHTML = percentComplete + ' % complete';
			} else {
				debug('unable to compute');
			}
		}
	
		//the Ouchhh !! moments will be captured here
		function onUploadFailed(e) {
			alert("Error uploading file");
		}
	
		//Pick the next file in queue and upload it to remote server
		function uploadNext() {
			var xhr = new XMLHttpRequest();
			var fd = new FormData();
			var file = document.getElementById('files').files[filesUploaded];
			var name = document.getElementById('fname');
			fd.append("name", name);
			fd.append("multipartFile", file);
			xhr.upload.addEventListener("progress", onUploadProgress, false);
			xhr.addEventListener("load", onUploadComplete, false);
			xhr.addEventListener("error", onUploadFailed, false);
			xhr.open("POST", "AddComic");
			debug('uploading ' + file.name);
			xhr.send(fd);
		}
	
		//Let's begin the upload process
		function startUpload() {
			totalUploaded = filesUploaded = 0;
			uploadNext();
		}
	
		//Event listeners for button clicks
		window.onload = function() {
			document.getElementById('files').addEventListener('change',
					onFileSelect, false);
			document.getElementById('uploadButton').addEventListener('click',
					startUpload, false);
		}
	</script>
</body>