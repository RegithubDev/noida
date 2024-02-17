package com.resustainability.reisp.controller;

import com.resustainability.reisp.common.DateParser;

public class date {

	public static void main(String[] args) {
		String date = "2023-2-11";
		System.out.println(DateParser.parse(date));
	}
}
