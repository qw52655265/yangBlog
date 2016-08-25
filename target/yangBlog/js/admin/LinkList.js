$(function(){
	
	$("body").on("blur","#nameInput,#urlInput",function(){
		if($(this).val() == ""){
			$(this).addClass("error-border");
		}else{
			$(this).removeClass("error-border");
		}
	});
	
});

/**
 * 全选列表
 */
var checkItem=true;
function selectAll(){
	if(checkItem){
		$("input[name=category]").each(function(){this.checked=true});
		checkItem=false;
	}else{
		$("input[name=category]").each(function(){this.checked=false});
		checkItem=true;
	}
}
/**
 * 保存字典
 */
function saveCategory(){
	var url=$("#urlInput").val();
	var name=$("#nameInput").val();
	if(name==""){
		$("#nameInput").addClass("error-border");
		$("#nameInput").focus();
		return;
	}
	if(url==""){
		$("#urlInput").addClass("error-border");
		$("#urlInput").focus();
		return;
	}
	$("#url").val(url);
	$("#name").val(name);
	if($("#linkId").val() == ""){//id为空，新增保存
		$.ajax({
			url : projectAllName+"/admin/link/addLink.do",
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
	}else{//id不为空，编辑保存
		$.ajax({
			url:projectAllName+"/admin/link/editLink.do",
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
 * 编辑状态下赋值
 */
function setInfo(linkId, name, url){
	$("#linkId").val(linkId);
	$("#nameInput").val(name);
	$("#urlInput").val(url);
	$("#nameInput,#urlInput").removeClass("error-border");
}
/**
 * 新增状态下清空数据
 */
function clearInfo(){
	$("#nameInput").val("");
	$("#urlInput").val("");
	$("#linkId").val("");
	$("#nameInput,#urlInput").removeClass("error-border");
}
/**
 * 删除字典
 */
function deleteCatecory(linkId){
	Showbo.Msg.confirm("确定删除？",function(r){
		if(r=="yes"){
			$.ajax({
				url:projectAllName+"/admin/link/deleteLink.do",
				async:false,
				type : "POST",
				dataType : 'JSON',
				data:{"linkId":linkId},
				success:function(json){
					if(json.result=="1"){
						Showbo.Msg.alert("删除成功！",function(){
							window.location.href = projectAllName + '/admin/link/getLinkList.do';
						});
					}
				}
			});
		}
	});
}
/**
 * 批量删除字典
 */
function deleteLinkBatch(){
	var linkIds="'";
	$("[name=category]:checked").each(function(){
		linkIds+=$(this).attr("value")+"','";
	});
	if(linkIds!="'"){
		Showbo.Msg.confirm("确定要删除所有勾选的项吗？",function(r){
			if(r=="yes"){
				linkIds=linkIds.substring(0,linkIds.length-2);
				$.ajax({
					url:projectAllName+"/admin/link/deleteLinkBatch.do",
					async:false,
					type : "POST",
					dataType : 'JSON',
					data:{"linkIds":linkIds},
					success:function(json){
						if(json.result=="1"){
							Showbo.Msg.alert("删除成功！",function(){
								window.location.href = projectAllName + '/admin/link/getLinkList.do';
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
