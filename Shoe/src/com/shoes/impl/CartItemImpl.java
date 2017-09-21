package com.shoes.impl;

import java.util.List;

import com.shoes.Dao.CartItemDao;
import com.shoes.bean.CartItemBean;
import com.shoes.utils.DButils;

public class CartItemImpl implements CartItemDao {

	@Override
	public boolean addCartItem(CartItemBean cartItem) {
		String sql = " insert into cartitem ( cartitemid,cproductid,cshoesnumber ) values ( ?,?,? ) ";
		int num = DButils.executeUpdate(sql, cartItem.getCartItemId(),cartItem.getCproductId(),cartItem.getCshoesNumber());
		return num>0?true:false;
	}

	@Override
	public boolean deleteCartItem(CartItemBean cartItem) {
		String sql = " delete from cartitem where  "; 
		int num = 0;
		return num>0?true:false;
	}

	@Override
	public boolean updateCartItem(CartItemBean cartItem) {
		String sql = " update cartitem set cshoesnumber = '?' where cartitemid = ? "; //������ 
		int num = 0;
		return num>0?true:false;
	}

	@Override
	public List<CartItemBean> selectCartItem(CartItemBean cartItem) {
		String sql = " select * from cartitem where cartitemid = ?";
		
		return DButils.executeQuery(sql, cartItem, cartItem.getCartItemId());
	}

}
