package com.shoes.bean;

public class UsersBean {
	private int uid;
	private String userName;
	private String upassword;
	private String urealname;
	private String uaddress;
	private long utelephone;
	private String uheadImages;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUrealname() {
		return urealname;
	}
	public void setUrealname(String urealname) {
		this.urealname = urealname;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	
	public long getUtelephone() {
		return utelephone;
	}
	public void setUtelephone(long utelephone) {
		this.utelephone = utelephone;
	}
	public String getUheadImages() {
		return uheadImages;
	}
	public void setUheadImages(String uheadImages) {
		this.uheadImages = uheadImages;
	}
	public UsersBean(int uid, String userName, String upassword, String urealname, String uaddress, int utelephone,
			String uheadImages) {
		super();
		this.uid = uid;
		this.userName = userName;
		this.upassword = upassword;
		this.urealname = urealname;
		this.uaddress = uaddress;
		this.utelephone = utelephone;
		this.uheadImages = uheadImages;
	}
	public UsersBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UsersBean [uid=" + uid + ", userName=" + userName + ", upassword=" + upassword + ", urealname="
				+ urealname + ", uaddress=" + uaddress + ", utelephone=" + utelephone + ", uheadImages=" + uheadImages
				+ "]";
	}
	
}
