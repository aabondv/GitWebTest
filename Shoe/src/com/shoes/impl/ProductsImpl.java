package com.shoes.impl;


import java.util.List;

import com.shoes.Dao.HeadShowDao;
import com.shoes.Dao.ProductsDao;
import com.shoes.bean.HeadShowBean;
import com.shoes.bean.ProductsBean;
import com.shoes.utils.DButils;

public class ProductsImpl  implements ProductsDao , HeadShowDao {

	 
	@Override
	public ProductsBean selectProducts(ProductsBean product) {
		ProductsBean pb = new ProductsBean();
		String sql = " select * from products where shoesid = ?"; 
		pb = DButils.executeQuery(sql, pb, product.getShoesId()).get(0);
		return pb;
	}
	
	@Override
	public List<ProductsBean> selectAllProducts(int currentRecord,int evetyPageRecord ) {
		ProductsBean pb = new ProductsBean() ;
		String sql = " select * from products limit ?,?";
		return DButils.executeQuery(sql, pb,currentRecord,evetyPageRecord);
	}

	@Override
	public int selectCounts() {
		String sql = " select count(*) from products";
		int num = Integer.parseInt(String.valueOf(DButils.executeQueryInt(sql)));
		return num;
	}

	@Override
	public List<ProductsBean> selectBanner(int level) {
		ProductsBean pb = new ProductsBean() ;
		String sql ="select * from products where shoesident = ?";
		return DButils.executeQuery(sql, pb,level);
	}
	
	@Override
	public List<HeadShowBean> selectAllColor() {
		HeadShowBean pb = new HeadShowBean() ;
        String sql = " SELECT shoescolor , SUM(shoescount) shoescount FROM products GROUP BY shoescolor ";
		return DButils.executeQuery(sql, pb);
	}
	
	@Override
	public List<HeadShowBean> selectAllSize() {
		HeadShowBean pb = new HeadShowBean() ;
		String sql = " SELECT shoessize , SUM(shoescount) shoescount FROM products GROUP BY shoessize ";
		return DButils.executeQuery(sql, pb);
	}
	
	@Override
	public List<HeadShowBean> selectAllPrice() {
		HeadShowBean pb = new HeadShowBean() ;
		String sql = " SELECT shoesprice , SUM(shoescount) shoescount FROM products GROUP BY shoesprice ";
		return DButils.executeQuery(sql, pb);
	}

	@Override
	public List<ProductsBean> selectByType(String type) {
		ProductsBean pb = new ProductsBean() ;
		String sql = " select * from products where shoestype = ? ";
		return DButils.executeQuery(sql, pb , type);
	}

	@Override
	public double getPrice(int id) {
		String sql = "select shoesprice from products where shoesid = ?";
		return (double)DButils.executeQueryInt(sql, id);
	}

}
