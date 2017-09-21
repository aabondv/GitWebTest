package com.shoes.bean;

import java.util.List;

public class OrdersBean {
	private int ordersId;
	private int ouserId;
	private long ordersItemId;
	private String orderstime;
	private String orderstate;
	private String orderaddress;
	private int orderphone;
	private String orderperson;
	private int itemsnum;
	private double price;
	private List<OrdersItemBean> ordersItemList;
	public int getOrdersId() {
		return ordersId;
	}
	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
	}
	public int getOuserId() {
		return ouserId;
	}
	public void setOuserId(int ouserId) {
		this.ouserId = ouserId;
	}
	
	public long getOrdersItemId() {
		return ordersItemId;
	}
	public void setOrdersItemId(long ordersItemId) {
		this.ordersItemId = ordersItemId;
	}
	public List<OrdersItemBean> getOrdersItemList() {
		return ordersItemList;
	}
	public void setOrdersItemList(List<OrdersItemBean> ordersItemList) {
		this.ordersItemList = ordersItemList;
	}
	public String getOrderstime() {
		return orderstime;
	}
	public void setOrderstime(String orderstime) {
		this.orderstime = orderstime;
	}
	public String getOrderstate() {
		return orderstate;
	}
	public void setOrderstate(String orderstate) {
		this.orderstate = orderstate;
	}
	public int getItemsnum() {
		return itemsnum;
	}
	public void setItemsnum(int itemsnum) {
		this.itemsnum = itemsnum;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getOrderaddress() {
		return orderaddress;
	}
	public void setOrderaddress(String orderaddress) {
		this.orderaddress = orderaddress;
	}
	public int getOrderphone() {
		return orderphone;
	}
	public void setOrderphone(int orderphone) {
		this.orderphone = orderphone;
	}
	public String getOrderperson() {
		return orderperson;
	}
	public void setOrderperson(String orderperson) {
		this.orderperson = orderperson;
	}
	
}
