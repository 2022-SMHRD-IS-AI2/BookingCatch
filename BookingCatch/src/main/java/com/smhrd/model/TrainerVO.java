package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class TrainerVO {

	@NonNull
	private String id;
	@NonNull
	private String pw;
	private String name;
	private String birth;
	private String mbti;
	private String gender;
	private String center;
	private String ttype;
	private Timestamp b_date;
	private String phone;

	public TrainerVO(String id, String pw, String name, String birth, String mbti, String gender,
			String center,String ttype, String phone) {

		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.mbti = mbti;
		this.gender = gender;
		this.center = center;
		this.ttype = ttype;
		this.phone = phone;
	}
	public TrainerVO(String id,String pw,String mbti,String center,String ttype,String phone) {
		this.id = id;
		this.pw = pw;
		this.mbti = mbti;
		this.center = center;
		this.ttype = ttype;
		this.phone = phone;
	}
}