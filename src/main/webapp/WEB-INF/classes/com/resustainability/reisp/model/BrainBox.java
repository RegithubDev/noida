package com.resustainability.reisp.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BrainBox {

	//$posts[] = array('TRNo'=> $trn, 'VehicleNo'=> $vehn, 'DateIn'=> $datei, 'TimeIn'=> $timei, 'DateOut'=> $dateou, 
	//		'TimeOut'=> $timeou, 'GROSSWeight'=> $grossw, 'TareWeight'=> $tarew, 'NetWeight'=> $netw);
	
	private String TransactionNo,VehicleNo,DateIn,TimeIN,DateOUT,TimeOUT,FIRSTWEIGHT, SECONDWEIGHT, NETWT;

	public BrainBox(String transactionNo, String vehicleNo, String dateIn, String timeIN, String dateOUT,
			String timeOUT, String fIRSTWEIGHT, String sECONDWEIGHT, String nETWT) {
		super();
		TransactionNo = transactionNo;
		VehicleNo = vehicleNo;
		DateIn = dateIn;
		TimeIN = timeIN;
		DateOUT = dateOUT;
		TimeOUT = timeOUT;
		FIRSTWEIGHT = fIRSTWEIGHT;
		SECONDWEIGHT = sECONDWEIGHT;
		NETWT = nETWT;
	}
	public String  error(String msg) {
		msg ="welcome to covariant return type";
		DateIn = msg;
		return DateIn;
	}
	public BrainBox() {}

	public String getTransactionNo() {
		return TransactionNo;
	}

	public void setTransactionNo(String transactionNo) {
		TransactionNo = transactionNo;
	}

	public String getVehicleNo() {
		return VehicleNo;
	}

	public void setVehicleNo(String vehicleNo) {
		VehicleNo = vehicleNo;
	}

	public String getDateIn() {
		return DateIn;
	}

	public void setDateIn(String dateIn) {
		DateIn = dateIn;
	}

	public String getTimeIN() {
		return TimeIN;
	}

	public void setTimeIN(String timeIN) {
		TimeIN = timeIN;
	}

	public String getDateOUT() {
		return DateOUT;
	}

	public void setDateOUT(String dateOUT) {
		DateOUT = dateOUT;
	}

	public String getTimeOUT() {
		return TimeOUT;
	}

	public void setTimeOUT(String timeOUT) {
		TimeOUT = timeOUT;
	}

	public String getFIRSTWEIGHT() {
		return FIRSTWEIGHT;
	}

	public void setFIRSTWEIGHT(String fIRSTWEIGHT) {
		FIRSTWEIGHT = fIRSTWEIGHT;
	}

	public String getSECONDWEIGHT() {
		return SECONDWEIGHT;
	}

	public void setSECONDWEIGHT(String sECONDWEIGHT) {
		SECONDWEIGHT = sECONDWEIGHT;
	}

	public String getNETWT() {
		return NETWT;
	}

	public void setNETWT(String nETWT) {
		NETWT = nETWT;
	}


	@Override
	public String toString() {
		return "BrainBox [TransactionNo=" + TransactionNo + ", VehicleNo=" + VehicleNo + ", DateIn=" + DateIn
				+ ", TimeIN=" + TimeIN + ", DateOUT=" + DateOUT + ", TimeOUT=" + TimeOUT + ", FIRSTWEIGHT="
				+ FIRSTWEIGHT + ", SECONDWEIGHT=" + SECONDWEIGHT + ", NETWT=" + NETWT + "]";
	}
	public BrainBox get() {
		return this;
	}

	
}
