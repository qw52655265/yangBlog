/**
 * 
 */
$(function(){
	
	$("body").on("blur","#itemNameInput,#itemCodeInput",function(){
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
	var itemCode=$("#itemCodeInput").val();
	var itemName=$("#itemNameInput").val();
	if(itemName==""){
		$("#itemNameInput").addClass("error-border");
		$("#itemNameInput").focus();
		return;
	}
	if(itemCode==""){
		$("#itemCodeInput").addClass("error-border");
		$("#itemCodeInput").focus();
		return;
	}
	$("#itemCode").val(itemCode);
	$("#itemName").val(itemName);
	if($("#itemId").val() == ""){//id为空，新增保存
		$.ajax({
			url : projectAllName+"/admin/dict/saveDetailAdd.do",
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
			url:projectAllName+"/admin/dict/saveDetailEdit.do",
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
function setInfo(itemId,  itemCode, itemName){
	$("#itemId").val(itemId);
	$("#itemCodeInput").val(itemCode);
	$("#itemNameInput").val(itemName);
	$("#itemNameInput,#itemCodeInput").removeClass("error-border");
}
/**
 * 新增状态下清空数据
 */
function clearInfo(){
	$("#itemNameInput").val("");
	$("#itemCodeInput").val("");
	$("#itemId").val("");
	$("#itemNameInput,#itemCodeInput").removeClass("error-border");
}
/**
 * 删除字典
 */
function deleteCatecory(itemId){
	Showbo.Msg.confirm("确定删除？",function(r){
		if(r=="yes"){
			$.ajax({
				url:projectAllName+"/admin/dict/deleteDetail.do",
				async:false,
				type : "POST",
				dataType : 'JSON',
				data:{"itemId":itemId},
				success:function(json){
					if(json.result=="1"){
						Showbo.Msg.alert("删除成功！",function(){
							location.reload();
//							window.location.href = projectAllName + '/dict/getDictionaryDetailList.do?dictCode='+ $("#dictCode").val();
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
function deleteDetailBatch(){
	var itemIds="'";
	$("[name=category]:checked").each(function(){
		itemIds+=$(this).attr("value")+"','";
	});
	if(itemIds!="'"){
		Showbo.Msg.confirm("确定要删除所有勾选的项吗？",function(r){
			if(r=="yes"){
				itemIds=itemIds.substring(0,itemIds.length-2);
				console.log(itemIds);
				$.ajax({
					url:projectAllName+"/admin/dict/deleteDetailBatch.do",
					async:false,
					type : "POST",
					dataType : 'JSON',
					data:{"itemIds":itemIds},
					success:function(json){
						if(json.result=="1"){
							Showbo.Msg.alert("删除成功！",function(){
								location.reload();
//								window.location.href = projectAllName + '/dict/getDictionaryList.do?dictCode='+ $("#dictCode").val();
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
