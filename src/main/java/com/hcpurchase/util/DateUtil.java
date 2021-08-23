package com.hcpurchase.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	private static Date date = new Date();
	
	private static final String str = "yyyyMMddhhmmss";
	public static String getNowString() {
		SimpleDateFormat sdf = new SimpleDateFormat(str);
		String string = sdf.format(date);
		return string;
	}
}
