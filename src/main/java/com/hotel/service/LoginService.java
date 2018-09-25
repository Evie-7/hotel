package com.hotel.service;

import com.hotel.pojo.Admin;

public interface LoginService {
//	根据用户名查询登录信息
	Admin loginByName(Admin admin);
}
