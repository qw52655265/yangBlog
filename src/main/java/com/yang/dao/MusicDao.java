package com.yang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yang.entity.MusicBean;

/**
 * 
 * @描述 音乐管理dao
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午10:58:07
 * @version
 */
public interface MusicDao {
	
	/**
	 * 获取音乐列表
	 * @param startRecordNum
	 * @return
	 */
	List<MusicBean> getMusicList(@Param("startRecordNum") int startRecordNum);
	
	/**
	 * 保存音乐（新增）
	 * @param bean
	 * @return
	 */
	int addMusic(MusicBean bean);
	
	/**
	 * 根据id删除音乐
	 * @param musicId
	 * @return
	 */
	int deleteMusic(@Param("musicId") String musicId);
	
	/**
	 * 根据id串删除音乐
	 * @param musicIds
	 * @return
	 */
	int deleteMusicBatch(@Param("musicIds") String musicIds);

}
