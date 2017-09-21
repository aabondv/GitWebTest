package com.shoes.Dao;

import java.util.List;

import com.shoes.bean.ProductsBean;

public interface ProductsDao {
	public ProductsBean selectProducts( ProductsBean product );
	public int selectCounts();
	public List<ProductsBean> selectBanner(int level);
	public List<ProductsBean> selectAllProducts(int currentRecord,int evetyPageRecord);
	public List<ProductsBean> selectByType(String type);
	public double getPrice(int id);
}
