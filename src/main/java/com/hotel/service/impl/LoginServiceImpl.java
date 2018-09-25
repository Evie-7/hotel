package com.hotel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.mapper.LoginMapper;
import com.hotel.pojo.Admin;
import com.hotel.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginMapper loginMapper;

//	根据用户名查询登录信息
	@Override
	public Admin loginByName(Admin admin) {
		// TODO Auto-generated method stub
		return loginMapper.loginByName(admin);
	}

}
