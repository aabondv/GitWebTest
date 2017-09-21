package com.shoes.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.Dao.CartDao;
import com.shoes.Dao.CartItemDao;
import com.shoes.bean.UsersBean;
import com.shoes.impl.CartImpl;
import com.shoes.impl.CartItemImpl;

/**
 * Servlet implementation class CartItemServlet
 */
@WebServlet("/CartItemServlet")
public class CartItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		String event = request.getParameter("event");
		
		
		
	}
	
	protected void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDao cd = new CartImpl();
		UsersBean ub =(UsersBean)request.getSession().getAttribute("user");
		
		CartItemDao cid= new CartItemImpl();
		
		
		
	}
	
	
	protected void deleteItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		
	}
	
	
	
}
