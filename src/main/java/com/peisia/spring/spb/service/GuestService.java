package com.peisia.spring.spb.service;

import java.util.List;

import com.peisia.spring.spb.domain.GuestVO;
import com.peisia.spring.spb.domain.ReadVO;

public interface GuestService {
	public List<GuestVO> getList(int currentPage);
	public List<GuestVO> getFBList(int currentPage);
	public GuestVO read(ReadVO rv);
	public void del(long s_no);
	public void write(GuestVO gvo);
	public void modify(GuestVO gvo);
	
	//오버로딩
	public int countPost();
	public int countsearchPost(String word);
	
	public int getFBTotalPage();
	
	public int getTotalBlock(int totalPage);
	
	public void hitCount(long s_no);
	//public int FBcountPost();
}

