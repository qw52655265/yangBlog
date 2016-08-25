
/**
 * 全选列表
 */
var checkItem=true;
function selectAll(){
	if(checkItem){
		$("input[name=blogId]").each(function(){this.checked=true});
		checkItem=false;
	}else{
		$("input[name=blogId]").each(function(){this.checked=false});
		checkItem=true;
	}
}

/**
 * 删除文章
 */
function deleteBlog(id){
	Showbo.Msg.confirm("确定要删除该记录么？",function(i){
		if(i=="yes"){
			$.ajax({
				url:projectAllName+"/admin/blog/deleteBlog.do",
				async:true,
				data:{id:id},
				success:function(json){
					if(json.result == '1'){
						Showbo.Msg.alert("删除成功！", function() {
							window.location.href = projectAllName + '/admin/blog/getBlogList.do';
						});
					}else{
						Showbo.Msg.alert("删除失败！");
					}
				}
			});
		}
	});
}
/**
 * 批量删除
 */
function deleteBlogBatch(){
	if($('input[name=blogId]:checked').length <= 0){
		Showbo.Msg.alert("请先选择需要删除的记录！");
	}else{
		var idString = '';
		$('input[name=blogId]:checked').each(function(){
			idString += $(this).val() + ',';
		});
		if(idString!=''){
			idString = idString.substring(0,idString.length-1);
		}
		Showbo.Msg.confirm("确定要删除勾选的记录么？",function(i){
			if(i=="yes"){
				$.ajax({
					url:projectAllName+"/admin/blog/deleteBlogBatch.do",
					async:false,
					data:{idString:idString},
					success:function(json){
						if(json.result == '1'){
							Showbo.Msg.alert("删除成功！", function() {
								window.location.href = projectAllName + '/admin/blog/getBlogList.do';
							});
						}else{
							Showbo.Msg.alert("删除失败！");
						}
					}
				});
			}
		});
	}
}