<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/css/ui.jqgrid.css" />
<link rel="stylesheet" href="${contextPath}/static/assets/js/nanogalary/dist/css/nanogallery.min.css" type="text/css" /> 

<div id="nanoGallery">
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
  				items: remoteDateSource,
				thumbnailWidth: '80 XS80 SM150 LA250 XL400',
			  	thumbnailHeight: '80 XS80 SM150 LA250 XL400',
			    thumbnailAlignment: 'center',
			    maxItemsPerLine: 5,
			    thumbnailGutterHeight: 30,
			    thumbnailGutterWidth: 30,
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