package com.smhrd.model;

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
	private String date;
	private String phone;
	private String gender;

}
