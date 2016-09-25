<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<!-- --> 
<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.custom.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/chosen.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/datepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/daterangepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/colorpicker.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap-editable.css" /> 
<link rel="stylesheet" type="text/css" href="${contextPath}/static/assets/js/realuploader/css/classic.css" />

<!-- ajax layout which only needs content area -->
<div class="page-header">
	<h1>
		Selling a new Product 
	</h1>
</div><!-- /.page-header -->

<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->
		<form id="fileupload" class="form-horizontal" role="form" action='${contextPath}/product/operateproduct?oper=add' method='post'>  
			<div class="row">
				<div class="col-xs-12">  
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Product Images Upload for ${product.name}</h4>
							<div class="hidden" >
								<input type="text" id="productid" placeholder="Text Field" class="form-control" name="productid" value='${product.productid}' />   
							</div>
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
								<div class="panel panel-primary"> 
					                <div class="panel-body"> 
			       	               		<div id="imageuploader" ></div>    
			     	               </div>
					            </div> 
							</div>
						</div>
					</div>	 
				</div>
			</div> 
		</form> 

		<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="${contextPath}/static/assets/js/excanvas.js"></script>
<![endif]-->  

<script type="text/javascript">
	var scripts = [null,
	               "${contextPath}/static/assets/js/jquery-ui.custom.js",
	               "${contextPath}/static/assets/js/jquery.ui.touch-punch.js",
	               "${contextPath}/static/assets/js/chosen.jquery.js",
	               "${contextPath}/static/assets/js/fuelux/fuelux.spinner.js",
	               "${contextPath}/static/assets/js/date-time/bootstrap-datepicker.js",
	               "${contextPath}/static/assets/js/date-time/bootstrap-timepicker.js",
	               "${contextPath}/static/assets/js/date-time/moment.js",
	               "${contextPath}/static/assets/js/date-time/daterangepicker.js",
	               "${contextPath}/static/assets/js/date-time/bootstrap-datetimepicker.js",
	               "${contextPath}/static/assets/js/bootstrap-colorpicker.js",
	               "${contextPath}/static/assets/js/jquery.knob.js",
	               "${contextPath}/static/assets/js/jquery.autosize.js",
	               "${contextPath}/static/assets/js/jquery.inputlimiter.1.3.1.js",
	               "${contextPath}/static/assets/js/jquery.maskedinput.js",
	               "${contextPath}/static/assets/js/bootstrap-tag.js",  
	               "${contextPath}/static/assets/js/realuploader/js/realuploader-min.js",
	               null]
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {
	  //inline scripts related to this page
	  	function getContextPath() {
			var pathName = document.location.pathname;
			var index = pathName.substr(1).indexOf("/");
			var result = pathName.substr(0, index + 1);
			return result;
		}
	  
	 	jQuery(function($) {
	 		
	 		var uploader = new RealUploader("#imageuploader", {
	            accept: "image/*",
	            url: getContextPath() + "/attachment/uploadImages",
	            data:
	            	{
	            		productid: $('#productid').val()
	            	},
	            dropArea: '#div|a',
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
