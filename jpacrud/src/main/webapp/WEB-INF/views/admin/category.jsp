<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<body>
	<div class="span9" id="content">
		<div class="row-fluid">
			<!-- block -->
			<div class="block">
				<div class="navbar navbar-inner block-header">
					<div class="muted pull-left">Danh mục truyện tranh</div>
				</div>
				<div class="block-content collapse in">
					<div class="span12">
						<div class="table-toolbar">
							<div class="btn-group">
								<a href="#"><button class="btn btn-success">
										Thêm mới <i class="icon-plus icon-white"></i>
									</button></a>
							</div>
						</div>

						<table cellpadding="0" cellspacing="0" border="0"
							class="table table-striped table-bordered" id="example2">
							<thead>
								<tr>
									<th>Mã danh mục</th>
									<th>Tên truyện</th>
								</tr>
							</thead>
								<c:forEach var="danhmuc" items="${dsdanhmuc}">
									<tr>
										<td>${danhmuc.id }</td>
										<td>${danhmuc.name }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- /block -->
		</div>
	</div>
</body>