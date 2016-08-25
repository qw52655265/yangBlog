/**
 * 上传文件公共JS
 */
$(function() {
	initUploader();
});
function initUploader(){
	// Setup html5 version
	$("#uploader").pluploadQueue({
		// General settings
		runtimes : 'html5,flash,silverlight,html4',
		url : projectAllName+'/admin/file/uploadFile.do',
		chunk_size: '5mb',
		rename : true,
		dragdrop: true,
		multi_selection:false,//多选
		filters : {
			// Maximum file size
			max_file_size : '10mb',
			// Specify what files to browse for
			mime_types: [{title : "Image files", extensions : "jpg,gif,png"}]
		},
		// Resize images on clientside if we can
		//resize : {width : 320, height : 240, quality : 90},
		flash_swf_url : 'plupload/js/Moxie.swf',
		silverlight_xap_url : 'plupload/js/Moxie.xap'
	});
	var uploader = $('#uploader').pluploadQueue();
	uploader.bind('FileUploaded',function(uploader,file,responseObject){
//		console.log(responseObject);
		var json=eval("("+responseObject.response+")");
		if(json.result == "1")
		fileName=("<img src='"+ projectAllName +"/"+ json.id + "' width='100px' mysrc='"+json.id+"'/>");
		$("#fileName").html(fileName);
	});
	uploader.bind('UploadComplete', function(up,files) {
		// Autostart
		$('#uploadFile').modal('hide');
	});
	/**
	 * 上传队列发生改变时触发，检查上传文件队列是否超过1个，超过将给予提示
	 */
	uploader.bind('QueueChanged', function(up) {
	    if (uploader.files.length > 1) {
	        uploader.splice(1, 1);
	        alert('只能上传一个文件');
	    }
	});
}