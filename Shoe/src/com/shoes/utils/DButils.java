package com.shoes.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;
import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DButils {
	private static DataSource dataSource = new ComboPooledDataSource();
	/** 
     * 它为null表示没有事务 
     * 它不为null表示有事务 
     * 当开启事务时，需要给它赋值 
     * 当结束事务时，需要给它赋值为null 
     * 并且在开启事务时，让dao的多个方法共享这个Connection 
     */  
    private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>();  
      
    public static DataSource getDataSource() {  
        return dataSource;  
    }  
      
    /** 
     * dao使用本方法来获取连接 
     * @return 
     * @throws SQLException 
     */  
    public static Connection getConnection() throws SQLException {  
        /* 
         * 如果有事务，返回当前事务的con 
         * 如果没有事务，通过连接池返回新的con 
         */  
        Connection con = tl.get();//获取当前线程的事务连接  
        if(con != null) return con;  
        return dataSource.getConnection();  
    }  
      
    /** 
     * 开启事务 
     * @throws SQLException  
     */  
    public static void beginTransaction() throws SQLException {  
        Connection con = tl.get();//获取当前线程的事务连接  
        if(con != null) throw new SQLException("已经开启了事务，不能重复开启！");  
        con = dataSource.getConnection();//给con赋值，表示开启了事务  
        con.setAutoCommit(false);//设置为手动提交  
        tl.set(con);//把当前事务连接放到tl中  
    }  
      
    /** 
     * 提交事务 
     * @throws SQLException  
     */  
    public static void commitTransaction() throws SQLException {  
        Connection con = tl.get();//获取当前线程的事务连接  
        if(con == null) throw new SQLException("没有事务不能提交！");  
        con.commit();//提交事务  
        con.close();//关闭连接  
        con = null;//表示事务结束！  
        tl.remove();  
    }  
      
    /** 
     * 回滚事务 
     * @throws SQLException  
     */  
    public static void rollbackTransaction() throws SQLException {  
        Connection con = tl.get();//获取当前线程的事务连接  
        if(con == null) throw new SQLException("没有事务不能回滚！");  
        con.rollback();  
        con.close();  
        con = null;  
        tl.remove();  
    }  
      
    /** 
     * 释放Connection 
     * @param con 
     * @throws SQLException  
     */  
    public static void releaseConnection(Connection connection) throws SQLException {  
        Connection con = tl.get();//获取当前线程的事务连接  
        if(connection != con) {//如果参数连接，与当前事务连接不同，说明这个连接不是当前事务，可以关闭！  
            if(connection != null &&!connection.isClosed()) {//如果参数连接没有关闭，关闭之！  
                connection.close();  
            }  
        }  
    }  
    
    public static int executeUpdate(String sql,Object...params){
    	int num = 0;
    	Connection con = null;
    	PreparedStatement ps = null;
    	
    	try {
			con = getConnection();
			ps = con.prepareStatement(sql);
			if(params!=null){
				for(int i=0;i<params.length;i++){
					ps.setObject(i+1, params[i]);
				}
			}
			num = ps.executeUpdate();	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
    	return num;
    }
    
    
    
    public static <T> List<T> executeQuery(String sql,T t,Object...params){
    	List<T> list = new ArrayList<>();
    	Connection con = null;
    	PreparedStatement ps = null;
    	ResultSet rs = null;
    	Result result = null;
    	try {
			con = getConnection();
			ps = con.prepareStatement(sql);
			if(params!=null){
				for(int i=0;i<params.length;i++){
					ps.setObject(i+1, params[i]);
				}
			}
			rs = ps.executeQuery();	
			/*if(rs.next()) */result = ResultSupport.toResult(rs);
			/*else return null;*/
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				ps.close();
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
    	ServletUtils<T> sutitl = new ServletUtils<>();
    	list = sutitl.getBean(t, result);
    	return list;
    }
    public static Object executeQueryInt(String sql,Object...params){
    	
    	Connection con = null;
    	PreparedStatement ps = null;
    	ResultSet rs = null;
    	Result result = null;
    	Object num = null;
    	try {
			con = getConnection();
			ps = con.prepareStatement(sql);
			if(params!=null){
				for(int i=0;i<params.length;i++){
					ps.setObject(i+1, params[i]);
				}
			}
			rs = ps.executeQuery();	
			if(rs.next())  num=rs.getObject(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				ps.close();
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
    	return num;
    }
}  

