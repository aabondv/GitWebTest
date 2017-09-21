package com.shoes.bean;

import java.util.List;

public class OrdersItemBean {
	private long ordersItemId;
	private int oid;
	private int oiProductId;
	private int oiProductNum;
	private ProductsBean pBeans;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	
	public long getOrdersItemId() {
		return ordersItemId;
	}
	public void setOrdersItemId(long ordersItemId) {
		this.ordersItemId = ordersItemId;
	}
	public int getOiProductId() {
		return oiProductId;
	}
	public void setOiProductId(int oiProductId) {
		this.oiProductId = oiProductId;
	}
	public int getOiProductNum() {
		return oiProductNum;
	}
	public void setOiProductNum(int oiProductNum) {
		this.oiProductNum = oiProductNum;
	}
	public ProductsBean getpBeans() {
		return pBeans;
	}
	public void setpBeans(ProductsBean pBeans) {
		this.pBeans = pBeans;
	}
	
}
