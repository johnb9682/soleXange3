function getContextPath() {
	var pathName = document.location.pathname;
	var index = pathName.substr(1).indexOf("/");
	var result = pathName.substr(0, index + 1);
	return result;
}
//soleXange_1
jQuery(function($) { 

	// 验证注册表单
	$("#submit").bind("click", function() {
		alert("TEST");
		//$('#fileupload').submit();
	});
	$('#fileupload').validate({
		errorElement : 'div',
		errorClass : 'help-block',
		focusInvalid : false,
		ignore : "",
		rules : { 
		},
		messages : { 
		},  
		highlight : function(e) {
			$(e).closest('label').removeClass('has-info').addClass('has-error');
		},
		success : function(e) {
			$(e).closest('label').removeClass('has-error');// .addClass('has-info');
			$(e).remove();
		},
		errorPlacement : function(error, element) {
			error.insertAfter(element.parent());
		},
		submitHandler : function(form) {  
			$.ajax({
				dataType : "json",
				url : getContextPath() + "/product/saveproducttext",
				type : "post",
				data : { 
					name 		: $('#name').val(),
					price 		: $('#price').val(),
					size 		: $('#size').val(),
					description : $('#description').val(),
					contactinfo	: $('#contactinfo').val(),
					categoryid	: $('#category').val()
				},
				complete : function(xmlRequest) {
					alert("complete");
					var returninfo = eval("(" + xmlRequest.responseText + ")");
					if (returninfo.result == 1) {
						alert(returninfo.productid);
						document.location.href = getContextPath() + "/home#page/product/newproduct_images?productid=" + returninfo.productid;
					} else if (returninfo.result == -1) { 
						$("#registerTip").html("服务器错误");
					}
				}
			});
		},
		invalidHandler : function(form) {
		}
	});
});
