<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/ui.jqgrid.css" />  
<link rel="stylesheet" href="${contextPath}/static/assets/js/tiksluscarousel/css/tiksluscarousel.css" type="text/css" />   

<div class="page-header" id="header"> 
</div><!-- /.page-header -->
 
<div class="col-xs-12" id="page">
	<div class="row" >
		<div class="col-xs-6" id="productimage"><ul></ul></div> 
		
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

<script type="text/javascript">
	var scripts = [null, "${contextPath}/static/assets/js/tiksluscarousel/js/tiksluscarousel.js", "${contextPath}/static/assets/js/tiksluscarousel/js/rainbow.min.js"]
	
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
	AppendProductImages(productImageURL)
	AppendProductSize(productInfo)
	AppendProductPrice(productInfo)
	AppendProductdescription(productInfo)
	AppendProductContactInfo(productInfo)
	
	$('.page-content-area').ace_ajax('loadScripts', scripts, function() {   
		jQuery(document).ready(function(){ 
			$("#productimage").tiksluscarousel({width:640,height:480,nav:'thumbnails',current:1}); 
			
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
</script>