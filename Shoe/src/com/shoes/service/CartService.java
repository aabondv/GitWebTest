package com.shoes.service;

import com.shoes.Dao.CartDao;
import com.shoes.Dao.CartItemDao;
import com.shoes.bean.CartBean;
import com.shoes.bean.CartItemBean;
import com.shoes.impl.CartImpl;
import com.shoes.impl.CartItemImpl;

public class CartService {
	CartDao cartDao = new CartImpl();
	CartItemDao cartItemDao = new CartItemImpl();
	public CartBean selectCart(CartBean cart){
		return cartDao.selectCart(cart);
	}
	public boolean addCart(CartBean cartBean,CartItemBean cartItembean){
		
		if(cartDao.addCart(cartBean)){
			if(cartItemDao.addCartItem(cartItembean))
				return true;
		}
		return false;
	}
}
