package com.shoes.bean;

public class HeadShowBean {

	private String shoesColor;
	private int shoesSize;
	private double shoesPrice;
	private int shoesCount;
	
	
	public double getShoesPrice() {
		return shoesPrice;
	}
	public void setShoesPrice(double shoesPrice) {
		this.shoesPrice = shoesPrice;
	}
	public int getShoesSize() {
		return shoesSize;
	}
	public void setShoesSize(int shoesSize) {
		this.shoesSize = shoesSize;
	}
	public String getShoesColor() {
		return shoesColor;
	}
	public void setShoesColor(String shoesColor) {
		this.shoesColor = shoesColor;
	}
	public int getShoesCount() {
		return shoesCount;
	}
	public void setShoesCount(int shoesCount) {
		this.shoesCount = shoesCount;
	}
	
	
	public HeadShowBean(double shoesPrice, int shoesSize, String shoesColor, int shoesCount) {
		super();
		this.shoesPrice = shoesPrice;
		this.shoesSize = shoesSize;
		this.shoesColor = shoesColor;
		this.shoesCount = shoesCount;
	}
	public HeadShowBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
