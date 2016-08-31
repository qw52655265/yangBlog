package com.yang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.yang.service.BlogService;
import com.yang.service.DictionaryService;
import com.yang.service.LinkService;
import com.yang.utils.JSONUtils;
import com.yang.utils.PageUtils;







/**
 * 
 * @描述 博客网站Controller
 * @author 杨小龙
 * @创建时间 2016年8月3日 下午2:30:13
 * @version
 */
@Controller
@RequestMapping
public class IndexController {
	
	@Autowired
	private BlogService blogService;
	@Autowired
	private LinkService linkService;
	@Autowired
	private DictionaryService dictionaryService;
	
	/**
	 * 网站首页
	 * @return
	 */
	@RequestMapping("index")
	public String getIndex(Model model){
		String result;
		JSONObject blogList = null;
		JSONObject linkList = null;
		JSONObject tagList = null;
		try {
			//文章推荐
			result = blogService.getBlogList4Index(0, 1);
			JSONArray blogRow = JSONArray.parseArray(result);
			blogList = JSONUtils.setReturnSuccessJSON(blogRow);
		} catch (Exception e) {
			blogList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		//点击排行
		JSONObject clickNumList = getBlogListByCondition(" hitcount desc , createdate desc ");
	
		//最新文章
		JSONObject createdateList = getBlogListByCondition(" createdate desc ");
		
		try {
			//标签云集
			result = dictionaryService.getDictionaryDetailList("DM_BQYJ");
			JSONArray tagRow = JSONArray.parseArray(result);
			tagList = JSONUtils.setReturnSuccessJSON(tagRow);
		} catch (Exception e) {
			tagList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		
		try {
			//友情链接
			result = linkService.getLinkList(0, 1);
			JSONArray linkRow = JSONArray.parseArray(result);
			linkList = JSONUtils.setReturnSuccessJSON(linkRow);
		} catch (Exception e) {
			linkList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("blogList", blogList);
		model.addAttribute("clickNumList", clickNumList);
		model.addAttribute("createdateList", createdateList);
		model.addAttribute("tagList", tagList);
		model.addAttribute("linkList", linkList);
		
		return "page/index";
	}
	
	/**
	 * 获取博文列表
	 * @param model
	 * @param pageNum
	 * @param typeid
	 * @return
	 */
	@RequestMapping(value="getBlogList/{pageNum}/{typeid}", method=RequestMethod.GET)
	public String getBlogList(Model model, 
			@PathVariable("pageNum") String pageNum, 
			@PathVariable("typeid") String typeid){
//	@RequestMapping(value="getBlogList/{pageNum}/{typeid}", method=RequestMethod.GET)
//	public String getBlogList(Model model, 
//			@RequestParam(value="pageNum", required=false, defaultValue="1") String pageNum, 
//			@RequestParam(value="typeid", required=false, defaultValue="") String typeid){
		
		JSONObject blogList;
		try {
			if("all".equals(pageNum)){
				pageNum = "1";
			}
			if("all".equals(typeid)){
				typeid = null;
			}
//			System.out.println(pageNum+">>>"+typeid+"<<<");
			String result = blogService.getBlogListByBolgType(PageUtils.getStartRecordNum(Integer.parseInt(pageNum)),Integer.parseInt(pageNum), typeid);
			JSONArray row = JSONArray.parseArray(result);
			blogList = JSONUtils.setReturnSuccessJSON(row);
			
		} catch (NumberFormatException e) {
			blogList = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		//点击排行
		JSONObject clickNumList = getBlogListByCondition(" hitcount desc , createdate desc ");
	
		//最新文章
		JSONObject createdateList = getBlogListByCondition(" createdate desc ");
		
		model.addAttribute("clickNumList", clickNumList);
		model.addAttribute("createdateList", createdateList);
		model.addAttribute("blogList", blogList);
		if(typeid == null){
			model.addAttribute("typeid", "all");
		}else{
			model.addAttribute("typeid", typeid);
		}
		
		
		return "page/blogList";
	}
	
	/**
	 * 博文详细
	 * @param model
	 * @param blogId
	 * @return
	 */
	@RequestMapping("getBlogInfo/{id}")
	public String getBlogInfo(Model model, @PathVariable("id") String id){
		
		String result;
		JSONObject info;
		JSONObject prev;
		JSONObject next;
		try {
			//更新【浏览次数】
			blogService.autoHitCount(id);
			//获取博文详细
			result = blogService.getBlogInfo(id);
			info = JSONObject.parseObject(result);
		} catch (Exception e) {
			info = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		//点击排行
		JSONObject clickNumList = getBlogListByCondition(" hitcount desc , createdate desc ");
	
		//最新文章
		JSONObject createdateList = getBlogListByCondition(" createdate desc ");
		
		try {
			//上一条记录
			result = blogService.getPrevBlog(Integer.parseInt(id));
			prev = JSONObject.parseObject(result);
			if(prev == null){
				prev = JSONUtils.setReturnErrorJSON();
			}
		} catch (Exception e) {
			prev = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		try {
			//下一条记录
			result = blogService.getNextBlog(Integer.parseInt(id));
			next = JSONObject.parseObject(result);
			if(next == null){
				next = JSONUtils.setReturnErrorJSON();
			}
		} catch (Exception e) {
			next = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		model.addAttribute("info", info);
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		model.addAttribute("clickNumList", clickNumList);
		model.addAttribute("createdateList", createdateList);
		
		return "page/blogInfo";
	}
	
	/**
	 * 获取条件查询排行榜
	 * @param model
	 */
	private JSONObject getBlogListByCondition(String condition){
		
		JSONObject json;
		try {
			String result = blogService.getBlogListByCondition(condition);
			JSONArray row = JSONArray.parseArray(result);
			json = JSONUtils.setReturnSuccessJSON(row);
		} catch (Exception e) {
			json = JSONUtils.setReturnErrorJSON();
			e.printStackTrace();
		}
		return json;
	}
	
	@RequestMapping(value="getList/{pageNum}/{typeid}", method=RequestMethod.GET)
	public String getList(Model model, 
			@PathVariable("pageNum") String pageNum, 
			@PathVariable("typeid") String typeid){
		if(pageNum == null || "".equals(pageNum)){
			pageNum = "1";
		}
		return "page/list";
	}
	
	@RequestMapping("getComment")
	public String getComment(String action, String signature ){
		System.out.println(action);
		System.out.println(signature);
		
		return null;
	}

}
