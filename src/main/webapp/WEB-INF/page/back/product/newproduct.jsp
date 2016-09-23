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
							<h4 class="widget-title">Product Images Upload</h4>

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
				<div class="col-sm-6">
					<div class="widget-box">
						<div class="widget-header">
							<h4 class="widget-title">Product Images Upload</h4>

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
								<div class="form-group">
									<div class="col-xs-12">
										<!-- #section:custom/file-input -->
										<input type="file" id="id-input-file-2" name="imageprofile1"/>
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-12">
										<input multiple="" type="file" id="id-input-file-3" name="imageprofile" />

										<!-- /section:custom/file-input -->
									</div>
								</div>

								<!-- #section:custom/file-input.filter -->
								<label>
									<input type="checkbox" name="file-format" id="id-file-format" class="ace" />
									<span class="lbl"> Allow only images</span>
								</label>

								<!-- /section:custom/file-input.filter -->
							</div>
						</div>
					</div>
				</div> 

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
	            		productid: 1
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
	 		
			$('#id-disable-check').on('click', function() {
				var inp = $('#form-input-readonly').get(0);
				if(inp.hasAttribute('disabled')) {
					inp.setAttribute('readonly' , 'true');
					inp.removeAttribute('disabled');
					inp.value="This text field is readonly!";
				}
				else {
					inp.setAttribute('disabled' , 'disabled');
					inp.removeAttribute('readonly');
					inp.value="This text field is disabled!";
				}
			}); 
		
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
		
			appendCategorySelectOption(categoryInfo)
		
			function appendCategorySelectOption(categoryInfo) {
				var node = document.getElementById("category");  
				for (var i in categoryInfo) {   
					var option = document.createElement("option");
					option.text = categoryInfo[i].name;
					option.value = categoryInfo[i].categoryid;
					node.add(option);
				} 
			}
			
	
			if(!ace.vars['touch']) {
				$('.chosen-select').chosen({allow_single_deselect:true}); 
				//resize the chosen on window resize
		
				$(window)
				.off('resize.chosen')
				.on('resize.chosen', function() {
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					})
				}).trigger('resize.chosen');
				//resize chosen on sidebar collapse/expand
				$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
					if(event_name != 'sidebar_collapsed') return;
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					})
				});
		
		
				$('#chosen-multiple-style .btn').on('click', function(e){
					var target = $(this).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			}
		
		
			$('[data-rel=tooltip]').tooltip({container:'body'});
			$('[data-rel=popover]').popover({container:'body'});
			
			$('textarea[class*=autosize]').autosize({append: "\n"});
			$('textarea.limited').inputlimiter({
				remText: '%n character%s remaining...',
				limitText: 'max allowed : %n.'
			});
		
			$.mask.definitions['~']='[+-]';
			$('.input-mask-date').mask('99/99/9999');
			$('.input-mask-phone').mask('(999) 999-9999');
			$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
			$(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});
		
		
		
			$( "#input-size-slider" ).css('width','200px').slider({
				value:1,
				range: "min",
				min: 1,
				max: 8,
				step: 1,
				slide: function( event, ui ) {
					var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
					var val = parseInt(ui.value);
					$('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
				}
			});
		
			$( "#input-span-slider" ).slider({
				value:1,
				range: "min",
				min: 1,
				max: 12,
				step: 1,
				slide: function( event, ui ) {
					var val = parseInt(ui.value);
					$('#form-field-5').attr('class', 'col-xs-'+val).val('.col-xs-'+val);
				}
			});
		
		
			
			//"jQuery UI Slider"
			//range slider tooltip example
			$( "#slider-range" ).css('height','200px').slider({
				orientation: "vertical",
				range: true,
				min: 0,
				max: 100,
				values: [ 17, 67 ],
				slide: function( event, ui ) {
					var val = ui.values[$(ui.handle).index()-1] + "";
		
					if( !ui.handle.firstChild ) {
						$("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
						.prependTo(ui.handle);
					}
					$(ui.handle.firstChild).show().children().eq(1).text(val);
				}
			}).find('span.ui-slider-handle').on('blur', function(){
				$(this.firstChild).hide();
			});
			
			
			$( "#slider-range-max" ).slider({
				range: "max",
				min: 1,
				max: 10,
				value: 2
			});
			
			$( "#slider-eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {
				// read initial values from markup and remove that
				var value = parseInt( $( this ).text(), 10 );
				$( this ).empty().slider({
					value: value,
					range: "min",
					animate: true
					
				});
			});
			
			$("#slider-eq > span.ui-slider-purple").slider('disable');//disable third item
		
			
			$('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file:'No File ...',
				btn_choose:'Choose',
				btn_change:'Change',
				droppable:false,
				onchange:null,
				thumbnail:false //| true | large
				//whitelist:'gif|png|jpg|jpeg'
				//blacklist:'exe|php'
				//onchange:''
				//
			});
			//pre-show a file name, for example a previously selected file
			//$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])
		
		
			$('#id-input-file-3').ace_file_input({
				style:'well',
				btn_choose:'Drop files here or click to choose',
				btn_change:null,
				no_icon:'ace-icon fa fa-cloud-upload',
				droppable:true,
				thumbnail:'small'//large | fit
				//,icon_remove:null//set null, to hide remove/reset button
				/**,before_change:function(files, dropped) {
					//Check an example below
					//or examples/file-upload.html
					return true;
				}*/
				/**,before_remove : function() {
					return true;
				}*/
				,
				preview_error : function(filename, error_code) {
					//name of the file that failed
					//error_code values
					//1 = 'FILE_LOAD_FAILED',
					//2 = 'IMAGE_LOAD_FAILED',
					//3 = 'THUMBNAIL_FAILED'
					//alert(error_code);
				}
		
			}).on('change', function(){
				//console.log($(this).data('ace_input_files'));
				//console.log($(this).data('ace_input_method'));
			});
			
			
			//$('#id-input-file-3')
			//.ace_file_input('show_file_list', [
				//{type: 'image', name: 'name of image', path: 'http://path/to/image/for/preview'},
				//{type: 'file', name: 'hello.txt'}
			//]);
		
			
			
		
			//dynamically change allowed formats by changing allowExt && allowMime function
			$('#id-file-format').removeAttr('checked').on('change', function() {
				var whitelist_ext, whitelist_mime;
				var btn_choose
				var no_icon
				if(this.checked) {
					btn_choose = "Drop images here or click to choose";
					no_icon = "ace-icon fa fa-picture-o";
		
					whitelist_ext = ["jpeg", "jpg", "png", "gif" , "bmp"];
					whitelist_mime = ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"];
				}
				else {
					btn_choose = "Drop files here or click to choose";
					no_icon = "ace-icon fa fa-cloud-upload";
					
					whitelist_ext = null;//all extensions are acceptable
					whitelist_mime = null;//all mimes are acceptable
				}
				var file_input = $('#id-input-file-3');
				file_input
				.ace_file_input('update_settings',
				{
					'btn_choose': btn_choose,
					'no_icon': no_icon,
					'allowExt': whitelist_ext,
					'allowMime': whitelist_mime
				})
				file_input.ace_file_input('reset_input');
				
				file_input
				.off('file.error.ace')
				.on('file.error.ace', function(e, info) {
					//console.log(info.file_count);//number of selected files
					//console.log(info.invalid_count);//number of invalid files
					//console.log(info.error_list);//a list of errors in the following format
					
					//info.error_count['ext']
					//info.error_count['mime']
					//info.error_count['size']
					
					//info.error_list['ext']  = [list of file names with invalid extension]
					//info.error_list['mime'] = [list of file names with invalid mimetype]
					//info.error_list['size'] = [list of file names with invalid size]
					
					
					/**
					if( !info.dropped ) {
						//perhapse reset file field if files have been selected, and there are invalid files among them
						//when files are dropped, only valid files will be added to our file array
						e.preventDefault();//it will rest input
					}
					*/
					
					
					//if files have been selected (not dropped), you can choose to reset input
					//because browser keeps all selected files anyway and this cannot be changed
					//we can only reset file field to become empty again
					//on any case you still should check files with your server side script
					//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
				});
			
			});
		
			$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
			.closest('.ace-spinner')
			.on('changed.fu.spinbox', function(){
				//alert($('#spinner1').val())
			}); 
			$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, touch_spinner: true, icon_up:'ace-icon fa fa-caret-up', icon_down:'ace-icon fa fa-caret-down'});
			$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'ace-icon fa fa-plus smaller-75', icon_down:'ace-icon fa fa-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
			//$('#spinner1').ace_spinner('disable').ace_spinner('value', 11);
			//or
			//$('#spinner1').closest('.ace-spinner').spinner('disable').spinner('enable').spinner('value', 11);//disable, enable or change value
			//$('#spinner1').closest('.ace-spinner').spinner('value', 0);//reset to 0
		
		
			//datepicker plugin
			//link
			$('.date-picker').datepicker({
				autoclose: true,
				todayHighlight: true
			})
			//show datepicker when clicking on the icon
			.next().on(ace.click_event, function(){
				$(this).prev().focus();
			});
		
			//or change it into a date range picker
			$('.input-daterange').datepicker({autoclose:true});
		
		
			//to translate the daterange picker, please copy the "examples/daterange-fr.js" contents here before initialization
			$('input[name=date-range-picker]').daterangepicker({
				'applyClass' : 'btn-sm btn-success',
				'cancelClass' : 'btn-sm btn-default',
				locale: {
					applyLabel: 'Apply',
					cancelLabel: 'Cancel',
				}
			})
			.prev().on(ace.click_event, function(){
				$(this).next().focus();
			});
		
		
			$('#timepicker1').timepicker({
				minuteStep: 1,
				showSeconds: true,
				showMeridian: false
			}).next().on(ace.click_event, function(){
				$(this).prev().focus();
			});
			
			$('#date-timepicker1').datetimepicker().next().on(ace.click_event, function(){
				$(this).prev().focus();
			});
			
		
			$('#colorpicker1').colorpicker();
		
			$('#simple-colorpicker-1').ace_colorpicker();
			//$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
			//$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
			//var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
			//picker.pick('red', true);//insert the color if it doesn't exist
		
		
			$(".knob").knob();
			
			
			var tag_input = $('#form-field-tags');
			try{
				tag_input.tag(
				  {
					placeholder:tag_input.attr('placeholder'),
					//enable typeahead by specifying the source array
					source: ace.vars['US_STATES'],//defined in ace.js >> ace.enable_search_ahead
					/**
					//or fetch data from database, fetch those that match "query"
					source: function(query, process) {
					  $.ajax({url: 'remote_source.php?q='+encodeURIComponent(query)})
					  .done(function(result_items){
						process(result_items);
					  });
					}
					*/
				  }
				)
		
				//programmatically add a new
				var $tag_obj = $('#form-field-tags').data('tag');
				$tag_obj.add('Programmatically Added');
			}
			catch(e) {
				//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
				tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
				//$('#form-field-tags').autosize({append: "\n"});
			}
			
			
			/////////
			$('#modal-form input[type=file]').ace_file_input({
				style:'well',
				btn_choose:'Drop files here or click to choose',
				btn_change:null,
				no_icon:'ace-icon fa fa-cloud-upload',
				droppable:true,
				thumbnail:'large'
			})
			
			//chosen plugin inside a modal will have a zero width because the select element is originally hidden
			//and its width cannot be determined.
			//so we set the width after modal is show
			$('#modal-form').on('shown.bs.modal', function () {
				if(!ace.vars['touch']) {
					$(this).find('.chosen-container').each(function(){
						$(this).find('a:first-child').css('width' , '210px');
						$(this).find('.chosen-drop').css('width' , '210px');
						$(this).find('.chosen-search input').css('width' , '200px');
					});
				}
			})
			/**
			//or you can activate the chosen plugin after modal is shown
			//this way select element becomes visible with dimensions and chosen works as expected
			$('#modal-form').on('shown', function () {
				$(this).find('.modal-chosen').chosen();
			})
			*/
			
			$(document).one('ajaxloadstart.page', function(e) {
				$('textarea[class*=autosize]').trigger('autosize.destroy');
				$('.limiterBox,.autosizejs').remove();
				$('.daterangepicker.dropdown-menu,.colorpicker.dropdown-menu,.bootstrap-datetimepicker-widget.dropdown-menu').remove();
			});
			
			
			// *** editable avatar *** //
	        try { 
	        	//ie8 throws some harmless exceptions, so let's catch'em
	            //first let's add a fake appendChild method for Image element for browsers that have a problem with this
	            //because editable plugin calls appendChild, and it causes errors on IE at unpredicted points
	            try {
	                document.createElement('IMG').appendChild(document.createElement('B'));
	            } catch (e) {
	                Image.prototype.appendChild = function(el) {}
	            }

	            var last_gritter;
	            $('#avatar').editable({
	                type: 'image',
	                name: 'avatar',
	                value: null,
	                image: {
	                    //specify ace file input plugin's options here
	                    btn_choose: '更改头像',
	                    droppable: true,
	                    maxSize: 2097152, //~100Kb
	                    //and a few extra ones here
	                    name: 'avatar', //put the field name here as well, will be used inside the custom plugin
	                    on_error: function(error_type) { //on_error function will be called when the selected file has a problem
	                        if (last_gritter) $.gritter.remove(last_gritter);
	                        if (error_type == 1) { //file format error
	                            last_gritter = $.gritter.add({
	                                title: '文件格式不正确!',
	                                text: '请选择  jpg|gif|png 格式的图片!',
	                                class_name: 'gritter-error gritter-center'
	                            });
	                        } else if (error_type == 2) { //file size rror
	                            last_gritter = $.gritter.add({
	                                title: '文件太大!',
	                                text: '图片大小不能超过2mb!',
	                                class_name: 'gritter-error gritter-center'
	                            });
	                        } else { //other error
	                        }
	                    },
	                    on_success: function() {
	                        $.gritter.removeAll();
	                    }
	                },
	                url: function(params) {
	                    //for a working upload example you can replace the contents of this function with 
	                    //examples/profile-avatar-update.js

	                    //this is similar to the file-upload.html example
						//replace the code inside profile page where it says ***UPDATE AVATAR HERE*** with the code below
						// ***UPDATE AVATAR HERE*** //
						var submit_url = "${contextPath}" + "/sysuser/uploadAttachement";//please modify submit_url accordingly
						var deferred = null;
						var avatar = '#avatar';
						
						//if value is empty (""), it means no valid files were selected
						//but it may still be submitted by x-editable plugin
						//because "" (empty string) is different from previous non-empty value whatever it was
						//so we return just here to prevent problems
						var value = $(avatar).next().find('input[type=hidden]:eq(0)').val();
						if(!value || value.length == 0) {
							deferred = new $.Deferred;
							deferred.resolve();
							return deferred.promise();
						}
						
						var $form = $(avatar).next().find('.editableform:eq(0)')
						var file_input = $form.find('input[type=file]:eq(0)');
						var pk = $(avatar).attr('data-pk');//primary key to be sent to server
						
						var ie_timeout = null
						
						
						if( "FormData" in window ) {
							var formData_object = new FormData();//create empty FormData object
							
							//serialize our form (which excludes file inputs)
							$.each($form.serializeArray(), function(i, item) {
								//add them one by one to our FormData 
								formData_object.append(item.name, item.value);							
							});
							//and then add files
							$form.find('input[type=file]').each(function(){
								var field_name = $(this).attr('name');
								var files = $(this).data('ace_input_files');
								if(files && files.length > 0) {
									formData_object.append(field_name, files[0]);
								}
							});
						
							//append primary key to our formData
							formData_object.append('pk', pk);
						
							deferred = $.ajax({
										url: submit_url,
									   type: 'POST',
								processData: false, //important
								contentType: false, //important
								   dataType: 'json', //server response type
									   data: formData_object
							})
						}
						else {
							deferred = new $.Deferred;
						
							var temporary_iframe_id = 'temporary-iframe-'+(new Date()).getTime()+'-'+(parseInt(Math.random()*1000));
							var temp_iframe = 
									$('<iframe id="'+temporary_iframe_id+'" name="'+temporary_iframe_id+'" \
									frameborder="0" width="0" height="0" src="about:blank"\
									style="position:absolute; z-index:-1; visibility: hidden;"></iframe>')
									.insertAfter($form);
									
							$form.append('<input type="hidden" name="temporary-iframe-id" value="'+temporary_iframe_id+'" />');
							
							//append primary key (pk) to our form
							$('<input type="hidden" name="pk" />').val(pk).appendTo($form);
							
							temp_iframe.data('deferrer' , deferred);
							//we save the deferred object to the iframe and in our server side response
							//we use "temporary-iframe-id" to access iframe and its deferred object
						
							$form.attr({
									  action: submit_url,
									  method: 'POST',
									 enctype: 'multipart/form-data',
									  target: temporary_iframe_id //important
							});
						
							$form.get(0).submit();
						
							//if we don't receive any response after 30 seconds, declare it as failed!
							ie_timeout = setTimeout(function(){
								ie_timeout = null;
								temp_iframe.attr('src', 'about:blank').remove();
								deferred.reject({'status':'fail', 'message':'Timeout!'});
							} , 30000);
						}
						
						
						//deferred callbacks, triggered by both ajax and iframe solution
						deferred.done(function(result) {//success
							var res = result;//the `result` is formatted by your server side response and is arbitrary
							if(res.status == 'OK') $(avatar).get(0).src = res.url;
							else alert(res.message);
						}).fail(function(result) {//failure
							alert("There was an error");
						}).always(function() {//called on both success and failure
							if(ie_timeout) clearTimeout(ie_timeout)
							ie_timeout = null;	
						});
						
						return deferred.promise();
	                    // ***END OF UPDATE AVATAR HERE*** //
	                },
	                success: function(response, newValue) {
	                	
	                }
	            })
	        } catch (e) {
	        	
	        }
		
		});
	});
</script>
