package com.shoes.bean;

public class UserCartBean {
	private String picUrl;
	private String pdName;
	private int singlePrice;
	private int itemNum;
	private int totalPrice;
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public int getSinglePrice() {
		return singlePrice;
	}
	public void setSinglePrice(int singlePrice) {
		this.singlePrice = singlePrice;
	}
	public int getItemNum() {
		return itemNum;
	}
	public void setItemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
}
