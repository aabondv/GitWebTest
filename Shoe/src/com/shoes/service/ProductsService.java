package com.shoes.service;

import java.util.List;

import com.shoes.Dao.HeadShowDao;
import com.shoes.Dao.ProductsDao;
import com.shoes.bean.HeadShowBean;
import com.shoes.bean.ProductsBean;
import com.shoes.impl.ProductsImpl;
import com.shoes.utils.Page;

public class ProductsService {
	private ProductsDao product  = new ProductsImpl();
	private HeadShowDao products  = new ProductsImpl();
	public Page<ProductsBean> selectAllProducts(int currentPage,int everyPageRecord){
		int currentRecord = (currentPage-1)*everyPageRecord;
		int totalRecords = product.selectCounts();
		List<ProductsBean> list = product.selectAllProducts(currentRecord, everyPageRecord);
		Page<ProductsBean> page = new Page<>(currentPage, totalRecords, everyPageRecord, list);
		return page;
	}
	public ProductsBean selectOneProducts(ProductsBean productsBean){
		return product.selectProducts(productsBean);
	}
	public List<ProductsBean> selectBanner(int level){
		return product.selectBanner(level);
	}
	public List<HeadShowBean> selectAllColor(){
		return products.selectAllColor();
	}
	public List<HeadShowBean> selectAllSize(){
		return products.selectAllSize();
	}
	public List<HeadShowBean> selectAllPrice(){
		return products.selectAllPrice();
	}
	public List<ProductsBean> selectByType( String type ){
		return product.selectByType( type );
	}
	public List<ProductsBean> selectByColor( String color ){
		return product.selectByType( color );
	}
	public List<ProductsBean> selectBySize( String size ){
		return product.selectByType( size );
	}
	public List<ProductsBean> selectByPrice( String price ){
		return product.selectByType( price );
	}
	
}
