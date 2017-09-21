package com.shoes.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class MD5utils {
	public static String  EncoderByMd5(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException{
		MessageDigest md5=MessageDigest.getInstance("MD5");
		BASE64Encoder base64en = new BASE64Encoder();
		String newstr=base64en.encode(md5.digest(str.getBytes("utf-8")));
		return newstr;
	}
	/*public static String  DecoderByMd5(String str) throws NoSuchAlgorithmException, IOException{
		MessageDigest md5=MessageDigest.getInstance("MD5");
		BASE64Decoder base64en = new BASE64Decoder();
		str = new String(base64en.decodeBuffer(str),"utf-8");
		return str;
	}*/
	
	public static void main(String[] args) throws NoSuchAlgorithmException, IOException {
		String password = EncoderByMd5("usersfads");
		System.out.println(password);
	}
}
