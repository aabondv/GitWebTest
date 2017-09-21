package com.shoes.bean;

public class CartBean {
	private int cartId;
	private int userId;
	private int cartItemId;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public CartBean(int cartId, int userId, int cartItemId) {
		super();
		this.cartId = cartId;
		this.userId = userId;
		this.cartItemId = cartItemId;
	}
	public CartBean() {
		super();
	}
	
}
