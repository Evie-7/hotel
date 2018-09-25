package com.hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.hotel.mapper.BillMapper;
import com.hotel.pojo.Order;
import com.hotel.util.Pager;

@Controller
@RequestMapping(value = "/BillController")
public class BillController {
	@Autowired
	private BillMapper billMapper;
	private ModelAndView mav;
	private Page<?> page;

//	查询所有账单
	@RequestMapping(value = "/queryOrder")
	public ModelAndView queryRoom(Pager pager) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		List<Order> billInfo = billMapper.queryBill();
		mav.addObject("pager", pager.getPage(page));
		mav.addObject("BillInfo", billInfo);
		mav.setViewName("bill_management");
		return mav;
	}
}
