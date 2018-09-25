package com.hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.hotel.mapper.RoomMapper;
import com.hotel.pojo.Room;
import com.hotel.util.Pager;

@Controller
@RequestMapping(value = "/RoomController")
public class RoomController {
	@Autowired
	private RoomMapper roomMapper;
	private ModelAndView mav;
	private Page<?> page;

//	查询所有客房信息
	@RequestMapping(value = "/queryRoom")
	public ModelAndView queryRoom(Pager pager) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		List<Room> roomInfo = roomMapper.queryRoom();
		mav.addObject("pager", pager.getPage(page));
		mav.addObject("RoomInfo", roomInfo);
		mav.setViewName("room_management");
		return mav;
	}

//	添加客房信息
	@RequestMapping(value = "/addRoom", method = RequestMethod.POST)
	public ModelAndView addRoom(Room room) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		roomMapper.addRoom(room);
		mav.setViewName("redirect:/RoomController/queryRoom");
		return mav;
	}

//	修改客房信息
	@RequestMapping(value = "/updadeRoomById", method = RequestMethod.POST)
	public ModelAndView updadeRoomById(Room room) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		roomMapper.updadeRoomById(room);
		mav.setViewName("redirect:/RoomController/queryRoom");
		return mav;
	}

//	删除客房信息
	@RequestMapping(value = "/deleteRoomById")
	public ModelAndView deleteRoomById(Room room) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		roomMapper.deleteRoomById(room);
		mav.setViewName("redirect:/RoomController/queryRoom");
		return mav;
	}

//	根据房间号查询客房信息
	@RequestMapping(value = "/selectRoomByNum", method = RequestMethod.POST)
	public ModelAndView selectRoomByNum(Room room, Pager pager) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		List<Room> roomInfo = roomMapper.queryRoomByNum(room);
		mav.addObject("pager", pager.getPage(page));
		mav.addObject("RoomInfo", roomInfo);
		mav.setViewName("room_management");
		return mav;
	}

}
