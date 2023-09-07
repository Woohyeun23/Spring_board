package com.peisia.spring.spb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peisia.spring.spb.boardproc.Bd;
import com.peisia.spring.spb.domain.GuestVO;
import com.peisia.spring.spb.domain.ReadVO;
import com.peisia.spring.spb.mapper.GuestMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
//@AllArgsConstructor
public class GuestServiceImpl implements GuestService{

	
	
	
	@Setter(onMethod_ = @Autowired)
	private GuestMapper mapper;	
	
	@Override
	public List<GuestVO> getList(int currentPage) {
		log.info("비지니스 계층===========");
		int limitindex = (currentPage-1)*5;
		return mapper.getList(limitindex);
	}
	
	@Override
	public List<GuestVO> getFBList(int currentPage) {
		log.info("비지니스 계층===========");
		int limitindex = (currentPage-1)*10;
		log.info("인덱스 넘버 : " + limitindex);
		return mapper.getFBList(limitindex);
	}

	@Override
	public GuestVO read(ReadVO rv) {
		log.info("====== 넘버 : " + rv.getS_no());
		log.info("======= 카테고리 : " + rv.getS_category());
		return mapper.read(rv);
	}

	@Override
	public void del(long s_no) {
		mapper.del(s_no);
	}

	@Override
	public void write(GuestVO gvo) {
		mapper.write(gvo);
	}

	@Override
	public void modify(GuestVO gvo) {
		mapper.modify(gvo);
	}
	
		
	
	
	
	@Override
	public int countsearchPost(String word) {
		int totalPageCount = 0;
		int count = mapper.countsearchPost(word);
		if(count%Bd.PER_LIST_AMOUNT==0) {
			totalPageCount = count/Bd.PER_LIST_AMOUNT;
		} else {
			totalPageCount = count/Bd.PER_LIST_AMOUNT + 1;
		}
		
		
		return totalPageCount;
			

	
	}
	
	@Override
	public int countPost() {
		return mapper.countPost();
	}
	
	
	@Override
	public int getFBTotalPage() {
		//전체 페이지 수 = 전체 글 수 / [페이지당 글 수]
		int totalPageCount = 0;
		int count = countPost();
		log.info("전체 게시글 수 == "+ count);
		if(count%Bd.FB_PER_LIST_AMOUNT==0) {
			totalPageCount = count/Bd.FB_PER_LIST_AMOUNT;
		} else {
			totalPageCount = count/Bd.FB_PER_LIST_AMOUNT + 1;
		}
		
		return totalPageCount;
	}

	
	
//	@Override
//	public int FBcountPost() {
//		int totalPageCount = 0;
//		int count = mapper.countPost();
//		log.info("전체 페이지 수 == "+ count);
//		if(count%Bd.FB_PER_LIST_AMOUNT==0) {
//			totalPageCount = count/Bd.FB_PER_LIST_AMOUNT;
//		} else {
//			totalPageCount = count/Bd.FB_PER_LIST_AMOUNT + 1;
//		}
//		
//		
//		return totalPageCount;
//		
//		
//	}
	
	
	
	
	
	
	@Override
	public int getTotalBlock(int totalPage) {
		//전체 블럭 수 = 전체 페이지 수 / [블럭당 페이지 수]
		int totalBlock = 0;
		if(totalPage % Bd.PAGE_PER_BLOCK == 0) {
			totalBlock = totalPage / Bd.PAGE_PER_BLOCK;
		}else {
			totalBlock = totalPage / Bd.PAGE_PER_BLOCK + 1;
		}		
		return totalBlock;
	}
	
	

	
				
//	
//	@Override
//	public int gitTotalPage() {
//		int totalPageCount = 0;
//		int count = mapper.countPost();
//		if(count%Bd.LIST_AMOUNT==0) {
//			totalPageCount = count/Bd.LIST_AMOUNT;
//		} else {
//			totalPageCount = count/Bd.LIST_AMOUNT;
//		}
//		
//		
//		return totalPageCount;
//		
//		
//	}
//	
	
	public void hitCount(long s_no) {
		mapper.hitCount(s_no);
	}
	
	
	
	
}



