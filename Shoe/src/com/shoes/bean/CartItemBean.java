package com.shoes.bean;

public class CartItemBean {
	private int id;
	private int cproductId;
	private int cartItemId;
	private int cshoesNumber;
	private ProductsBean shoes;
	private double sumprice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCproductId() {
		return cproductId;
	}
	public void setCproductId(int cproductId) {
		this.cproductId = cproductId;
	}
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public int getCshoesNumber() {
		return cshoesNumber;
	}
	public void setCshoesNumber(int cshoesNumber) {
		this.cshoesNumber = cshoesNumber;
	}
	
	public ProductsBean getShoes() {
		return shoes;
	}
	public void setShoes(ProductsBean shoes) {
		this.shoes = shoes;
	}
	public CartItemBean(int id, int cproductId, int cartItemId, int cshoesNumber) {
		super();
		this.id = id;
		this.cproductId = cproductId;
		this.cartItemId = cartItemId;
		this.cshoesNumber = cshoesNumber;
	}
	public CartItemBean() {
		super();
	}
	public double getSumprice() {
		return sumprice;
	}
	public void setSumprice(double sumprice) {
		this.sumprice = sumprice;
	}
	
	
	
}
