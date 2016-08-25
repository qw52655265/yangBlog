/**
 * 上传音乐文件公共JS
 */
$(function() {
	initUploader();
});
function initUploader(){
	// Setup html5 version
	$("#uploader").pluploadQueue({
		// General settings
		runtimes : 'html5,flash,silverlight,html4',
		url : projectAllName+'/admin/file/uploadMusic.do',
		chunk_size: '10mb',
		rename : true,
		dragdrop: true,
		
		filters : {
			// Maximum file size
			max_file_size : '20mb',
			// Specify what files to browse for
			mime_types: [{title : "Mp3 files", extensions : "mp3"},]
		},
		// Resize images on clientside if we can
//		resize : {width : 320, height : 240, quality : 90},
		flash_swf_url : 'plupload/js/Moxie.swf',
		silverlight_xap_url : 'plupload/js/Moxie.xap'
	});
	var uploader = $('#uploader').pluploadQueue();
	uploader.bind('FileUploaded',function(uploader,file,responseObject){
		var temp=eval("("+responseObject.response+")");
		temp=eval("("+temp+")");
	});
	uploader.bind('UploadComplete', function(up,files) {
		// Autostart
		$('#uploadFile').modal('hide');
		location.reload();
	});
	
}