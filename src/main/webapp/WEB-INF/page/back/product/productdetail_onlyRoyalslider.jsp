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
    <!--  <script class="rs-file" src="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/jquery.royalslider.min.js"></script> --> 
    <link class="rs-file" href="${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/royalslider.css" rel="stylesheet"/>
    <!-- syntax highlighter -->
    <!-- <script src="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/highlight.pack.js"></script> -->
    <!-- <script src="${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/jquery-ui-1.8.22.custom.min.js"></script> -->
    <!-- <script> hljs.initHighlightingOnLoad();</script> --> 
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
 
<div class="royalSlider rsDefault" id="gallery-1">  
	<a class="rsImg bugaga" data-rsBigImg="${contextPath}/static/upload/img/201609/20160928130905569533.jpg" href="${contextPath}/static/upload/img/201609/20160928130905569533.jpg"><img class="rsTmb" src="${contextPath}/static/upload/img/201609/20160928130905569533.jpg" /></a>
	<a class="rsImg bugaga" data-rsBigImg="${contextPath}/static/upload/img/201609/20160928130905569533.jpg" href="${contextPath}/static/upload/img/201609/20160928130905571852.jpg"><img class="rsTmb" src="${contextPath}/static/upload/img/201609/20160928130905571852.jpg" /></a>
	<a class="rsImg bugaga" data-rsBigImg="${contextPath}/static/upload/img/201609/20160928130905569533.jpg" href="${contextPath}/static/upload/img/201609/20160928130905575273.jpg"><img class="rsTmb" src="${contextPath}/static/upload/img/201609/20160928130905575273.jpg" /></a>
</div>	   

<script type="text/javascript">
	var scripts = ["${contextPath}/static/assets/js/royalslider/templates/assets/royalslider/jquery.royalslider.min.js",
	               "${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/highlight.pack.js",
	               "${contextPath}/static/assets/js/royalslider/templates/assets/preview-assets/js/jquery-ui-1.8.22.custom.min.js",
	               null]
	             
	/*
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
	*/ 
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {   
		hljs.initHighlightingOnLoad(); 
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
	//	*/
	});   
	 
</script>