<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set> 
  
<!-- Customized for jquery image upload 
<link rel="stylesheet" href="${contextPath}/static/assets/js/jquery_file_upload/ajax/theme/dark-hive/imageupload_theme.css" id="theme"> -->
<!-- 
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/themes/dark-hive/jquery-ui.css" id="theme">
<option value="black-tie">Black Tie</option>
<option value="blitzer">Blitzer</option>
<option value="cupertino">Cupertino</option>
<option value="dark-hive" selected>Dark Hive</option>
<option value="dot-luv">Dot Luv</option>
<option value="eggplant">Eggplant</option>
<option value="excite-bike">Excite Bike</option>
<option value="flick">Flick</option>
<option value="hot-sneaks">Hot sneaks</option>
<option value="humanity">Humanity</option>
<option value="le-frog">Le Frog</option>
<option value="mint-choc">Mint Choc</option>
<option value="overcast">Overcast</option>
<option value="pepper-grinder">Pepper Grinder</option>
<option value="redmond">Redmond</option>
<option value="smoothness">Smoothness</option>
<option value="south-street">South Street</option>
<option value="start">Start</option>
<option value="sunny">Sunny</option>
<option value="swanky-purse">Swanky Purse</option>
<option value="trontastic">Trontastic</option>
<option value="ui-darkness">UI Darkness</option>
<option value="ui-lightness">UI Lightness</option>
<option value="vader">Vader</option>
 -->
 <!--  
<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery_file_upload/demo.css"> 

<style> 
.ui-widget {
    font-size: 0.95em;
}
</style>
-->
<!-- blueimp Gallery styles 
<link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">-->
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars 
<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery_file_upload/jquery.fileupload.css">
<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery_file_upload/jquery.fileupload-ui.css">-->
<!-- CSS adjustments for browsers with JavaScript disabled 
<noscript><link rel="stylesheet" href="${contextPath}/static/assets/css/jquery_file_upload/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="${contextPath}/static/assets/css/jquery_file_upload/jquery.fileupload-ui-noscript.css"></noscript>-->

<form>
    <label for="theme-switcher">Theme:</label>
    <select id="theme-switcher" class="pull-right">
        
    </select>
</form>
 
<!-- The file upload form used as target for the file upload widget -->
<form id="fileupload" action="/test" method="POST" enctype="multipart/form-data">
    <!-- Redirect browsers with JavaScript disabled to the origin page -->
    <noscript><input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-Upload/"></noscript>
    <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
    <div class="fileupload-buttonbar">
        <div class="fileupload-buttons">
            <!-- The fileinput-button span is used to style the file input field as button -->
            <span class="fileinput-button">
                <span>Add files...</span>
                <input type="file" name="files[]" multiple>
            </span>
            <button type="submit" class="start">Start upload</button>
            <button type="reset" class="cancel">Cancel upload</button>
            <button type="button" class="delete">Delete</button>
            <input type="checkbox" class="toggle">
            <!-- The global file processing state -->
            <span class="fileupload-process"></span>
        </div>
        <!-- The global progress state -->
        <div class="fileupload-progress fade" style="display:none">
            <!-- The global progress bar -->
            <div class="progress" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
            <!-- The extended global progress state -->
            <div class="progress-extended">&nbsp;</div>
        </div>
    </div>
    <!-- The table listing the files available for upload/download -->
    <table role="presentation"><tbody class="files"></tbody></table>
</form>

<!-- The blueimp Gallery widget 
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>
-->
<!-- 
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
<script src="//blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<script src="//blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.iframe-transport.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-process.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-image.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-audio.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-video.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-validate.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-ui.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-jquery-ui.js"></script>
<script src="${contextPath}/static/assets/js/jquery_file_upload/main.js"></script> 
-->
<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress"></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="start" disabled>Start</button>
            {% } %}
            {% if (!i) { %}
                <button class="cancel">Cancel</button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
            </p>
            {% if (file.error) { %}
                <div><span class="error">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            <button class="delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>Delete</button>
            <input type="checkbox" name="delete" value="1" class="toggle">
        </td>
    </tr>
{% } %}
</script> 

<script src="${contextPath}/static/assets/js/jquery.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<!-- The Templates plugin is included to render the upload/download listings -->
<script src="//blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="//blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality 
<script src="//blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>-->
<!-- blueimp Gallery script 
<script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-ui.js"></script>
<!-- The File Upload jQuery UI plugin 
<script src="${contextPath}/static/assets/js/jquery_file_upload/jquery.fileupload-jquery-ui.js"></script>-->
<!-- The main application script -->
<script src="${contextPath}/static/assets/js/jquery_file_upload/main.js"></script>

<script>
// Initialize the jQuery UI theme switcher:
$('#theme-switcher').change(function () {
    var theme = $('#theme');
    theme.prop(
        'href',
        theme.prop('href').replace(
            /[\w\-]+\/jquery-ui.css/,
            $(this).val() + '/jquery-ui.css'
        )
    );
});
</script> 