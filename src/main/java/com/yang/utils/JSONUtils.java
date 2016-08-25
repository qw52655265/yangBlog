package com.yang.utils;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/**
 * 
 * @描述 封装JSON
 * @author 杨小龙
 * @创建时间 2016年6月23日 上午10:14:14
 * @version
 */
public class JSONUtils {
	
	/**
	 * 根据sql返回值，封装返回json，判断操作是否成功
	 * @param flag
	 * @return
	 */
	public static String createJson(int flag,String id){
		JSONObject json = new JSONObject();
		if(flag >= 1){
			json.put("result", "1");
			json.put("msg", "success");
		}else{
			json.put("result", "0");
			json.put("msg", "error");
		}
		if(id != null){
			json.put("id", id);
		}
		return json.toJSONString();
	}
	
	/**
	 * 捕获异常之后，处理返回json串
	 * @return
	 */
	public static JSONObject setReturnErrorJSON(){
		JSONObject json = new JSONObject();
		json.put("result", "0");
		json.put("msg", "error");
		return json;
	}
	
	/**
	 * 简单封装成功json
	 * @param row
	 * @return
	 */
	public static JSONObject setReturnSuccessJSON(JSONArray row){
		JSONObject json = new JSONObject();
		json.put("result", "1");
		json.put("msg", "success");
		json.put("row", row);
		
		return json;
	}
	

}
