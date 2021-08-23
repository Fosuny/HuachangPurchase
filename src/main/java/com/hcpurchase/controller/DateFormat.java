package com.hcpurchase.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class DateFormat implements Converter<String, Date> {
	public Date convert(String source) {
	SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd");
	Date date = null;
	 try {
	 	if(source.trim().length()!=0){
			date=sdf.parse(source);
		}

	} catch (ParseException e) {
		e.printStackTrace();
	}
		return date;
	}
}
