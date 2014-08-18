<!DOCTYPE HTML>

<html lang="en">
<head>

<meta charset="utf-8">
<title>Vagetable Picture Upload</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<link rel="stylesheet" href="<%$baseUrl%>/css/upload/style.css">

<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">

<link rel="stylesheet" href="<%$baseUrl%>/css/upload/jquery.fileupload.css">
<link rel="stylesheet" href="<%$baseUrl%>/css/upload/jquery.fileupload-ui.css">

<noscript><link rel="stylesheet" href="<%$baseUrl%>/css/upload/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="<%$baseUrl%>/css/upload/jquery.fileupload-ui-noscript.css"></noscript>
</head>
<body>

<div class="container">
    <h1>Vagetable Picture Upload</h1>

    <form id="fileupload" action="//jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data">
        
        <noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/"></noscript>
        
        <div class="row fileupload-buttonbar">
            <div class="col-lg-7">
                
                <span class="btn btn-success fileinput-button">
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Add files...</span>
                    <input type="file" name="files[]" multiple>
                </span>
                <button type="submit" class="btn btn-primary start">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start upload</span>
                </button>
                <button type="reset" class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel upload</span>
                </button>
                <button type="button" class="btn btn-danger delete">
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>
                <input type="checkbox" class="toggle">
                <!-- The global file processing state -->
                <span class="fileupload-process"></span>
            </div>
            
            <div class="col-lg-5 fileupload-progress fade">
                
                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                </div>
                
                <div class="progress-extended">&nbsp;</div>
            </div>
        </div>
        
        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
    </form>
    <br>
</div>

<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>

<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>

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
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<script src="<%$baseUrl%>/js/jquery-1.11.1.min.js"></script>

<script src="<%$baseUrl%>/js/upload/vendor/jquery.ui.widget.js"></script>

<script src="http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>

<script src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.min.js"></script>

<script src="http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.iframe-transport.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.fileupload.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.fileupload-process.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.fileupload-image.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.fileupload-audio.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.fileupload-video.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.fileupload-validate.js"></script>

<script src="<%$baseUrl%>/js/upload/jquery.fileupload-ui.js"></script>

<script src="<%$baseUrl%>/js/upload/main.js"></script>

</body> 
</html>
