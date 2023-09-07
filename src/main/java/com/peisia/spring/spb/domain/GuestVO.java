package com.peisia.spring.spb.domain;

import lombok.Data;

@Data
public class GuestVO {
	private Long s_no;
	private String s_title;
	private String s_id;
	private String s_datetime;
	private String s_text;
	private String s_hit;
	private String s_reply_con;
	private String s_reply_count;
	private String s_reply_ori;
	private String s_category;
	
}