<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>  
     
<link class="rs-file" href="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/royalslider.css" rel="stylesheet"/>  
<!-- preview-related stylesheets -->
<link href="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/css/reset.css" rel="stylesheet"/>
<link href="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/css/smoothness/jquery-ui-1.8.22.custom.css" rel="stylesheet"/>
<link href="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/css/github.css" rel="stylesheet"/> 
<!-- slider stylesheets --> 
<link class="rs-file" href="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/skins/default/rs-default.css" rel="stylesheet"/> 

<div class="page-header" id="header"> 
</div><!-- /.page-header -->
 
<!-- slider css  -->
<style>
	/* #gallery-1 {
		width: 100%; 
		-webkit-user-select: none;
		-moz-user-select: none;  
		user-select: none; 
	} */
	.royalSlider {
		width: 100%; 
		height: 100%;  
	} 
	.royalSlider img {
	    width: 100%;
	    height: auto; 
	    -webkit-transition: all 0.3s ease-out;
	    -moz-transition: all 0.3s ease-out;
	    transition: all 0.3s ease-out;
	
	    -webkit-transform: scale(0.9);  
	    -moz-transform: scale(0.9); 
	    -ms-transform: scale(0.9);
	    -o-transform: scale(0.9);
	    transform: scale(0.9);
	}
	.rsActiveSlide img {
	    opacity: 1;
	    -webkit-transform: scale(10);  
	    -moz-transform: scale(1); 
	    -ms-transform: scale(1);
	    -o-transform: scale(1);
	    transform: scale(1);
	}
</style>

<div class="col-xs-12" id="page">
	<div class="row" >
		<!-- simple image slide-->   
		<div class="col-xs-6" >    
			<div class="royalSlider rsDefault" id="royalSlider"> 
				<c:forEach var="productimage" items="${productimage}">
					<div class="rsContent">
						<a href="${contextPath}/<c:out value='${productimage.imagepath}'/>" class="rsImg" data-rsbigimg="${contextPath}/<c:out value='${productimage.imagepath}'/>">
	                        <img class="img-responsive rsTmb img-responsive imagecache imagecache-uc_thumbnail" src="${contextPath}/<c:out value='${productimage.imagepath}'/>" />
	                    </a>
                    </div>
				</c:forEach>  
			</div>	   
		</div> 
		
		<div class="col-xs-6" id="productinfo">    
			<div class="row" >
				<div class="col-xs-6 pricing-box">
					<div class="widget-box widget-color-red">
						<div class="widget-header" >
							<h1 class="widget-title bigger lighter">Price</h1>
						</div> 
						<div class="widget-body">
							<div class="widget-main"> 
								<div class="price" id="price"> 
								</div>
							</div> 
						</div>
					</div>
				</div> 

				<div class="col-xs-6 pricing-box">
					<div class="widget-box widget-color-blue">
						<div class="widget-header">
							<h1 class="widget-title bigger lighter">Size</h1>
						</div> 
						<div class="widget-body">
							<div class="widget-main"> 
								<div class="price" id="size"></div>
							</div> 
						</div>
					</div>
				</div>   
			</div>
			<div class="row" ><div class="space-16"></div></div>
			<div class="row" >
				<div class="col-xs-12 pricing-box">
					<div class="widget-box widget-color-orange">
						<div class="widget-header">
							<h1 class="widget-title bigger lighter">Contact Info</h1>
						</div> 
						<div class="widget-body">
							<div class="widget-main"> 
								<div class="price" id="contactinfo"></div>
							</div> 
						</div>
					</div>
				</div>   
			</div>
			<div class="row" ><div class="space-16"></div></div>
			<div class="row" >
				<div class="col-xs-12 pricing-box">
					<div class="widget-box widget-color-green">
						<div class="widget-header">
							<h1 class="widget-title bigger lighter">Description</h1>
						</div>
	
						<div class="widget-body">
							<div class="widget-main">
								<ul class="list-unstyled spaced5" id="description">  
								</ul> 
							</div> 
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- END ROW -->		
	<div class="row" ><div class="space-16"></div></div>
	<div class="row" ><div class="space-16"></div></div>
	<div class="row" ><div class="space-16"></div></div>
	<div class="row" ><div class="space-16"></div></div>
	<div class="row" ><div class="space-16"></div></div>
	</div>
