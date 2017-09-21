package com.shoes.impl;

import java.sql.SQLException;
import java.util.List;

import com.shoes.Dao.CartDao;
import com.shoes.bean.CartBean;
import com.shoes.utils.DButils;

public class CartImpl implements CartDao {

	@Override
	public boolean addCart(CartBean cart) {
		String sql = " Insert into cart (userid,cartitemid) values (?,?) ";
		int num =DButils.executeUpdate(sql, cart.getUserId(),cart.getCartItemId());
		return num>0?true:false;
	}
	@Override
	public boolean deleteCart(CartBean cart) {
		String sql = " delete from cart where  "; 
		int num = 0;
		return num>0?true:false;
	}

	@Override
	public CartBean selectCart(CartBean cart) {
		String sql = " select * from cart where  userid = ?"; 
		List<CartBean> list = DButils.executeQuery(sql, cart, cart.getUserId());
		if(list==null||list.size()==0) return null;
		else cart = list.get(0);
		return cart;
	}
}
