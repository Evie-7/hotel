package com.hotel.mapper;

import java.util.List;

import com.hotel.pojo.Admin;

public interface UserMapper {
//	查询所有管理员信息
	public List<Admin> queryAdmin();

//	添加管理员
	public void addAdmin(Admin admin);

//	更新管理员
	public void updateAdminById(Admin admin);

//	删除管理员
	public void deleteAdminById(Admin admin);

//	根据名字查询
	public List<Admin> queryAdminByName(Admin admin);

}
