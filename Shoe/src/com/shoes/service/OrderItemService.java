package com.shoes.service;

import java.util.List;

import com.shoes.Dao.OrdersItemDao;
import com.shoes.Dao.ProductsDao;
import com.shoes.bean.OrdersItemBean;
import com.shoes.bean.ProductsBean;
import com.shoes.impl.OrdersItemImpl;
import com.shoes.impl.ProductsImpl;

public class OrderItemService {
	OrdersItemDao ordersItemdao = new OrdersItemImpl();
	ProductsDao productsDao = new ProductsImpl();
	
	public List<OrdersItemBean> selectOrderItems(OrdersItemBean ordersItem){
		List<OrdersItemBean> list =ordersItemdao.selectOrdersItem(ordersItem);
		for (OrdersItemBean ordersItemBean : list) {
			ProductsBean pb = new ProductsBean();
			pb.setShoesId(ordersItemBean.getOiProductId());
			pb = productsDao.selectProducts(pb);
			ordersItemBean.setpBeans(pb);
		}
		return list;
	}
}
