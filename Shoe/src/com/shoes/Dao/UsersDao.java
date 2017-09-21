package com.shoes.Dao;

import java.util.List;

import com.shoes.bean.UsersBean;

public interface UsersDao {
	public boolean addUsers( UsersBean users );
	public List<UsersBean> selectUsers( UsersBean users );
	public boolean existUsers( UsersBean users );
	
}
