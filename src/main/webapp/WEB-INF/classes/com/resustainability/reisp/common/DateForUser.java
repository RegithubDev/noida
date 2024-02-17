package com.resustainability.reisp.common;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateForUser {
	
	 public static String date() {
		 DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); 
	     String dt = formatter.format(new Date());
	     Date date = null;
	     try {
	         date = (Date)formatter.parse(dt);
	     } catch (ParseException e) {
	         e.printStackTrace();
	     }
	     Calendar now = Calendar.getInstance();    
	     now.setTime(date);
	     System.out.println("Current date : " + now.get(Calendar.DATE)+ "-" +(now.get(Calendar.MONTH) + 1) + "-"
	          + now.get(Calendar.YEAR));
	     now.add(Calendar.YEAR, 8);
	     System.out.println("date after 6 months : " +  now.get(Calendar.DATE)+"-" + (now.get(Calendar.MONTH) + 1) + "-"
	          + now.get(Calendar.YEAR));
		return now.get(Calendar.YEAR)+"-" + (now.get(Calendar.MONTH) + 1) + "-" +  now.get(Calendar.DATE);
	 }
}
