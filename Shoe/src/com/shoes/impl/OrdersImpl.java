package com.shoes.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.shoes.Dao.OrdersDao;
import com.shoes.bean.OrdersBean;
import com.shoes.bean.OrdersItemBean;
import com.shoes.bean.UsersBean;
import com.shoes.utils.DButils;

public class OrdersImpl implements OrdersDao {

	@Override
	public boolean addOrders(OrdersBean Orders,OrdersItemBean ordersItem) {
		String sql1 = " insert into orders (ouserid,ordersitemid,orderstate,orderstime,orderaddress,orderphone) values (?,?,?,?,?,?) ";
		String sql2 = " insert into ordersitem ( ordersitemid,oiproductid,oiproductnum ) values ( ?,?,? ) ";
		int num1=0,num2 = 0;
    	Connection con = null;
    	PreparedStatement ps1 = null;
		try {
			con = DButils.getConnection();
			con.setAutoCommit(false);
			ps1 = con.prepareStatement(sql1);
			ps1.setObject(1, Orders.getOuserId());
			ps1.setObject(2, Orders.getOrdersItemId());
			ps1.setObject(3, Orders.getOrderstate());
			ps1.setObject(4, Orders.getOrderstime());
			ps1.setObject(5, Orders.getOrderaddress());
			ps1.setObject(6, Orders.getOrderphone());
			num1 = ps1.executeUpdate();
			
			ps1 = con.prepareStatement(sql2);
			ps1.setObject(1, ordersItem.getOrdersItemId());
			ps1.setObject(2, ordersItem.getOiProductId());
			ps1.setObject(3, ordersItem.getOiProductNum());
			num2 = ps1.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			
				try {
					con.rollback();
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
		}
		return (num1>0&&num2>0)?true:false;
	}

	@Override
	public boolean deleteOrders(OrdersBean Orders) {
		String sql = " delete from orders where ";
		int num = 0;
		return num>0?true:false;
	}

	@Override
	public List<OrdersBean> selectOrders(OrdersBean Orders) {
		OrdersBean ordersBean = new OrdersBean();
		String sql = " select * from orders where ouserid = ?";
		List<OrdersBean> list = DButils.executeQuery(sql, ordersBean, ordersBean.getOuserId());
		return list;
	}

	@Override
	public List<OrdersBean> selectByUser(UsersBean user) {
		OrdersBean ordersBean = new OrdersBean();
		String sql = "select * from orders where ouserid = ?";
		List<OrdersBean> list = DButils.executeQuery(sql, ordersBean, user.getUid());
		if(list==null||list.size()==0) return null;
		return list;
	}

	@Override
	public boolean addOrders(OrdersBean orders, List<OrdersItemBean> orderitems) {
		String sql1 = " insert into orders (ouserid,ordersitemid,orderstate,orderstime,orderaddress,orderphone) values (?,?,?,?,?,?) ";
		String sql2 = " insert into ordersitem ( ordersitemid,oiproductid,oiproductnum ) values ( ?,?,? ) ";
		int num1=0,num2[] = new int[orderitems.size()];
    	Connection con = null;
    	PreparedStatement ps1 = null;
		try {
			con = DButils.getConnection();
			con.setAutoCommit(false);
			ps1 = con.prepareStatement(sql1);
			ps1.setObject(1, orders.getOuserId());
			ps1.setObject(2, orders.getOrdersItemId());
			ps1.setObject(3, orders.getOrderstate());
			ps1.setObject(4, orders.getOrderstime());
			ps1.setObject(5, orders.getOrderaddress());
			ps1.setObject(6, orders.getOrderphone());
			num1 = ps1.executeUpdate();
			ps1 = con.prepareStatement(sql2);
			for (OrdersItemBean ordersItemBean : orderitems) {
				ps1.setObject(1, ordersItemBean.getOrdersItemId());
				ps1.setObject(2, ordersItemBean.getOiProductId());
				ps1.setObject(3, ordersItemBean.getOiProductNum());
				ps1.addBatch();
			}
			
			
			num2 = ps1.executeBatch();
			con.commit();
		} catch (SQLException e) {
			
				try {
					con.rollback();
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
		}
		for (int i : num2) {
			if(num2[i]==0) return false;
		}
		return (num1>0)?true:false;
	}

}
