var ue;
$(function(){
	ue = UE.getEditor('myEditor');
	
	//新增博文保存按钮
	$('body').on('click','#saveAddBtn',function(){
		if(checkFormAndSetFormReady()){
			Showbo.Msg.confirm('请核对您输入的数据，是否保存？',function(i){
				if(i=="yes"){
					$.ajax({
						url : projectAllName+"/admin/blog/addBlog.do",
						type : "POST",
						dataType : 'JSON',
						data : $('#addBlogForm').serialize(),
						success : function(json) {
							if(json.result == '1'){
								Showbo.Msg.alert("保存成功！",function(r){
									window.location.href = projectAllName + '/admin/blog/getBlogList.do';
								});
							}else{
								Showbo.Msg.alert("保存失败！");
							}
						}
					});
				}
			});
		}
	});
	//编辑博文保存按钮
	$('body').on('click','#saveEditBtn',function(){
		if(checkFormAndSetFormReady()){
			Showbo.Msg.confirm('请核对您输入的数据，是否保存？',function(i){
				if(i=="yes"){
					$.ajax({
						url : projectAllName+"/admin/blog/editBlog.do",
						type : "POST",
						dataType : 'JSON',
						data : $('#editBlogForm').serialize(),
						success : function(json) {
							if(json.result == '1'){
								Showbo.Msg.alert("保存成功！",function(r){
									window.location.href = projectAllName + '/admin/blog/getBlogList.do';
								});
							}else{
								Showbo.Msg.alert("保存失败！");
							}
						}
					});
				}
			});
		}
	});
			
			

	

});


/**
 * 校验并处理提交表单
 */
function checkFormAndSetFormReady(){
	var flag = true;
	var signTag="";
	var signTagName="";
	$("input[name=tag]:checked").each(function(){
		signTag+=($(this).val()+",");
		signTagName+=($(this).next("label:first").text()+",");
	});
	signTag=(signTag==""?"":signTag.substr(0,signTag.length-1));
	signTagName=(signTagName==""?"":signTagName.substr(0,signTagName.length-1));
	var typeid = $('#titleSelect').val();
	$('#typeid').val(typeid);//类型
	if(typeid == ""){
		flag = false;
	}
	$('#signTag').val(signTag);//标签
	$('#signTagName').val(signTagName);//标签名
	var title = $('#titleInput').val();
	$('#title').val(title);//标题
	if(title == ""){
		flag = false;
	}
	$('#summary').val($('#summaryInput').val()==''?ue.getContentTxt().substring(0,70):$('#summaryInput').val());//简介
	var content = ue.getContent().replace('"','\"');
	$('#content').val(content);//内容
	if(content == ""){
		flag = false;
	}
	var img = $("#fileName img").attr("mysrc");
	$('#img').val(img);//略缩图路径
	if(img == "" || img == null){
		flag = false;
	}
	if(flag == false){
		Showbo.Msg.alert("请将带 * 号的填写完整！");
	}
	return flag;
}



