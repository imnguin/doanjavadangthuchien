<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body>
	<div class="span9" id="content">
		<div class="row-fluid">
			<!-- block -->
			<div class="block">
				<div class="navbar navbar-inner block-header">
					<div class="muted pull-left">THÊM DANH MỤC</div>
				</div>
				<div class="block-content collapse in">
					<div class="span12">
						<form:form action="save" method="post" modelAttribute="category" class="form-horizontal">
							<fieldset>
								<div class="control-group">
									<label class="control-label" for="typeahead">Tên danh
										mục </label>
									<div class="controls">
										<form:input path="name"/>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="typeahead">Trạng thái
									</label>
									<div class="controls">
										<form:select path="status">
											<form:option value="1">Hiển thị</form:option>
											<form:option value="0">Không hiển thị</form:option>
										</form:select>
									</div>
								</div>
								<div class="form-actions">
	                            	<button type="submit" class="btn btn-primary">Save changes</button>
                               </div>
							</fieldset>
						</form:form>
					</div>
				</div>
			</div>
			<!-- /block -->
		</div>
	</div>
</body>