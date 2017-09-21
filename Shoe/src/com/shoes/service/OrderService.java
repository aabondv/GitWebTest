package com.shoes.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shoes.Dao.OrdersDao;
import com.shoes.Dao.OrdersItemDao;
import com.shoes.Dao.ProductsDao;
import com.shoes.bean.OrdersBean;
import com.shoes.bean.OrdersItemBean;
import com.shoes.bean.UsersBean;
import com.shoes.impl.OrdersImpl;
import com.shoes.impl.OrdersItemImpl;
import com.shoes.impl.ProductsImpl;
import com.shoes.utils.DButils;

public class OrderService {
	OrdersDao ordersdao = new OrdersImpl();
	OrdersItemDao ordersItemDao = new OrdersItemImpl();
	ProductsDao pDao = new ProductsImpl();
	
	public List<OrdersBean> getAllOrder(UsersBean user){
		List<OrdersBean> list = new ArrayList<>();
		list = ordersdao.selectByUser(user);
		if(list==null||list.size()==0) return null;
		for (OrdersBean ordersBean : list) {
			OrdersItemBean ordersItemBean = new OrdersItemBean();
			//ordersBean.setOrdersItemId(ordersBean.getOrdersItemId());
			ordersItemBean.setOrdersItemId(ordersBean.getOrdersItemId());
			List<OrdersItemBean> orderitemlist= ordersItemDao.selectOrdersItem(ordersItemBean);
			int num = 0;
			int totalnum = 0;
			double price = 0.0;
			double totalprice = 0.0;
			for (OrdersItemBean ordersItemBean2 : orderitemlist) {
				num=ordersItemBean2.getOiProductNum();
				price=pDao.getPrice(ordersItemBean2.getOiProductId());
				totalnum+=num;
				totalprice+=price*num;
			}
			ordersBean.setItemsnum(totalnum);
			ordersBean.setPrice(totalprice);
			ordersBean.setOrdersItemList(orderitemlist);
		}
		return list;
	}
	public boolean addOrder(OrdersBean obean,OrdersItemBean oItemBean) throws SQLException{
		
		return ordersdao.addOrders(obean, oItemBean);
	}
	public boolean addOrderByCart(OrdersBean obean,List<Integer> productid,List<Integer> num){
		List<OrdersItemBean> list = new ArrayList<>();
		long orderitemid = System.currentTimeMillis();
		obean.setOrdersItemId(orderitemid);
		for(int i=0;i<productid.size();i++){
			OrdersItemBean ordersItemBean = new OrdersItemBean();
			ordersItemBean.setOiProductId(productid.get(i));
			ordersItemBean.setOiProductNum(num.get(i));
			ordersItemBean.setOrdersItemId(orderitemid);
			list.add(ordersItemBean);
		}
		
		return ordersdao.addOrders(obean, list);
	}
}
