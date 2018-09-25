package com.hotel.service;

import java.util.List;

import com.hotel.pojo.Admin;

public interface UserServivce {
//	查询所有管理员信息
	List<Admin> queryAdmin();

//	添加管理员
	void addAdmin(Admin admin);

//	更新管理员
	void updateAdminById(Admin admin);

//	删除管理员
	void deleteAdminById(Admin admin);

//	根据名字查询
	List<Admin> queryAdminByName(Admin admin);
}
