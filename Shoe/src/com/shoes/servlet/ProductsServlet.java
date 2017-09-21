package com.shoes.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.bean.HeadShowBean;
import com.shoes.bean.ProductsBean;
import com.shoes.bean.UsersBean;
import com.shoes.service.ProductsService;
import com.shoes.utils.FileUpLoad;
import com.shoes.utils.Page;


@WebServlet("/ProductsServlet")
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsService product = new ProductsService();
       
    
    public ProductsServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		String ident = request.getParameter("ident");
		
		List<HeadShowBean> productsColor = product.selectAllColor();
		List<HeadShowBean> productsSize = product.selectAllSize();
		List<HeadShowBean> productsPrice = product.selectAllPrice();
		
        request.setAttribute("infocolor", productsColor);
        request.setAttribute("infosize", productsSize);
        request.setAttribute("infoprice", productsPrice);
        
        if( ident == null || ident.equals("")) findAll(request, response);
        else if( ident.equals("type") ) findByType(request, response);
		else if( ident.equals( "color" )) findByColor(request, response);
		else if( ident.equals( "size" ) ) findBySize(request, response);
		else if( ident.equals( "price" )) findByPrice(request, response);
		else if( ident.equals("finaAll")) findAll(request, response);
		else if( ident.equals("findOne")) findOne(request, response); 
        request.getRequestDispatcher("products.jsp").forward(request, response);
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
		Page<ProductsBean> page = product.selectAllProducts(pagenum,8);
		List<ProductsBean> list1 = product.selectBanner(1);
		List<ProductsBean> list2 = product.selectBanner(2);
		List<ProductsBean> list3 = product.selectBanner(3);
        request.setAttribute("info", page);
        request.setAttribute("banner", list1);
        request.setAttribute("top", list2);
        request.setAttribute("bottom", list3);
        //System.out.println("下一页"+page.getNextPage());
		
	}
	
	//根据类型查询鞋子
		protected void findByType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String type = request.getParameter("types");
			List<ProductsBean> products = product.selectByType( type );

	        request.setAttribute("info", products);
		}
		 
		//根据颜色查询鞋子
		protected void findByColor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String color = request.getParameter("colors");
			List<ProductsBean> products = product.selectByColor( color );
			
	        request.setAttribute("info", products);
		}
		
		//根据鞋码查询鞋子
		protected void findBySize(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String size = request.getParameter("sizes");
			List<ProductsBean> products = product.selectBySize( size );    

	        request.setAttribute("info", products);
		}
		
		//根据价格查询鞋子
		protected void findByPrice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String price = request.getParameter("prices");
			List<ProductsBean> products = product.selectByPrice( price );

	        request.setAttribute("info", products);
		}
}






