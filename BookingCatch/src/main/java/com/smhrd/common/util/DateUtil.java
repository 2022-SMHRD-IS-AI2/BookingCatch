package com.smhrd.common.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class DateUtil {

	public static Timestamp convertStringToTimestamp(String date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		
		Timestamp timestamp = null;
		try {
		    Date stringToDate = dateFormat.parse(date);
		    timestamp = new Timestamp(stringToDate.getTime());
		} catch (ParseException e) {
		    e.printStackTrace();
		}
		
		return timestamp;
	}
}
