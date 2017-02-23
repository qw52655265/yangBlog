package com.yang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.yang.dao.MusicDao;
import com.yang.entity.MusicBean;
import com.yang.service.MusicService;
import com.yang.utils.JSONUtils;

/**
 * 
 * @描述 音乐管理接口实现类
 * @author 杨小龙
 * @创建时间 2016年7月29日 上午11:08:03
 * @version
 */
@Service("musicService")
public class MusicServiceImpl implements MusicService {
	
	@Autowired
	private MusicDao musicDao;

	 
	public String getMusicList(int startRecordNum, int currentPage) {

		List<MusicBean> beans = musicDao.getMusicList(startRecordNum);
		if(beans.size() > 0){
			beans.get(0).setCurrentPage(currentPage);//设置当前页
			int recordCount = beans.get(0).getRecordCount();
			int pageCount = (int) Math.ceil(((double)recordCount)/5);
			beans.get(0).setPageCount(pageCount);
		}
		String json = JSON.toJSONString(beans);
		
		return json;
	}

	 
	public String addMusic(MusicBean bean) {
		
		int flag = musicDao.addMusic(bean);
		String json = JSONUtils.createJson(flag, bean.getMusicId());
		
		return json;
	}

	 
	public String deleteMusic(String musicId) {
		
		int flag = musicDao.deleteMusic(musicId);
		String json = JSONUtils.createJson(flag, "");
		
		return json;
	}

	 
	public String deleteMusicBatch(String musicIds) {
		
		int flag = musicDao.deleteMusicBatch(musicIds);
		String json = JSONUtils.createJson(flag, "");
		
		return json;
	}

}
