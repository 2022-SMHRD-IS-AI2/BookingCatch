package com.smhrd.model;

import java.math.BigDecimal;

public class BookingVO {
	private String idx;
	private String uid;
	private String bdate;
	private BigDecimal price;
	private String bWishList;
	private String tid;
	private String timeTable;
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getbWishList() {
		return bWishList;
	}
	public void setbWishList(String bWishList) {
		this.bWishList = bWishList;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTimeTable() {
		return timeTable;
	}
	public void setTimeTable(String timeTable) {
		this.timeTable = timeTable;
	}
}