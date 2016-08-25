$(function(){
	
	
	
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
 * 删除音乐
 */
function deleteMusic(musicId){
	Showbo.Msg.confirm("确定删除？",function(r){
		if(r=="yes"){
			$.ajax({
				url:projectAllName+"/admin/music/deleteMusic.do",
				async:false,
				type : "POST",
				dataType : 'JSON',
				data:{"musicId":musicId},
				success:function(json){
					if(json.result=="1"){
						Showbo.Msg.alert("删除成功！",function(){
							window.location.href = projectAllName + '/admin/music/getMusicList.do';
						});
					}
				}
			});
		}
	});
}
/**
 * 批量删除音乐
 */
function deleteMusicBatch(){
	var musicIds="'";
	$("[name=category]:checked").each(function(){
		musicIds+=$(this).attr("value")+"','";
	});
	if(musicIds!="'"){
		Showbo.Msg.confirm("确定要删除所有勾选的项吗？",function(r){
			if(r=="yes"){
				musicIds=musicIds.substring(0,musicIds.length-2);
				$.ajax({
					url:projectAllName+"/admin/music/deleteMusicBatch.do",
					async:false,
					type : "POST",
					dataType : 'JSON',
					data:{"musicIds":musicIds},
					success:function(json){
						if(json.result=="1"){
							Showbo.Msg.alert("删除成功！",function(){
								window.location.href = projectAllName + '/admin/music/getMusicList.do';
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
