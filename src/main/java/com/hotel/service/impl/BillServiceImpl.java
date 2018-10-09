package com.hotel.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.hotel.mapper.BillMapper;
import com.hotel.pojo.Bill;
import com.hotel.pojo.Order;
import com.hotel.service.BillService;

public class BillServiceImpl implements BillService {
	private SqlSession sqlSession;
	@Autowired
	BillMapper billMapper;

//	查询所有账单
	@Override
	public List<Order> queryBill() {
		// TODO Auto-generated method stub
		return billMapper.queryBill();
	}
//	添加账单

	@Override
	public int addBill(Bill bill) {
		// TODO Auto-generated method stub
		int result;
		try {
			result = sqlSession.insert("addBill", bill);
			sqlSession.commit();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return result;
	}

//	查看详情
	@Override
	public List<Bill> queryBillByOid(int o_id) {
		// TODO Auto-generated method stub
		return billMapper.queryBillByOid(o_id);
	}

//	根据房间号查询
	@Override
	public List<Order> queryBillByRnum(int r_num) {
		// TODO Auto-generated method stub
		return billMapper.queryBillByRnum(r_num);
	}

}
