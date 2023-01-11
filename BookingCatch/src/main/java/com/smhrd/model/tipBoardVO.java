package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
/* @NoArgsConstructor */
public class tipBoardVO {
	
	private BigDecimal num;
	@NonNull
	private String title;
	@NonNull
	private String content;
	@NonNull
	private String filename;
	private Timestamp date;
	@NonNull
	private String writer;
	@NonNull
	private BigDecimal likes;
	

	
	
}

