package com.shoes.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.bean.CartBean;
import com.shoes.bean.CartItemBean;
import com.shoes.bean.UsersBean;
import com.shoes.service.CartItemService;
import com.shoes.service.CartService;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartItemService cartItemService = new CartItemService();
	CartService cartService = new CartService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("cartmethod");
		if(method==null||method.equals("")) findAllCart(request,response);
		else if(method.equals("selectCart")) selectCart(request,response);
	}

	private void selectCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UsersBean usersBean = (UsersBean) session.getAttribute("user");
		CartBean cartBean = new CartBean();
		cartBean.setUserId(usersBean.getUid());
		cartBean = cartService.selectCart(cartBean);
		if(cartBean == null) {
			response.sendRedirect("InitServlet");
			return;
		}
		CartItemBean cibean = new CartItemBean();
		cibean.setCartItemId(cartBean.getCartItemId());
		List<CartItemBean> list = cartItemService.selectAllCartitem(cibean);
		request.setAttribute("cartitem", list);
		request.getRequestDispatcher("checkout.jsp").forward(request, response);
	}

	private void findAllCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	}

}
