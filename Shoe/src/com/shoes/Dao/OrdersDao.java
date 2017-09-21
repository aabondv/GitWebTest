package com.shoes.Dao;

import java.util.List;

import com.shoes.bean.OrdersBean;
import com.shoes.bean.OrdersItemBean;
import com.shoes.bean.UsersBean;

public interface OrdersDao {
	public boolean addOrders( OrdersBean Orders,OrdersItemBean ordersItem);
	public boolean addOrders( OrdersBean orders,List<OrdersItemBean> orderitems);
	public boolean deleteOrders( OrdersBean Orders );
	public List<OrdersBean> selectOrders( OrdersBean Orders );
	public List<OrdersBean> selectByUser(UsersBean user);

}
