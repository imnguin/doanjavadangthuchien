<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<body>
	<div style="width: 55%">
		<form style="margin-bottom: 20px">
			<input type="file" id="files" multiple /><br /> <input
				id="uploadButton" type="button" value="Upload"
				style="margin-top: 20px" />
		</form>
		<div id='progressBar' style='height: 20px; margin-bottom: 0px'>
			<div id='bar' style='height: 100%; background: #33dd33; width: 0%'>
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
		fd.append("multipartFile", file);
		xhr.upload.addEventListener("progress", onUploadProgress, false);
		xhr.addEventListener("load", onUploadComplete, false);
		xhr.addEventListener("error", onUploadFailed, false);
		xhr.open("POST", "save-upload");
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