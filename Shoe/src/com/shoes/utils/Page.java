package com.shoes.utils;

import java.util.List;

public class Page<T> {
	private int currentPage;//当前页
	private int totalPage;//总页数
	private int totalRecords;//总记录数
	private int everyPageRecods;//每页记录数
	private List<T> list;
	private int prePage;
	private int nextPage;
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getEveryPageRecods() {
		return everyPageRecods;
	}

	public void setEveryPageRecods(int everyPageRecods) {
		this.everyPageRecods = everyPageRecods;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getPrePage() {
		return prePage;
	}

	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public Page(int currentPage, int totalRecords, int everyPageRecods, List<T> list) {
		this.currentPage = currentPage;
		this.totalRecords = totalRecords;
		if(everyPageRecods<=0) this.everyPageRecods=10;
		else this.everyPageRecods = everyPageRecods;
		this.list = list;
		int num = totalRecords%everyPageRecods;
		int temp = totalRecords/everyPageRecods;
		this.totalPage= num==0?temp:temp+1;
		if(currentPage<=1) this.prePage = 1;
		else  this.prePage =this.currentPage-1;
		if(currentPage>=this.totalPage) this.nextPage=this.totalPage;
		else  this.nextPage = currentPage+1;
		
	}
	
	
}
