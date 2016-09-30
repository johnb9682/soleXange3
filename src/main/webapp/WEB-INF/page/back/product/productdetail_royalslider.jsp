<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set> 
<!--  
<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.css" /> 
<link rel="stylesheet" href="${contextPath}/static/assets/css/ui.jqgrid.css" /> -->
<!-- Main slider JS script file --> 
<!-- slider JS files -->
    
    <!-- Redundant jquery file   
    <script class="rs-file" src="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/jquery-1.8.3.min.js"></script>
    <script class="rs-file" src="${contextPath}/static/assets/js/jquery.js"></script> -->
    <script class="rs-file" src="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/jquery.royalslider.min.js"></script> 
    <link class="rs-file" href="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/royalslider.css" rel="stylesheet"/>
    <!-- syntax highlighter -->
    <script src="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/highlight.pack.js"></script>
    <script src="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/jquery-ui-1.8.22.custom.min.js"></script>
    <script> hljs.initHighlightingOnLoad();</script> 
    <!-- preview-related stylesheets -->
    <link href="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/css/reset.css" rel="stylesheet"/>
    <link href="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/css/smoothness/jquery-ui-1.8.22.custom.css" rel="stylesheet"/>
    <link href="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/css/github.css" rel="stylesheet"/> 
    <!-- slider stylesheets --> 
    <link class="rs-file" href="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/skins/default/rs-default.css" rel="stylesheet"/>
    
<!-- Create it with slider online build tool for better performance.
<script src="${contextPath}/static/assets/js/royalslider/royalslider/jquery-1.8.3.min.js"></script> 
<script src="${contextPath}/static/assets/js/royalslider/royalslider/jquery.royalslider.min.js"></script>--> 
<!-- basic stylesheet for royalslider 
<link rel="stylesheet" href="${contextPath}/static/assets/js/royalslider/royalslider/royalslider.css" />-->
<!-- skin stylesheet (change it if you use another) 
<link rel="stylesheet" href="${contextPath}/static/assets/js/royalslider/royalslider/skins/default/rs-default.css" /> -->

<div class="page-header" id="header"> 
</div><!-- /.page-header -->
 
<!-- slider css  -->
<style>
	#gallery-1 {
		width: 100%;
		-webkit-user-select: none;
		-moz-user-select: none;  
		user-select: none;
	} 
</style>

<div class="col-xs-12" id="page">
	<div class="row" >
		<!-- simple image slide-->   
		<div class="col-xs-6" >    
			<div class="royalSlider rsDefault" id="gallery-1">  
				<a class="rsImg bugaga" href="${contextPath}/static/upload/img/201609/20160928130905569533.jpg"><img class="rsTmb" src="${contextPath}/static/upload/img/201609/20160928130905569533.jpg" /></a>
				<a class="rsImg bugaga" href="${contextPath}/static/upload/img/201609/20160928130905571852.jpg"><img class="rsTmb" src="${contextPath}/static/upload/img/201609/20160928130905571852.jpg" /></a>
				<a class="rsImg bugaga" href="${contextPath}/static/upload/img/201609/20160928130905575273.jpg"><img class="rsTmb" src="${contextPath}/static/upload/img/201609/20160928130905575273.jpg" /></a>
				<!--  
				<img class="rsImg" src="${contextPath}/static/upload/img/201609/20160928130905569533.jpg" alt="This text will be IGNORED!" />
				<img class="rsImg" src="${contextPath}/static/upload/img/201609/20160928130905571852.jpg"alt="This text will be IGNORED!" />
				<img class="rsImg" src="${contextPath}/static/upload/img/201609/20160928130905575273.jpg" alt="This text will be IGNORED!" />
				<img class="rsImg" src="${contextPath}/static/upload/img/201609/20160928130907695495.jpg" alt="This text will be IGNORED!" />
				<img class="rsImg" src="${contextPath}/static/upload/img/201609/20160928130907695989.jpg" alt="This text will be IGNORED!" />
				<img class="rsImg" src="${contextPath}/static/upload/img/201609/20160928130908193791.jpg" alt="This text will be IGNORED!" />
				<img class="rsImg" src="${contextPath}/static/upload/img/201609/20160928130908702871.jpeg" alt="This text will be IGNORED!" /> 
				-->
			</div>	   
		</div>
		<!--  <div class="col-xs-6" id="productimage"><ul></ul></div> -->
		
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
	</div>
</div> 

<script type="text/javascript" >
	var scripts = [null ]
	              // "${contextPath}/static/assets/js/royalslider/royalslider/jquery-1.8.3.min.js", 
	              // "${contextPath}/static/assets/js/royalslider/royalslider/jquery.royalslider.min.js", null]
	
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
	 
	jQuery(document).ready(function($) {
		$('#gallery-1').royalSlider({
	    	fullscreen: {
		      enabled: true,
		      nativeFS: true
		    },
		    controlNavigation: 'thumbnails',
		    autoScaleSlider: true, 
		    //autoScaleSliderWidth: 960,     
		    //autoScaleSliderHeight: 850,
		    loop: false,
		    imageScaleMode: 'fit-if-smaller',
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
				appendSpan: true,
				firstMargin: true,
				paddingBottom: 4
		    }
		});
	}); 
	 
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {   
		jQuery(document).ready(function($) { 
			$('#gallery-1').royalSlider({
		    	fullscreen: {
			    	enabled: true,
			    	nativeFS: true
			    },
			    controlNavigation: 'thumbnails',
			    autoScaleSlider: true, 
			    //autoScaleSliderWidth: 960,     
			    //autoScaleSliderHeight: 850,
			    loop: false,
			    imageScaleMode: 'fit-if-smaller',
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
					appendSpan: true,
					firstMargin: true,
					paddingBottom: 4
			    }
			});  
		}); 
	});   
	
	//for royalslider image slider
	function AppendProductImages(productImageURL) {
		var element = document.getElementById("productimage"); 
		alert("TEST"); 
		for (var i in productImageURL) {     
			var img = document.createElement("img");  
			img.src = getContextPath() + productImageURL[i].imagepath;  
			img.alt = "image desc"; 
			img.class = "rsImg";
			element.appendChild(img);     
		}  
	}
	 
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
	// for tiksluscarousel image slider
	/*
	function AppendProductImages(productImageURL) {
		var node = document.getElementById("productimage"); 
		var element = node.getElementsByTagName("UL")[0];
		for (var i in productImageURL) {   
			var newItem = document.createElement("li");  
			var img = document.createElement("img");  
			img.src = getContextPath() + productImageURL[i].imagepath;  
			newItem.appendChild(img);    
			element.appendChild(newItem);   
		} 
	}
	*/
	
</script>