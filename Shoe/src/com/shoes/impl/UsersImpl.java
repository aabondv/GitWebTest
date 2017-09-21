package com.shoes.impl;

import java.util.List;

import com.shoes.Dao.UsersDao;
import com.shoes.bean.UsersBean;
import com.shoes.utils.DButils;

public class UsersImpl implements UsersDao {

	@Override
	public boolean addUsers(UsersBean users) {
		String sql = " insert into users (username, upassword,urealname,uaddress,utelephone,uheadimages) values (?,?,?,?,?,?) ";
		int num =DButils.executeUpdate(sql, users.getUserName(),users.getUpassword(),users.getUrealname(),users.getUaddress(),users.getUtelephone(),users.getUheadImages());
		return num>0?true:false;
	}
	@Override
	public List<UsersBean> selectUsers(UsersBean users) {
		String sql="";
		List<UsersBean> list = null;
		if(users==null) {
			sql = " select * from users ";
			list = DButils.executeQuery(sql,new UsersBean());
		}
		else {
			sql = " select * from users where username = ? and upassword = ?"; 
			list = DButils.executeQuery(sql, new UsersBean(),users.getUserName(),users.getUpassword());
		}
		if(list!=null) return list;
		else return null;
	}

	@Override
	public boolean existUsers(UsersBean users) {
		String sql = "select * from users where username = ?";
		List<UsersBean> list = DButils.executeQuery(sql, new UsersBean(), users.getUserName());
		if(list==null) 
			return false;
		else if(list.size()==0){
			return false;
		}else return true;
	
	}

}
