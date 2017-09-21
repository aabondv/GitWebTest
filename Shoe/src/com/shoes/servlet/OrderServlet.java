package com.shoes.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.bean.OrdersBean;
import com.shoes.bean.OrdersItemBean;
import com.shoes.bean.ProductsBean;
import com.shoes.bean.UsersBean;
import com.shoes.service.OrderItemService;
import com.shoes.service.OrderService;
import com.shoes.service.ProductsService;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderService orderService = new OrderService();
	ProductsService pService = new ProductsService();
	OrderItemService orderItemService = new OrderItemService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}//OrderServlet?ordermethod=AddOrderByCart
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		String method=request.getParameter("ordermethod");
		if(method==null||method=="") defaultmethod(request, response);
		else if(method.equals("findAll")) findAll(request, response);
		else if(method.equals("findOne")) findOne(request, response);
		else if(method.equals("AddOrderByOne")) AddOrderOne(request, response);
		else if(method.equals("toAddone")) toAdd(request,response);
		else if(method.equals("AddOrderByCart")) addBycart(request,response);
		
	}
	//需要获得购物车
	private void addBycart(HttpServletRequest request, HttpServletResponse response) {
		String productid[] = request.getParameterValues("product");
		String num[] = request.getParameterValues("num");
		String address = request.getParameter("address");
		String telphone = request.getParameter("tel");
		/*String productid[] = {"4","5"};
		String num[] = {"1","1"};
		String address = "张家湾";
		String telphone = "1234";*/
		List<Integer> Listproductid = new ArrayList<>();
		List<Integer> Listnum = new ArrayList<>();
		for (String string : productid) {
			Listproductid.add(Integer.parseInt(string));
		}
		for (String  id : num) {
			Listnum.add(Integer.parseInt(id));
		}
		HttpSession session = request.getSession();
		UsersBean usersBean = (UsersBean) session.getAttribute("user");
		OrdersBean ordersBean = new OrdersBean();
		ordersBean.setOuserId(usersBean.getUid());
		ordersBean.setOrderstate("已付款");
		String date = new Date().toLocaleString();
		ordersBean.setOrderstime(date);
		
		int tel = Integer.parseInt(telphone);
		ordersBean.setOrderaddress(address);
		ordersBean.setOrderphone(tel);
		boolean b = orderService.addOrderByCart(ordersBean, Listproductid, Listnum);
		System.out.println(b);
	}
	private void toAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String shoesid = request.getParameter("shoesid");
		int id = Integer.parseInt(shoesid);
		ProductsBean pBean = new ProductsBean();
		pBean.setShoesId(id);
		pBean = pService.selectOneProducts(pBean);
		request.getSession().setAttribute("shoes",pBean);
		request.getSession().setAttribute("num", request.getParameter("num"));
		response.sendRedirect("AddOrder.jsp");
	}
	private void AddOrderOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		UsersBean user = (UsersBean) session.getAttribute("user");
		ProductsBean pBean = (ProductsBean)session.getAttribute("shoes");
		String pnum = (String) session.getAttribute("num");
		String address = request.getParameter("address");
		String telphone = request.getParameter("tel");
		int tel = Integer.parseInt(telphone);
		int num = Integer.parseInt(pnum);
		long ordritemid = System.currentTimeMillis();
		OrdersItemBean oItemBean = new OrdersItemBean();
		oItemBean.setOiProductId(pBean.getShoesId());
		oItemBean.setOiProductNum(num);
		oItemBean.setOrdersItemId(ordritemid);
		OrdersBean ordersBean = new OrdersBean();
		ordersBean.setOuserId(user.getUid());
		ordersBean.setOrdersItemId(ordritemid);
		ordersBean.setOrderaddress(address);
		ordersBean.setOrderphone(tel);
		ordersBean.setOrderstate("已付款");
		String date = new Date().toLocaleString();
		ordersBean.setOrderstime(date);
		try {
			if(orderService.addOrder(ordersBean, oItemBean))
			{
				session.setAttribute("shoes", null);
				session.setAttribute("num", null);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("OrderServlet");
		
	}
	protected void defaultmethod(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("InitServlet");
	}
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uid = 0;
		UsersBean usersBean = (UsersBean) request.getSession().getAttribute("user");
		if(usersBean.getUid()!=0) uid = usersBean.getUid();
		else {
			String userid = request.getParameter("userid");
			if(userid==null||userid.equals("")) response.sendRedirect("InitServlet");
			uid = Integer.parseInt(userid);
		}
		usersBean.setUid(uid);
		List<OrdersBean> orderlist = orderService.getAllOrder(usersBean);
		if(orderlist==null||orderlist.size()==0)request.setAttribute("order",null);
		else request.setAttribute("order", orderlist);
		request.getRequestDispatcher("order.jsp").forward(request, response);
	}
	protected void findOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderitemid = request.getParameter("orderitemid");
		if(orderitemid==null||orderitemid.equals("")) response.sendRedirect("InitServlet");
		long oitemid = Long.parseLong(orderitemid);
		OrdersItemBean oItemBean = new OrdersItemBean();
		oItemBean.setOrdersItemId(oitemid);
		List<OrdersItemBean> osList = orderItemService.selectOrderItems(oItemBean);
		request.setAttribute("orderitem", osList);
		request.getRequestDispatcher("orderitem.jsp").forward(request, response);
		
	}

}
