<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/ui.jqgrid.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/js/nanogalary/dist/css/nanogallery_custom.min.css" type="text/css" /> 
<!-- <link rel="stylesheet" href="${contextPath}/static/assets/js/nanogalary/dist/css/themes/clean/nanogallery_clean.min.css" type="text/css" />  -->

<div class="row">
	<div class="col-xs-12">
		<div class="row space-12"></div>
		<div class="row">
			<div class="col-xs-12"> 
				<form class="form-search"> 
					<div class="btn-group">  
						<input type="text" class="btn-group search-query col-xs-8 pull-left" placeholder="Product Name" />
						<div class="btn-group col-xs-1 center">
							<button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle">
								Price
								<i class="ace-icon fa fa-angle-down icon-on-right"></i>
							</button> 
							<ul class="dropdown-menu">
								<li><a href="#" value="">${"<= 100"}</a></li>  
								<li><a href="#" value="">100~200</a></li>  
								<li><a href="#" value="">200~300</a></li>
								<li><a href="#" value="">300~400</a></li>
								<li><a href="#" value="">400~500</a></li>
								<li><a href="#" value="">${">= 500"}</a></li>
								<li class="divider"></li> 
								<li>
									<a href="#">Separated link</a>
								</li>
							</ul>
						</div>
						<div class="btn-group col-xs-1 center">
							<button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle">
								Size
								<i class="ace-icon fa fa-angle-down icon-on-right"></i>
							</button> 
							<ul class="dropdown-menu">
								<li><a href="#" id="4" >4</a></li>
								<li><a href="#" value="4.5">4.5</a></li>  
								<li><a href="#" value="5">5</a></li>  
								<li><a href="#" value="5.5">5.5</a></li>  
								<li><a href="#" value="6">6</a></li>  
								<li><a href="#" value="6.5">6.5</a></li>  
								<li><a href="#" value="7">7</a></li>  
								<li><a href="#" value="7.5">7.5</a></li>  
								<li><a href="#" value="8">8</a></li>  
								<li><a href="#" value="8.5">8.5</a></li>  
								<li><a href="#" value="9">9</a></li>  
								<li><a href="#" value="9.5">9.5</a></li>  
								<li><a href="#" value="10">10</a></li>  
								<li><a href="#" value="10.5">10.5</a></li>  
								<li><a href="#" value="11">11</a></li>  
								<li><a href="#" value="11.5">11.5</a></li>  
								<li><a href="#" value="12">12</a></li>
								<li><a href="#" value="12.5">12.5</a></li>    
								<li><a href="#" value="13">13</a></li>     
								<li><a href="#" value="13.5">13.5</a></li>
								<li><a href="#" value="14">14</a></li>     
							</ul>
						</div>
						<span class="input-group-btn">
							<button type="button" class="btn btn-primary btn-blue btn-sm">
								<span class="ace-icon fa fa-search icon-on-right bigger-110"></span>
								Search
							</button>
						</span> 
					</div>
				</form> 
			</div>
		</div> 
		<div class="row space-12"></div>
		<div class="row">
			<div class="col-xs-12">
				<div id="nanoGallery"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 center">
				<ul class="pagination">
					<li class="disabled">
						<a href="#">
							<i class="ace-icon fa fa-angle-double-left"></i>
						</a>
					</li> 
					<li class="active">
						<a href="#">1</a>
					</li> 
					<li>
						<a href="#">2</a>
					</li>  
					<li>
						<a href="#">
							<i class="ace-icon fa fa-angle-double-right"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- page specific plugin scripts -->
<script type="text/javascript">
	var scripts = [null, "${contextPath}/static/assets/js/nanogalary/dist/jquery.nanogallery.min.js"]
	function getContextPath() {
		var pathName = document.location.pathname;
		var index = pathName.substr(1).indexOf("/");
		var result = pathName.substr(0, index + 1);
		return result;
	}

	var remoteDateSource;

	$.ajax({
		url : getContextPath() + "/product/getproductinfo",
		async : false,
		data : {},
		type : 'POST',
		dataType : 'json',
		complete : function(response) {
			var returninfo = eval("(" + response.responseText + ")");
			remoteDateSource = returninfo.data;
		}
	});
	
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {
	  	//inline scripts related to this page
		jQuery(document).ready(function () {
  			jQuery("#nanoGallery").nanoGallery({
  				//theme: 'clean',
  				items: remoteDateSource,
				thumbnailWidth: '40C XS60C SM80C LA150C XL250C',
			  	thumbnailHeight: '40C XS60C SM80C LA150C XL250C',
			    thumbnailAlignment: 'center',
			    maxItemsPerLine: 5,
			    thumbnailGutterHeight: 10,
			    thumbnailGutterWidth: 10,
			    thumbnailLabel: {
		            position: 'overImageOnMiddle',
		            display: true,
		            displayDescription: true,
		            titleMaxLength: 100,
		            hideIcons: true,
		            align: 'center',
		            itemsCount: 'description'            
		        },
		        /*
		        i18n: { 
		            thumbnailLabelItemsCountPart1: '',
		            thumbnailImageDescription: 'See Details'
		        },
		        */
		        thumbnailHoverEffect:'borderLighter,labelAppear75',
    			itemsBaseURL: getContextPath(),
				locationHash: false
  			});
		});
	});
</script>