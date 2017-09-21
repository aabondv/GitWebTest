package com.shoes.Dao;

import java.util.List;

import com.shoes.bean.HeadShowBean;

public interface HeadShowDao {
	public List<HeadShowBean> selectAllColor();
	public List<HeadShowBean> selectAllSize();
	public List<HeadShowBean> selectAllPrice();
}
