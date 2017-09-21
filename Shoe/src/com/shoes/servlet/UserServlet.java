package com.shoes.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.shoes.bean.UsersBean;
import com.shoes.service.UsersService;
import com.shoes.utils.FileUpLoad;
import com.shoes.utils.ServletUtils;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsersService usersService = new UsersService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("usermethod");
		if(method.equals("reg")) register(request, response);
		else if(method.equals("namerepeat")) namerepeat(request, response);
		else if(method.equals("login")) login(request, response);
		else if(method.equals("quit")) quit(request, response);
	}
	protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		UsersBean usersBean = new UsersBean();
		FileUpLoad.upFile(request, usersBean);
		if(usersService.addUsers(usersBean)){
			System.out.println("success");
			//request.setAttribute("info", "注册成功！！！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			System.out.println("error");
			request.setAttribute("info", "注册失败！！！");
			request.getRequestDispatcher("account.jsp").forward(request, response);
		}
		System.out.println(usersBean);
	}
	protected void namerepeat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		//System.out.println(name);
		UsersBean usersBean = new UsersBean();
		Map map = new HashMap<>();
		usersBean.setUserName(name);
		if(usersService.checkUsername(usersBean)){
			map.put("existName","true");
		}else{
			map.put("existName", "false");
		}
		//System.out.println(JSON.toJSONString(map));
		response.getWriter().print(JSON.toJSONString(map));
	}
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("userName");
		String password = request.getParameter("upassword");
		UsersBean usersBean = new UsersBean();
		usersBean.setUserName(username);
		//System.out.println("userservlet:"+username+":"+password);
		usersBean.setUpassword(password);
		List<UsersBean> userlist = usersService.selectUsers(usersBean);
		if(userlist.isEmpty()||userlist.size()==0){
			request.setAttribute("msg", "登录失败");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("user", userlist.get(0));
			request.setAttribute("msg", "登陆成功");
			//System.out.println("product 1");
			request.getRequestDispatcher("InitServlet").forward(request, response);;
		}
		
	}
	protected void quit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("user");
		response.sendRedirect("InitServlet");
	}
}
