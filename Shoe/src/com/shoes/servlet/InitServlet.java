package com.shoes.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.bean.ProductsBean;
import com.shoes.service.ProductsService;
import com.shoes.utils.Page;

/**
 * Servlet implementation class InitServlet
 */
@WebServlet("/InitServlet")
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsService product = new ProductsService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		String method=request.getParameter("productsmethod");
		if(method==null||method=="") findAll(request, response);
		else if(method.equals("finaAll")) findAll(request, response);
		else if(method.equals("findOne")) findOne(request, response);
	}
	private void findOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productid = request.getParameter("productId");
		int id = Integer.parseInt(productid);
		ProductsBean pBean = new ProductsBean();
		pBean.setShoesId(id);
		ProductsBean pBean2 = product.selectOneProducts(pBean);
		request.setAttribute("oneProduct", pBean2);
		request.getRequestDispatcher("single.jsp").forward(request, response);;
	}
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageStr = request.getParameter("page");
		int pagenum = 1;
		if(pageStr==null||pageStr.equals("")) ;
		else pagenum = Integer.parseInt(pageStr);
		Page<ProductsBean> page = product.selectAllProducts(pagenum,100);
		List<ProductsBean> list1 = product.selectBanner(1);
		List<ProductsBean> list2 = product.selectBanner(2);
		List<ProductsBean> list3 = product.selectBanner(3);
        request.setAttribute("info", page);
        request.setAttribute("banner", list1);
        request.setAttribute("top", list2);
        request.setAttribute("bottom", list3);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
