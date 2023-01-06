package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class MemberVO {
	@NonNull
	private String id;
	@NonNull
	private String pw;
	private String name;
	private String birth;
	private String mbti;
	private String address;
	private Timestamp b_date;
	private String phone;
	private String gender;

	
	public MemberVO(String id, String pw, String name, String birth, String mbti, String address, String phone, String gender){
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.mbti= mbti;
		this.address= mbti;
		this.phone = phone;
		this.gender= gender;
		
	}
	
}

