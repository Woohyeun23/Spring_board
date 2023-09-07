package com.peisia.spring.spb.mapper;

import java.util.List;

import com.peisia.spring.spb.domain.GuestVO;
import com.peisia.spring.spb.domain.ReadVO;

public interface GuestMapper {
	public String TableName="luna_proj_1";
	
	public List<GuestVO> getList(int limitIndex);
	public List<GuestVO> getFBList(int limitIndex);
	public GuestVO read(ReadVO rv);
	public void del(long s_no);
	public void write(GuestVO gvo);
	public void modify(GuestVO gvo);
	
	public int countPost();
	public int countsearchPost(String word);
	public void hitCount(long s_no);
}


