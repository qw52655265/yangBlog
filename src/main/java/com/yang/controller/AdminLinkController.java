package com.yang.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yang.entity.LinkBean;
import com.yang.service.LinkService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PageUtils;

/**
 * 
 * @描述 友情链接Controller
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午9:55:11
 * @version
 */
@Controller
@RequestMapping("admin/link")
public class AdminLinkController {
	
	@Autowired
	private LinkService linkService;
	
	/**
	 * 获取友情链接列表
	 * @param model
	 * @param pageNum
	 * @return
	 */
	@RequestMapping("getLinkList")
	public String getLinkList(Model model, String pageNum){
		JSONObject list;
		try {
			if(pageNum == null || "".equals(pageNum)){
				pageNum = "1";
			}
			String result = linkService.getLinkList(PageUtils.getStartRecordNum(Integer.parseInt(pageNum)),Integer.parseInt(pageNum));
			JSONArray row = JSONArray.parseArray(result);
			list = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			list = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "page/admin/link/LinkList";
	}
	
	/**
	 * 保存友情链接（新增）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("addLink")
	public JSONObject addLink(LinkBean bean){
		
		JSONObject json;
		try {
			bean.setLinkId(UUID.randomUUID().toString().toUpperCase());
			String result = linkService.addLink(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 保存友情链接（编辑）
	 * @param bean
	 * @return
	 */
	@ResponseBody
	@RequestMapping("editLink")
	public JSONObject editLink(LinkBean bean){
		
		JSONObject json;
		try {
			String result = linkService.editLink(bean);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id删除友情链接
	 * @param linkId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteLink")
	public JSONObject deleteLink(String linkId){
		
		JSONObject json;
		try {
			String result = linkService.deleteLink(linkId);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}
	
	/**
	 * 根据id串批量删除友情链接
	 * @param linkIds
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteLinkBatch")
	public JSONObject deleteLinkBatch(String linkIds){
		
		JSONObject json;
		try {
			String result = linkService.deleteLinkBatch(linkIds);
			json = JSONObject.parseObject(result);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		return json;
	}

}
