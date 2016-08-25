package com.yang.service;

import com.yang.entity.MusicBean;

/**
 * 
 * @描述 音乐管理service
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午11:07:09
 * @version
 */
public interface MusicService {

	/**
	 * 获取音乐列表
	 * @param startRecordNum
	 * @return
	 */
	String getMusicList(int startRecordNum, int currentPage);
	
	/**
	 * 保存音乐（新增）
	 * @param bean
	 * @return
	 */
	String addMusic(MusicBean bean);
	
	/**
	 * 根据id删除音乐
	 * @param musicId
	 * @return
	 */
	String deleteMusic(String musicId);
	
	/**
	 * 根据id串删除音乐
	 * @param musicIds
	 * @return
	 */
	String deleteMusicBatch(String musicIds);
}
