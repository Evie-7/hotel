package com.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.hotel.mapper.BillMapper;
import com.hotel.pojo.Bill;
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
	public ModelAndView queryOrder(Pager pager) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		List<Order> billInfo = billMapper.queryBill();
		mav.addObject("pager", pager.getPage(page));
		mav.addObject("BillInfo", billInfo);
		mav.setViewName("bill_management");
		return mav;
	}

//	添加消费
	@RequestMapping(value = "/addBill", method = RequestMethod.POST)
	public void addBill(@RequestBody Bill bill, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int result = billMapper.addBill(bill);
		if (result != 0) {
			response.getWriter().print(1);
		}
	}

//	查看详情
	@RequestMapping(value = "/queryBillByOid")
	public ModelAndView queryBillByOid(@RequestParam(value = "o_id") int o_id) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		List<Bill> billDetail = billMapper.queryBillByOid(o_id);
		mav.addObject("BillDetail", billDetail);
		mav.setViewName("bill_detail");
		return mav;
	}

//	查询所有账单
	@RequestMapping(value = "/queryOrderByRnum", method = RequestMethod.POST)
	public ModelAndView queryOrderByRnum(Pager pager, @RequestParam(value = "r_num") int r_num) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		List<Order> billInfo = billMapper.queryBillByRnum(r_num);
		mav.addObject("pager", pager.getPage(page));
		mav.addObject("BillInfo", billInfo);
		mav.setViewName("bill_management");
		return mav;
	}
}
