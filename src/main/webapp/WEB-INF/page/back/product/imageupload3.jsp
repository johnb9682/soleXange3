<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>  
<!-- Bootstrap styles -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Generic page styles 
<link rel="stylesheet" href="${contextPath}/static/assets/js/jQuery-File-Upload/css/style.css">-->
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars 
<link rel="stylesheet" href="${contextPath}/static/assets/js/jQuery-File-Upload/css/jquery.fileupload.css"> -->
<body> 
<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->
		<form class="form-horizontal" role="form" action='${contextPath}/product/operateproduct?oper=add' method='post'> 
			
			<div class="row">
				<div class="col-xs-8 ">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Product Name</h4> 
						</div> 
						<div class="widget-body"> 
							<div class="widget-main">    
								<input type="text" id="name" placeholder="Text Field" class="form-control" name="name"/>  
								<!-- /section:plugins/input.autosize -->
							</div>
						</div>
					</div>
				</div><!-- /.span -->  
			</div>
			
			<div class="space-16"></div>  
			
			<div class="row">
				<div class="col-xs-4 ">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Price </h4> 
						</div> 
						<div class="widget-body"> 
							<div class="widget-main">    
								<input type="text" id="price" placeholder="Text Field" class="form-control" name="price"/>   
							</div>
						</div>
					</div>
				</div><!-- /.span -->  
				<div class="col-xs-4 ">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Size</h4> 
						</div> 
						<div class="widget-body"> 
							<div class="widget-main">    
								<input type="text" id="size" placeholder="Text Field" class="form-control" name="size"/>   
							</div>
						</div>
					</div>
				</div><!-- /.span -->  
			</div>
			
			<div class="space-16"></div>  
			
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Product Description</h4> 
						</div>

						<div class="widget-body">
							<div class="widget-main">  
							
								<div> 

									<textarea id="description" class="autosize-transition form-control limited" maxlength="255" name="description"></textarea>
								</div>

								<!-- /section:plugins/input.autosize -->
							</div>
						</div>
					</div>
				</div><!-- /.span --> 
				<div class="col-xs-4 ">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Contact Info </h4> 
						</div> 
						<div class="widget-body"> 
							<div class="widget-main">    
								<input type="text" id="contactinfo" placeholder="Text Field" class="form-control" name="contactinfo"/>   
							</div>
						</div>
					</div>
				</div><!-- /.span -->  			
			</div>

			<div class="space-16"></div>  

			<div class="row"> 
				<div class="col-sm-4">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Product Images Upload</h4>

							<div class="widget-toolbar">
								<a href="#" data-action="collapse">
									<i class="ace-icon fa fa-chevron-up"></i>
								</a>

								<a href="#" data-action="close">
									<i class="ace-icon fa fa-times"></i>
								</a>
							</div>
						</div>

						<div class="widget-body">
							<div class="widget-main">
								<div class="form-group">
									<div class="col-xs-12">
										<!-- #section:custom/file-input -->
										<input type="file" id="id-input-file-2" name="imageprofile1"/>
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-12">
										<input multiple="" type="file" id="id-input-file-3" name="imageprofile" />

										<!-- /section:custom/file-input -->
									</div>
								</div>

								<!-- #section:custom/file-input.filter -->
								<label>
									<input type="checkbox" name="file-format" id="id-file-format" class="ace" />
									<span class="lbl"> Allow only images</span>
								</label>

								<!-- /section:custom/file-input.filter -->
							</div>
						</div>
					</div>
				</div> 

				<div class="col-xs-12 col-sm-4">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Product Category</h4>

							<span class="widget-toolbar"> 

								<a href="#" data-action="reload">
									<i class="ace-icon fa fa-refresh"></i>
								</a>  
								
							</span>
						</div>

						<div class="widget-body">
							<div class="widget-main"> 
 

								<!-- #section:plugins/input.chosen -->
								<div>
									<label for="form-field-select-3">Choose Proper Category</label>

									<br />
									<select class="chosen-select form-control" id="category" data-placeholder="Choose a Category..." name="categoryid" >
										<option value="">  </option> 
									</select>
								</div> 

								<!-- /section:plugins/input.chosen -->
							</div>
						</div>
					</div>
				</div><!-- /.span -->
			
			</div><!-- /.row -->

			<div class="space-24"></div>	  
			 			
			<div class="hr hr-24"></div> 
			
			<div class="row">
				<div class="col-xs-8 center">
					<div>
						<!-- The fileinput-button span is used to style the file input field as button -->
					    <span class="btn btn-success fileinput-button">
					        <i class="glyphicon glyphicon-plus"></i>
					        <span>Add files...</span>
					        <!-- The file input field used as target for the file upload widget -->
					        <input id="fileupload" type="file" name="files[]" multiple>
					    </span>
					    <br>
					    <br>
					    <!-- The global progress bar -->
					    <div id="progress" class="progress">
					        <div class="progress-bar progress-bar-success"></div>
					    </div>
					    <!-- The container for the uploaded files -->
					    <div id="files" class="row files"></div> 
				    </div>
				</div>
			</div>
			 
			<div class="row">
				<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
					
						<button class="btn btn-info" type="submit" id="submit" value="submit"> 
							<i class="ace-icon fa fa-check bigger-110"></i>
							Submit  
						</button>
	
						&nbsp; &nbsp; &nbsp;
						<button class="btn" type="reset">
							<i class="ace-icon fa fa-undo bigger-110"></i>
							Reset
						</button>
					</div>
				</div>
			</div> 
			 
		</form> 

		<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/vendor/jquery.ui.widget.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="//blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="//blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads --> 
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-validate.js"></script> 

