package com.shoes.Dao;

import java.util.List;

import com.shoes.bean.CartBean;

public interface CartDao {
	public boolean addCart( CartBean cart );
	public boolean deleteCart( CartBean cart );
	public CartBean selectCart( CartBean cart );

}
