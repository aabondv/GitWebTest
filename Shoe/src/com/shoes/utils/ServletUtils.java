package com.shoes.utils;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.jstl.sql.Result;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


public class ServletUtils<T>{
	/**
	 * @Field @serialVersionUID : TODO(这个类用来封装实体类的注入)
	 */
	private static final long serialVersionUID = 1L;
	public <T> T setBean(T t,HttpServletRequest request) throws Exception, IllegalAccessException{
		//final String pattern = "yyyy-MM-dd HH:mm:ss";
		final String pattern = "yyyy-MM-dd";
		Class<?> classType = t.getClass();
		Field fields[] = classType.getDeclaredFields();
		for (Field field : fields) {
			String fieldname = field.getName();
			String firstLetter = fieldname.substring(0,1).toUpperCase();
			String setmethod = "set"+firstLetter+fieldname.substring(1);
			String getmethod = null;
			if(field.getType().getName().equals("boolean")){
				getmethod = "is"+firstLetter+fieldname.substring(1);
			}else{
				getmethod = "get"+firstLetter+fieldname.substring(1); 
			}
			String requestParams = request.getParameter(fieldname);
			if(requestParams == null) continue;
			Object params = requestParams;
			if(field.getType().equals(int.class)){
				params = Integer.parseInt(requestParams);
			}else if(field.getType().equals(float.class)){
				params = Float.parseFloat(requestParams);
			}else if(field.getType().equals(double.class)){
				params = Double.parseDouble(requestParams);
			}else if(field.getType().equals(char.class)){
				params = requestParams.charAt(0);
			}else if(field.getType().equals(long.class)){
				params = Long.parseLong(requestParams);
			}else if(field.getType().equals(Date.class)){
				SimpleDateFormat sf = new SimpleDateFormat(pattern);
				params = sf.parse(requestParams);
			}/*else if(field.getType().equals(List.class)){
				
			}else if(field.getType().equals(t.getClass())){
				
			}*/
			Method methodSet = classType.getMethod(setmethod, new Class[]{field.getType()});
			methodSet.invoke(t, new Object[]{params});
		}
		return t;
	}
	
	public List<T> getBean(T t,Result result){
		Class<?> classType = t.getClass();
		List<T> list = new ArrayList<>();
		List<String> getMethod = new ArrayList<>();
		List<String> setMethod = new ArrayList<>();
		Field fields[] = classType.getDeclaredFields();
		for (Field field : fields) {
			String fieldname = field.getName();
			String firstLetter = fieldname.substring(0,1).toUpperCase();
			String setmethod = "set"+firstLetter+fieldname.substring(1);
			setMethod.add(setmethod);
			String getmethod = null;
			if(field.getType().getName().equals("boolean")){
				getmethod = "is"+firstLetter+fieldname.substring(1);
			}else{
				getmethod = "get"+firstLetter+fieldname.substring(1); 
			}
			getMethod.add(getmethod);
		}
		try {
			//System.out.println(result.getRowCount());
			if(result!=null&&result.getRowCount()>0){
				for(int i=0;i<result.getRowCount();i++){
					Map map = result.getRows()[i];
					T t2 = (T) classType.newInstance();
					for(int j=0;j<fields.length;j++){
						if(map.get(fields[j].getName())!=null){
							Method setmethod = classType.getMethod(setMethod.get(j), new Class[]{fields[j].getType()});
							setmethod.invoke(t2, new Object[]{map.get(fields[j].getName())});
							//break;
						}
					}
					list.add(t2);
				}
			}
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} 
		return list;
	}
	
	
	
	public List<T> getBean(T t,ResultSet rs){
		Class<?> classType = t.getClass();
		List<T> list = new ArrayList<>();
		List<String> getMethod = new ArrayList<>();
		List<String> setMethod = new ArrayList<>();
		Field fields[] = classType.getDeclaredFields();
		for (Field field : fields) {
			String fieldname = field.getName();
			String firstLetter = fieldname.substring(0,1).toUpperCase();
			String setmethod = "set"+firstLetter+fieldname.substring(1);
			setMethod.add(setmethod);
			String getmethod = null;
			if(field.getType().getName().equals("boolean")){
				getmethod = "is"+firstLetter+fieldname.substring(1);
			}else{
				getmethod = "get"+firstLetter+fieldname.substring(1); 
			}
			getMethod.add(getmethod);
		}
		
		try {
			while(rs.next()){
				T t2 = (T) classType.newInstance();
				for(int i=0;i<fields.length;i++){
					
					if(rs.getObject(fields[i].getName())!=null){
						Method setmethod = classType.getMethod(setMethod.get(i), new Class[]{fields[i].getType()});
						setmethod.invoke(t2, new Object[]{rs.getObject(fields[i].getName())});
					}
				}
				list.add(t2);
			}
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		}
		return list;
	}
}
