package com.shoes.Dao;

import java.util.List;

import com.shoes.bean.OrdersItemBean;

public interface OrdersItemDao {
	public boolean addOrdersItem( OrdersItemBean ordersItem );
	public boolean deleteOrdersItem( OrdersItemBean ordersItem );
	public boolean updateOrdersItem( OrdersItemBean ordersItem );
	public List<OrdersItemBean> selectOrdersItem( OrdersItemBean ordersItem );
}
