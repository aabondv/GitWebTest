package com.shoes.service;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import com.shoes.Dao.UsersDao;
import com.shoes.bean.CartBean;
import com.shoes.bean.UsersBean;
import com.shoes.impl.CartImpl;
import com.shoes.impl.UsersImpl;
import com.shoes.utils.MD5utils;

public class UsersService {
	UsersImpl usersImpl = new UsersImpl();
	public boolean checkUsername(UsersBean user){
		return usersImpl.existUsers(user);
	}
	public boolean addUsers( UsersBean users ){
		try {
			users.setUpassword(MD5utils.EncoderByMd5(users.getUpassword()));
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return usersImpl.addUsers(users);
	}
	public List<UsersBean> selectUsers(UsersBean users){
		try {
			users.setUpassword(MD5utils.EncoderByMd5(users.getUpassword()));
			//System.out.println(users.getUpassword());
			//System.out.println("userservice37行："+MD5utils.EncoderByMd5(users.getUpassword()));
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return usersImpl.selectUsers(users);
	}
}
