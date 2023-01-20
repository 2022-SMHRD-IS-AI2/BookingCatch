package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@AllArgsConstructor
@Getter
public class TrainerInfoVO {

//	자기소개 자격증명 센터 스케줄 프로그램 후기(사용자입력)X 레슨가격 수업방법여부 공지사항
	private String id;
	private String certificate;
	private String introduce;
	private BigDecimal price;
	private String notice;
	private BigDecimal likes;
	private String center;
	private String program;
	private String method;
	private String schedule;
}

 