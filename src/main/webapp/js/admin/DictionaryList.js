/**
 * 
 */
$(function(){
	
	$("body").on("blur","#dictNameInput,#dictCodeInput",function(){
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
	var dictCode=$("#dictCodeInput").val();
	var dictName=$("#dictNameInput").val();
	if(dictName==""){
		$("#dictNameInput").addClass("error-border");
		$("#dictNameInput").focus();
		return;
	}
	if(dictCode==""){
		$("#dictCodeInput").addClass("error-border");
		$("#dictCodeInput").focus();
		return;
	}
	$("#dictCode").val(dictCode);
	$("#dictName").val(dictName);
	if($("#id").val() == ""){//id为空，新增保存
		$.ajax({
			url : projectAllName+"/admin/dict/saveDictionaryAdd.do",
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
			url:projectAllName+"/admin/dict/saveDictionaryEdit.do",
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
function setInfo(id, DictCode, DictName){
	$("#id").val(id);
	$("#dictCodeInput").val(DictCode);
	$("#dictNameInput").val(DictName);
	$("#dictNameInput,#dictCodeInput").removeClass("error-border");
}
/**
 * 新增状态下清空数据
 */
function clearInfo(){
	$("#dictNameInput").val("");
	$("#dictCodeInput").val("");
	$("#id").val("");
	$("#dictNameInput,#dictCodeInput").removeClass("error-border");
}
/**
 * 删除字典
 */
function deleteCatecory(id){
	Showbo.Msg.confirm("确定删除？",function(r){
		if(r=="yes"){
			$.ajax({
				url:projectAllName+"/admin/dict/deleteDictionary.do",
				async:false,
				type : "POST",
				dataType : 'JSON',
				data:{"id":id},
				success:function(json){
					if(json.result=="1"){
						Showbo.Msg.alert("删除成功！",function(){
							window.location.href = projectAllName + '/admin/dict/getDictionaryList.do';
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
function deleteDictionaryBatch(){
	var ids="";
	$("[name=category]:checked").each(function(){
		ids+=($(this).attr("value")+",");
	});
	if(ids!=""){
		Showbo.Msg.confirm("确定要删除所有勾选的项吗？",function(r){
			if(r=="yes"){
				ids=ids.substring(0,ids.length-1);
				$.ajax({
					url:projectAllName+"/admin/dict/deleteDictionaryBatch.do",
					async:false,
					type : "POST",
					dataType : 'JSON',
					data:{"ids":ids},
					success:function(json){
						if(json.result=="1"){
							Showbo.Msg.alert("删除成功！",function(){
								window.location.href = projectAllName + '/admin/dict/getDictionaryList.do';
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
