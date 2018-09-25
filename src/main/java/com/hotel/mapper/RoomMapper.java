package com.hotel.mapper;

import java.util.List;

import com.hotel.pojo.Room;

public interface RoomMapper {
//	查询所有客房
	public List<Room> queryRoom();

//	添加客房
	public void addRoom(Room room);

//	修改客房
	public void updadeRoomById(Room room);

//	删除客房
	public void deleteRoomById(Room room);

//	按房间号查询
	public List<Room> queryRoomByNum(Room room);
}
