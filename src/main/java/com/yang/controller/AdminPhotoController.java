package com.yang.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yang.entity.PhotoBean;
import com.yang.service.PhotoService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PageUtils;

/**
 * 
 * @描述 照片管理Controller
 * @author 杨小龙
 * @创建时间 2016年7月29日 下午3:11:01
 * @version
 */
@Controller
@RequestMapping("admin/photo")
public class AdminPhotoController {
	
	@Autowired
	private PhotoService photoService;
	
	/**
	 * 获取相册列表
	 * @param model
	 * @param pageNum
	 * @return
	 */
	@RequestMapping("getPhotoList")
	public String getPhotoList(Model model, String pageNum){
		JSONObject list;
		try {
			if(pageNum == null || "".equals(pageNum)){
				pageNum = "1";
			}
			String result = photoService.getPhotoList(PageUtils.getStartRecordNum(Integer.parseInt(pageNum)),Integer.parseInt(pageNum));
			JSONArray row = JSONArray.parseArray(result);
			list = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		
		return "page/admin/photo/PhotoList";
	}
	
	/**
	 * 保存照片（新增）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("addPhoto")
	public JSONObject addPhoto(PhotoBean bean){
		
		JSONObject json;
		try {
			bean.setPhotoId(UUID.randomUUID().toString().toUpperCase());
			bean.setUrl("upload/default/defaultPhoto.jpg");//设置默认相册封面图片
			bean.setParentId("0");//默认父节点id为'0'
			String result = photoService.addPhoto(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 保存照片（编辑）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("editPhoto")
	public JSONObject editPhoto(PhotoBean bean){
		
		JSONObject json;
		try {
			String result = photoService.editPhoto(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id删除照片
	 * @param photoId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deletePhoto")
	public JSONObject deletePhoto(String photoId){
		
		JSONObject json;
		try {
			String result = photoService.deletePhoto(photoId);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id串批量删除照片
	 * @param photoIds
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deletePhotoBatch")
	public JSONObject deletePhotoBatch(String photoIds){
		
		JSONObject json;
		try {
			String result = photoService.deletePhotoBatch(photoIds);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 获取相册列表
	 * @param model
	 * @param parentId
	 * @return
	 */
	@RequestMapping("getPhotoInfoList")
	public String getPhotoInfoList(Model model, String parentId){
		JSONObject list;
		try {
			String result = photoService.getPhotoInfoList(parentId);
			JSONArray row = JSONArray.parseArray(result);
			list = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		model.addAttribute("parentId", parentId);
		
		return "page/admin/photo/PhotoInfo";
	}

}