<script>
/*jslint unparam: true, regexp: true */
/*global window, $ */
$(function () {
    'use strict';
    // Change this to the location of your server-side upload handler:
    var url = window.location.hostname === 'blueimp.github.io' ?
                '//jquery-file-upload.appspot.com/' : 'server/php/',
        uploadButton = $('<button/>')
            .addClass('btn btn-primary')
            .prop('disabled', true)
            .text('Processing...')
            .on('click', function () {
                var $this = $(this),
                    data = $this.data();
                $this
                    .off('click')
                    .text('Abort')
                    .on('click', function () {
                        $this.remove();
                        data.abort();
                    });
                data.submit().always(function () {
                    $this.remove();
                });
            });
    $('#fileupload').fileupload({
        url: url,
        dataType: 'json',
        autoUpload: false,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
        maxFileSize: 999000,
        // Enable image resizing, except for Android and Opera,
        // which actually support image resizing, but fail to
        // send Blob objects via XHR requests:
        disableImageResize: /Android(?!.*Chrome)|Opera/
            .test(window.navigator.userAgent),
        previewMaxWidth: 100,
        previewMaxHeight: 100,
        previewCrop: true
    }).on('fileuploadadd', function (e, data) {
        data.context = $('<div/>').appendTo('#files');
        $.each(data.files, function (index, file) {
            var node = $('<p/>')
                    .append($('<span/>').text(file.name));
            if (!index) {
                node
                    .append('<br>')
                    .append(uploadButton.clone(true).data(data));
            }
            node.appendTo(data.context);
        });
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
            file = data.files[index],
            node = $(data.context.children()[index]);
        if (file.preview) {
            node
                .prepend('<br>')
                .prepend(file.preview);
        }
        if (file.error) {
            node
                .append('<br>')
                .append($('<span class="text-danger"/>').text(file.error));
        }
        if (index + 1 === data.files.length) {
            data.context.find('button')
                .text('Upload')
                .prop('disabled', !!data.files.error);
        }
    }).on('fileuploadprogressall', function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress .progress-bar').css(
            'width',
            progress + '%'
        );
    }).on('fileuploaddone', function (e, data) {
        $.each(data.result.files, function (index, file) {
            if (file.url) {
                var link = $('<a>')
                    .attr('target', '_blank')
                    .prop('href', file.url);
                $(data.context.children()[index])
                    .wrap(link);
            } else if (file.error) {
                var error = $('<span class="text-danger"/>').text(file.error);
                $(data.context.children()[index])
                    .append('<br>')
                    .append(error);
            }
        });
    }).on('fileuploadfail', function (e, data) {
        $.each(data.files, function (index) {
            var error = $('<span class="text-danger"/>').text('File upload failed.');
            $(data.context.children()[index])
                .append('<br>')
                .append(error);
        });
    }).prop('disabled', !$.support.fileInput)
        .parent().addClass($.support.fileInput ? undefined : 'disabled');
});
</script>
</body>
</html>