package com.shoes.service;

import java.util.List;

import com.shoes.Dao.CartItemDao;
import com.shoes.Dao.ProductsDao;
import com.shoes.bean.CartItemBean;
import com.shoes.bean.ProductsBean;
import com.shoes.impl.CartItemImpl;
import com.shoes.impl.ProductsImpl;

public class CartItemService {
	CartItemDao cartItemDao = new CartItemImpl();
	ProductsDao productsDao = new ProductsImpl();
	public List<CartItemBean> selectAllCartitem(CartItemBean cibean){
		List<CartItemBean> list =cartItemDao.selectCartItem(cibean);
		for (CartItemBean cartItemBean : list) {
			ProductsBean pb = new ProductsBean();
			pb.setShoesId(cartItemBean.getCproductId());
			pb=productsDao.selectProducts(pb);
			cartItemBean.setShoes(pb);
			cartItemBean.setSumprice(cartItemBean.getCshoesNumber()*pb.getShoesoldPrice());
		}
		return list;
	}
}
