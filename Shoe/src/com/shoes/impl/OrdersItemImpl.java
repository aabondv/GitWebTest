package com.shoes.impl;

import java.util.ArrayList;
import java.util.List;

import com.shoes.Dao.OrdersItemDao;
import com.shoes.bean.OrdersItemBean;
import com.shoes.utils.DButils;

public class OrdersItemImpl implements OrdersItemDao {

	@Override
	public boolean addOrdersItem(OrdersItemBean ordersItem) {
		String sql = " insert into ordersitem ( ordersitemid,oiproductid,oiproductnum ) values ( ?,?,? ) ";
		int num = DButils.executeUpdate(sql, ordersItem.getOrdersItemId(),ordersItem.getOiProductId(),ordersItem.getOiProductNum());
		return num>0?true:false;
	}

	@Override
	public boolean deleteOrdersItem(OrdersItemBean ordersItem) {
		String sql = " delete from ordersitem where  "; ////������ 
		int num = 0;
		return num>0?true:false;
	}

	@Override
	public boolean updateOrdersItem(OrdersItemBean ordersItem) {
		String sql = " update ordersitem set oiproductnum = '?' where ordersitemid = ? "; //������ 
		int num = 0;
		return num>0?true:false;
	}

	@Override
	public List<OrdersItemBean> selectOrdersItem(OrdersItemBean ordersItem) {
		String sql;
		List<OrdersItemBean> list = new ArrayList();
		if(ordersItem.getOrdersItemId()!= 0){
			sql = " select * from ordersitem where ordersitemid = ?"; 
			//根据订单id查询所有订单项
			list = DButils.executeQuery(sql, new OrdersItemBean(), ordersItem.getOrdersItemId());
			return list;
		 }	
		return null;
	}

}
