package com.monancho.board.dao;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Incoding {
public String incoding (String searchKeyword) {
	
	try {
		
	//	byte[] bytes = searchKeyword.getBytes("UTF-8"); // 기존 문자열을 입력
	//	return new String(bytes, "UTF-8");// 인코딩 후 전달
		
		return URLEncoder.encode(searchKeyword, "UTF-8");
	}
	catch (UnsupportedEncodingException e) {
    e.printStackTrace();
    return null;
}
}
}
