package com.peisia.spring.spb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.peisia.spring.spb.domain.GuestVO;
import com.peisia.spring.spb.domain.ReadVO;
import com.peisia.spring.spb.service.GuestService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/guest/*")
@AllArgsConstructor
@Controller
public class GuestController {
		
	private GuestService service;
	
	@GetMapping("/getList")
	public void getList(@RequestParam(value="currentPage", defaultValue="1") int currentPage, Model model) {
		model.addAttribute("list",service.getList(currentPage));
	}
	
	@GetMapping({"/read", "/modify"})
	public void read(ReadVO rv, Model model) {
		log.info("컨트롤러 ==== 글번호 ==============="+rv.getS_no());
		model.addAttribute("read",service.read(rv));
	}
	
//	@GetMapping({"/read", "/modify"})
//	public void read(@RequestParam("s_no") Long s_no, Model model) {
//		log.info("컨트롤러 ==== 글번호 ==============="+s_no);
//		model.addAttribute("read",service.read(s_no));
//	}
//	
	@GetMapping("/del")
	public String del(@RequestParam("s_no") Long s_no) {
		log.info("컨트롤러 ==== 글번호 ==============="+s_no);
		service.del(s_no);
		return "redirect:/guest/getList";	// 책 p.245 참고
	}
	
	@PostMapping("/write")
	public String write(GuestVO gvo) {
		service.write(gvo);
		return "redirect:/guest/getList";	// 책 p.245 참고
	}
	
	@GetMapping("/write")	// 책 p.239 /write 중복이지만 이건 글쓰기 화면을 위한 url 매핑
	public void write() {
		
	}
	
	@PostMapping("/modifyproc")
	public String modify(GuestVO gvo) {
		service.modify(gvo);
		return "redirect:/guest/getList";
	}
	
	// -New page i added
	
	//main page
	@GetMapping("/main_page")
	public void main_page() {
		
	}
	
	
	
	
}





