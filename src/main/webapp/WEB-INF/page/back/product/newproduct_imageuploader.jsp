<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>


<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.custom.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/chosen.css" /> 
<!-- 
<link rel="stylesheet" href="${contextPath}/static/assets/css/datepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/daterangepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/colorpicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap-editable.css" /> --> 


<link rel="stylesheet" type="text/css" href="${contextPath}/static/assets/js/realuploader/css/minimal.css" />

<!-- ajax layout which only needs content area -->
<div class="page-header">
	<h1>
		Selling a new Product 
	</h1>
</div><!-- /.page-header -->

<div id="imageuploader"></div>
 

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="${contextPath}/static/assets/js/excanvas.js"></script>
<![endif]-->  

<!-- <script src='https://rawgit.com/enyo/dropzone/master/dist/dropzone.js'></script> -->

<script type="text/javascript"> 
	var scripts = [null, "${contextPath}/static/assets/js/realuploader/js/realuploader-min.js",  null]
	
	//loadjscssfile("rawgit.com/enyo/dropzone/master/dist/dropzone.js", "js");
	
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {  
		
		//inline scripts related to this page 
		jQuery(document).ready(function () { 
			var uploader = new RealUploader("#imageuploader", {
	            accept: "image/*",
	            resizeImage: {
	                maxWidth:           200,
	                maxHeight:          0,
	                outputQuality:      1,
	                scaleMethod:        3,
	                outputFormat:       null,
	                allowOverResize:    false,
	                keepExif:           false,
	                keepAspectRatio:    true,
	                unsharpAmount:      0,
	                unsharpThreshold:   0,
	                alpha:              true
	            },
	        });
		});   
	});
</script>
