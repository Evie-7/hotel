package com.hotel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hotel.mapper.UserMapper;
import com.hotel.pojo.Admin;
import com.hotel.service.UserServivce;

public class UserServiceImpl implements UserServivce {
	@Autowired
	UserMapper userMapper;

//	查询所有管理员信息
	@Override
	public List<Admin> queryAdmin() {
		// TODO Auto-generated method stub
		return userMapper.queryAdmin();
	}

//	添加管理员
	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
	}

//	更新管理员
	@Override
	public void updateAdminById(Admin admin) {
		// TODO Auto-generated method stub

	}

//	删除管理员
	@Override
	public void deleteAdminById(Admin admin) {
		// TODO Auto-generated method stub

	}

//	根据名字查询
	@Override
	public List<Admin> queryAdminByName(Admin admin) {
		// TODO Auto-generated method stub
		return userMapper.queryAdminByName(admin);
	}

}
