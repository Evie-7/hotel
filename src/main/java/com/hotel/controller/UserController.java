package com.hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.hotel.mapper.UserMapper;
import com.hotel.pojo.Admin;
import com.hotel.util.Pager;

@Controller
@RequestMapping(value = "/UserController")
public class UserController {
	@Autowired
	private UserMapper userMapper;
	private ModelAndView mav;
	private Page<?> page;

//	查询全部管理员信息
	@RequestMapping(value = "/queryAllAdmin")
	public ModelAndView queryAllAdmin(Pager pager) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		List<Admin> userInfo = userMapper.queryAdmin();
		mav.addObject("pager", pager.getPage(page));
		mav.addObject("UserInfo", userInfo);
		mav.setViewName("admin_management");
		return mav;
	}

//	根据名字管理员信息
	@RequestMapping(value = "/queryAdminByName", method = RequestMethod.POST)
	public ModelAndView queryAdminByName(Admin admin, Pager pager) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		List<Admin> userInfo = userMapper.queryAdminByName(admin);
		mav.addObject("pager", pager.getPage(page));
		mav.addObject("UserInfo", userInfo);
		mav.setViewName("admin_management");
		return mav;
	}

//	添加管理员
	@RequestMapping(value = "/addAdmin", method = RequestMethod.POST)
	public ModelAndView addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		userMapper.addAdmin(admin);
		mav.setViewName("redirect:/UserController/queryAllAdmin");
		return mav;
	}

//	更新管理员
	@RequestMapping(value = "/updateAdminById")
	public ModelAndView updateAdminById(Pager pager, Admin admin) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		userMapper.updateAdminById(admin);
		mav.setViewName("redirect:/UserController/queryAllAdmin");
		return mav;
	}

//	删除管理员
	@RequestMapping(value = "/deleteAdminById")
	public ModelAndView deleteAdminById(Admin admin) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		userMapper.deleteAdminById(admin);
		mav.setViewName("redirect:/UserController/queryAllAdmin");
		return mav;
	}
}
