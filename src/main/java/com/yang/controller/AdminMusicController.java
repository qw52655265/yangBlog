package com.yang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yang.entity.MusicBean;
import com.yang.service.MusicService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PageUtils;

/**
 * 
 * @描述 音乐管理Controller
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午11:12:06
 * @version
 */
@Controller
@RequestMapping("admin/music")
public class AdminMusicController {
	
	@Autowired
	private MusicService musicService;
	
	/**
	 * 获取音乐列表
	 * @param model
	 * @param pageNum
	 * @return
	 */
	@RequestMapping("getMusicList")
	public String getMusicList(Model model, String pageNum){
		
		JSONObject list;
		try {
			if(pageNum == null || "".equals(pageNum)){
				pageNum = "1";
			}
			String result = musicService.getMusicList(PageUtils.getStartRecordNum(Integer.parseInt(pageNum)),Integer.parseInt(pageNum));
			JSONArray row = JSONArray.parseArray(result);
			list = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		
		return "page/admin/music/MusicList";
	}
	
	/**
	 * 保存音乐（新增）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("addMusic")
	public JSONObject addMusic(MusicBean bean){
		
		JSONObject json;
		try {
			String result = musicService.addMusic(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id删除音乐
	 * @param musicId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteMusic")
	public JSONObject deleteMusic(String musicId){
		
		JSONObject json;
		try {
			String result = musicService.deleteMusic(musicId);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id串批量删除音乐
	 * @param musicIds
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteMusicBatch")
	public JSONObject deleteMusicBatch(String musicIds){
		
		JSONObject json;
		try {
			String result = musicService.deleteMusicBatch(musicIds);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}

}
