package com.yang.utils;

/**
 * 
 * @描述 分页工具类
 * @author 杨小龙
 * @创建时间 2016年5月30日 上午9:58:09
 * @version
 */
public class PageUtils {
	
	/**
	 * 根据页码，获取分页起始记录数
	 * @param pageNum
	 * @return
	 */
	public static int getStartRecordNum(int pageNum){
		return pageNum*5-5;
	}
	
	

}
