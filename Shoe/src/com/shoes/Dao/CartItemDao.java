package com.shoes.Dao;

import java.util.List;

import com.shoes.bean.CartItemBean;

public interface CartItemDao {
	public boolean addCartItem( CartItemBean cartItem );
	public boolean deleteCartItem( CartItemBean cartItem );
	public boolean updateCartItem( CartItemBean cartItem );
	public List<CartItemBean> selectCartItem( CartItemBean cartItem );
}
