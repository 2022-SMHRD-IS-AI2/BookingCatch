package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
/* @NoArgsConstructor */
public class ssulBoardVO {
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
		
		
		
		
		public void getNum(BigDecimal num) {
			this.num = num;
		}
		public void getTitle(String title) {
			this.title = title;
		}
		public void getContent(String content) {
			this.content = content;
		}
		public void getFilename(String filename) {
			this.filename = filename;
		}
		public void getDate(Timestamp date) {
			this.date = date;
		}
		public void getWriter(String writer) {
			this.writer = writer;
		}
		
		

		
		
	}
