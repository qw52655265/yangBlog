$(function(){
	
	$("body").on("blur","#name",function(){
		if($(this).val() == ""){
			$(this).addClass("error-border");
		}else{
			$(this).removeClass("error-border");
		}
	});
	
//	$("#photoList div div div").each(function(){
//		var height0=$(this).css("height");
//		var height1="";
//		$(this).children("a").children("img").load(function(){
//			height1=this.height;
//			height0=height0.substring(0,height0.length-2);
//			var top=(height0-height1)/2;
//			$(this).css("top",top+"px");
//		});
//	});
	$(".photoCheck").click(function(){
		if($(this).hasClass("fa-check-square-o")){
			$(this).removeClass("fa-check-square-o");
			$(this).addClass("fa-square-o");
		}else{
			$(this).removeClass("fa-square-o");
			$(this).addClass("fa-check-square-o");
		}
	});
	$('[data-toggle="tooltip"]').tooltip();
	
});


/**
 * 全选列表
 */
var checkItem=false;
function selectAll(){
	if(checkItem){
		$(".photoCheck").removeClass("fa-check-square-o");
		$(".photoCheck").addClass("fa-square-o");
		checkItem=false;
	}else{
		$(".photoCheck").addClass("fa-check-square-o");
		$(".photoCheck").removeClass("fa-square-o");
		checkItem=true;
	}
}

/**
 * 编辑相册
 */
function editPhoto(photoId,name){
	$("#photoId").val(photoId);
	$("#photoId").nextAll("h4").text("编辑相册");
	$("#name").val(name);
	$("#name").removeClass("error-border");
}
function clearPhoto(){
	$("#photoId").val("");
	$("#photoId").nextAll("h4").text("添加相册");
	$("#name").val("");
	$("#name").removeClass("error-border");
}

/**
 * 保存相册
 */
function savePhoto(){
	var name=$("#name").val();
	var photoId=$("#photoId").val();
	if(name==""){
		$("#name").addClass("error-border");
		$("#name").focus();
		return;
	}
	if(photoId == ""){//id为空，新增保存
		$.ajax({
			url : projectAllName+"/admin/photo/addPhoto.do",
			type : "POST",
			dataType : 'JSON',
			data : $("#saveForm").serialize(),
			success:function(json){
				if(json.result=="1"){
					Showbo.Msg.alert("保存成功！",function(){
						location.reload();
					});
				}
			}
		});
	}else{+//id不为空，编辑保存
		$.ajax({
			url:projectAllName+"/admin/photo/editPhoto.do",
			async:false,
			type : "POST",
			dataType : 'JSON',
			data : $("#saveForm").serialize(),
			success:function(json){
				if(json.result=="1"){
					Showbo.Msg.alert("保存成功！",function(){
						location.reload();
					});
				}
			}
		});
	}
}

/**
 * 删除相册
 */
function deletePhoto(photoId){
	Showbo.Msg.confirm("确定删除？",function(r){
		if(r=="yes"){
			$.ajax({
				url:projectAllName+"/admin/photo/deletePhoto.do",
				async:false,
				type : "POST",
				dataType : 'JSON',
				data:{"photoId":photoId},
				success:function(json){
					if(json.result=="1"){
						Showbo.Msg.alert("删除成功！",function(){
//							window.location.href = projectAllName + '/photo/getPhotoList.do';
							location.reload();
						});
					}
				}
			});
		}
	});
}
/**
 * 批量删除相册
 */
function deletePhotoBatch(){
//	var musicIds="'";
//	$("[name=category]:checked").each(function(){
//		musicIds+=$(this).attr("value")+"','";
//	});
	var photoIds="'";
	$(".fa-check-square-o").each(function(){
		photoIds+=($(this).attr("value")+"','");
	});
	if(photoIds!="'"){
		Showbo.Msg.confirm("确定要删除所有勾选的项吗？",function(r){
			if(r=="yes"){
				photoIds=photoIds.substring(0,photoIds.length-2);
				$.ajax({
					url:projectAllName+"/admin/photo/deletePhotoBatch.do",
					async:false,
					type : "POST",
					dataType : 'JSON',
					data:{"photoIds":photoIds},
					success:function(json){
						if(json.result=="1"){
							Showbo.Msg.alert("删除成功！",function(){
//								window.location.href = projectAllName + '/photo/getPhotoList.do';
								location.reload();
							});
						}
					}
				});
			}
		});
	}else{
		Showbo.Msg.alert("请先选择需要删除的记录！");
	}
}
