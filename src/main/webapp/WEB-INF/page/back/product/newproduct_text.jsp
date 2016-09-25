<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<!-- 
<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.custom.css" />--> 
<link rel="stylesheet" href="${contextPath}/static/assets/css/chosen.css" /> 
<link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap-editable.css" />  

<!-- ajax layout which only needs content area -->
<div class="page-header">
	<h1>
		Selling a new Product 
	</h1>
</div><!-- /.page-header -->

<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->
		<form id="fileupload" class="form-horizontal" role="form" action='#' method='post'>  
			
			<div class="space-16"></div>  
			
			<div class="row">
				<div class="col-xs-12 ">
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
				<div class="col-xs-6 ">
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
				<div class="col-xs-6 ">
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
				<div class="col-xs-12 col-sm-6">
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
				<div class="col-xs-6 ">
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
				<div class="col-xs-12">
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
			
			</div><!-- /.row -->

			<div class="space-24"></div>	  
			 			
			<div class="hr hr-24"></div>  
			 
			<div class="row">
				<div class="clearfix form-actions">
					<div class="col-xs-12 center">
					
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

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="${contextPath}/static/assets/js/excanvas.js"></script>
<![endif]-->  

<script type="text/javascript">
	var scripts = [null,
	               "${contextPath}/static/assets/js/jquery.validate.js",
	               "${contextPath}/static/assets/js/jquery-ui.custom.js",
	               "${contextPath}/static/assets/js/jquery.ui.touch-punch.js",
	               "${contextPath}/static/assets/js/chosen.jquery.js", 
	               "${contextPath}/static/assets/js/jquery.autosize.js",
	               "${contextPath}/static/assets/js/jquery.inputlimiter.1.3.1.js", 
	               "${contextPath}/static/assets/js/custom/newproduct_text.js",
	               null]
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {
	  //inline scripts related to this page
	  	function getContextPath() {
			var pathName = document.location.pathname;
			var index = pathName.substr(1).indexOf("/");
			var result = pathName.substr(0, index + 1);
			return result;
		}
	  
	  	var categoryInfo; 
	  	
		$.ajax({
			url : getContextPath() + "/category/getCategory",
			async : false,
			data : {},
			type : 'POST',
			dataType : 'json',
			complete : function(response) {
				var returninfo = eval("(" + response.responseText + ")");
				categoryInfo = returninfo.rows;
			}
		});  
	
		appendCategorySelectOption(categoryInfo);
		
		function appendCategorySelectOption(categoryInfo) {
			var node = document.getElementById("category");  
			for (var i in categoryInfo) {   
				var option = document.createElement("option");
				option.text = categoryInfo[i].name;
				option.value = categoryInfo[i].categoryid;
				node.add(option);
			} 
		}
	  
	 	jQuery(function($) {
	 		
	 		
	 		 
		
		});
	});
</script>