</div> 

<script type="text/javascript" >
	var scripts = ["${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/jquery.royalslider.min.js", 
	               "${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/highlight.pack.js",
	               "${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/jquery-ui-1.8.22.custom.min.js",
	               null]
	
	function getContextPath() {
		var pathName = document.location.pathname;
		var index = pathName.substr(1).indexOf("/");
		var result = pathName.substr(0, index + 1);
		return result;
	}
	
	function getProductID() {
		var pathName = window.location.href;
		var result = pathName.substring(pathName.indexOf("?")+1)
		return result;
	} 
	//window.alert(getProductID()); 
	var productImageURL; 
	$.ajax({
		url : getContextPath() + "/product/getsingleproductimages?" + getProductID(),
		async : false,
		data : {},
		type : 'POST',
		dataType : 'json',
		complete : function(response) {
			var returninfo = eval("(" + response.responseText + ")");
			productImageURL = returninfo.data;
		}
	}); 
	var productInfo; 
	$.ajax({
		url : getContextPath() + "/product/getsingleproductinfo?" + getProductID(),
		async : false,
		data : {},
		type : 'POST',
		dataType : 'json',
		complete : function(response) {
			var returninfo = eval("(" + response.responseText + ")");
			productInfo = returninfo.data;
		}
	}); 
	
	AppendProductTitle(productInfo);
	//AppendProductImages(productImageURL);
	AppendProductSize(productInfo); 
	AppendProductPrice(productInfo); 
	AppendProductdescription(productInfo); 
	AppendProductContactInfo(productInfo);  
	 
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {   
		//hljs.initHighlightingOnLoad();
		jQuery(document).ready(function($) { 
			$('#royalSlider').royalSlider({ 
		    	fullscreen: {
			    	enabled: true,
			    	nativeFS: true
			    },  
			    controlNavigation: 'thumbnails',
			    autoScaleSlider: true, 
			    autoScaleSliderWidth: 960,     
			    autoScaleSliderHeight: 850,
			    autoHeight: true,
			    loop: true,
			    imageScaleMode: 'fill',
			    navigateByClick: true,
			    numImagesToPreload:2,
			    arrowsNav:true,
			    arrowsNavAutoHide: true,
			    arrowsNavHideOnTouch: true,
			    keyboardNavEnabled: true,
			    fadeinLoadedSlide: true,
			    globalCaption: true,
			    globalCaptionInside: false,
			    thumbs: {
			    	fitInViewport:true,
					appendSpan: true,
					firstMargin: true,
					paddingBottom: 4, 
			    },
			    autoPlay: {
		    		// autoplay options go gere
		    		enabled: true,
		    		pauseOnHover: true
		    	}
			});  
		}); 
	});    
	 
	function AppendProductTitle(productInfo) {
		var h = document.createElement("H1");
	    var t = document.createTextNode(productInfo[0].name);
	    h.appendChild(t);
	    var node = document.getElementById("header"); 
	    node.appendChild(h); 
	}
	function AppendProductSize(productInfo) { 
	    var t = document.createTextNode(productInfo[0].size); 
	    var node = document.getElementById("size"); 
	    node.appendChild(t); 
	}
	function AppendProductContactInfo(productInfo) { 
	    var t = document.createTextNode(productInfo[0].contactinfo); 
	    var node = document.getElementById("contactinfo"); 
	    node.appendChild(t); 
	}
	function AppendProductPrice(productInfo) { 
	    var t = document.createTextNode(productInfo[0].price); 
	    var node = document.getElementById("price"); 
	    node.appendChild(t); 
	}
	function AppendProductdescription(productInfo) { 
		var h = document.createElement("H4");
	    var t = document.createTextNode(productInfo[0].description); 
	    h.appendChild(t);
	    var node = document.getElementById("description"); 
	    node.appendChild(h); 
	} 
	
</script>