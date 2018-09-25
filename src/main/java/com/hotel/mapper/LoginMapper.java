package com.hotel.mapper;

import com.hotel.pojo.Admin;

public interface LoginMapper {
//	根据用户名查询登录信息
	public Admin loginByName(Admin admin);

}
