package com.hotel.service;

import java.util.List;

import com.hotel.pojo.Room;

public interface RoomService {
//	查询所有信息
	List<Room> queryRoom();

//	添加客房
	void addRoom(Room room);

//	修改客房
	void updadeRoomById(Room room);

//	删除客房
	void deleteRoomById(Room room);

//	按房间号查询
	List<Room> queryRoomByNum(Room room);
}
