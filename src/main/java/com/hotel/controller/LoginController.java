package com.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.mapper.LoginMapper;
import com.hotel.pojo.Admin;

@Controller
@RequestMapping("/LoginController") // 类名
public class LoginController {
	@Autowired
	LoginMapper loginMapper;

//登录服务
	@RequestMapping(value = "/loginProving", method = RequestMethod.POST)
	public ModelAndView login(Admin admin) {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		Admin LoginInfo = loginMapper.loginByName(admin);
		if ((LoginInfo.getA_name()).isEmpty() || (LoginInfo.getA_name()).equals("")) {
			mav.addObject("ERROR", "用户名错误或用户不存在");
		} else {
			if ((admin.getA_pwd()).equals(LoginInfo.getA_pwd())) {
				mav.addObject("LOGININFO", LoginInfo);
				mav.setViewName("index");
			} else {
				mav.addObject("ERROR", "密码错误");
			}

		}

		return mav;
	}

}
