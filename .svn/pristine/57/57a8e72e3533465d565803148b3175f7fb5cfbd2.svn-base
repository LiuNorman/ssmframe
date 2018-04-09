package com.frame.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.frame.base.entity.UserInfo;
import com.frame.base.mapper.IndexMapper;
import com.frame.service.IndexService;

@Service("indexServiceImpl") 
public class IndexServiceImpl implements IndexService{
	
	@Autowired 
	private IndexMapper indexMapper;
	
	public String getMessage() {
		// TODO Auto-generated method stub
		return null;
	}

	public UserInfo getUserById(int userId) {
		// TODO Auto-generated method stub
		UserInfo user=this.indexMapper.getUserById(userId);
		return user;
	}


	public void setIndexMapper(IndexMapper indexMapper) {
		this.indexMapper = indexMapper;
	}

	
}
