/**
 * 上传文件公共JS
 */
$(function() {
	console.log($("#parentId").val());
	initUploader();
});
function initUploader(){
	// Setup html5 version
	$("#uploader").pluploadQueue({
		// General settings
		runtimes : 'html5,flash,silverlight,html4',
		url : projectAllName+'/admin/file/uploadPhoto.do',
		chunk_size: '10mb',
		rename : true,
		dragdrop: true,
		
		filters : {
			// Maximum file size
			max_file_size : '10mb',
			// Specify what files to browse for
			mime_types: [{title : "PNG files", extensions : "png,jpg,gif"},]
		},
		// Resize images on clientside if we can
//		resize : {width : 320, height : 240, quality : 90},
		flash_swf_url : 'plupload/js/Moxie.swf',
		silverlight_xap_url : 'plupload/js/Moxie.xap',
		multipart_params: {'parentId': $("#parentId").val()}  
	});
	var uploader = $('#uploader').pluploadQueue();
	uploader.bind('FileUploaded',function(uploader,file,responseObject){

	});
	uploader.bind('UploadComplete', function(up,files) {
		// Autostart
		Showbo.Msg.alert("保存成功！",function(){
			location.reload();
		});
		
	});
	
}