package com.resustainability.reisp.dao;

import java.net.Inet4Address;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.SBU;

@Repository
public class MSWAPIDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<BrainBox> getMSWBilaspurList(SBU obj1, BrainBox obj, HttpServletResponse response) throws Exception {
		List<BrainBox> menuList = null;
		boolean flag = false;
		try{  
			String user_id = "rewbbilsext";
			String password = "XvyzAb1298extdd";
			//String Myip = Inet4Address.getLocalHost().getHostAddress();
			String Myip = "10.100.3.11";
			String time = " 12:00:00AM";
			String IP [] = {"10.11.10.102","122.168.198.195","34.93.149.251",Myip}; 
			if(IP.length > 0) {
				for(int i=0; i< IP.length; i++) {
					if(IP[i].contentEquals(Myip)  ) {
						if(user_id.contentEquals(obj1.getUser_id()) && password.contentEquals(obj1.getPassword())) {
							flag = true;
						}
					}
				}
				System.out.println(flag);
			}
			if(flag) {
			String qry = "SELECT TRNO as TransactionNo, VEHICLENO as VehicleNo, MATERIAL as Zone, PARTY as Location,"
					+ "TRANSPORTER as Transporter, CONVERT(varchar(9), DATEIN, 105) AS DateIN,"
					+ "CONVERT(varchar(10), RIGHT(TIMEIN, 10), 108) AS TimeIN, CONVERT(varchar(9), DATEOUT, 105) AS DateOUT,"
					+ "CONVERT(varchar(10), RIGHT(TIMEOUT, 10), 108) AS TimeOUT, FIRSTWEIGHT, SITEID, SECONDWEIGHT, NETWT,"
					+ "TYPEOFWASTE AS Material FROM WEIGHT WITH (nolock) "
					+ "WHERE (SECONDWEIGHT IS NOT NULL) AND (NETWT IS NOT NULL) and"
					+ "(SITEID is not null) AND SITEID = 'BILASPUR_WB' ";
					int arrSize = 0;
				    if(!StringUtils.isEmpty(obj1) && !StringUtils.isEmpty(obj1.getFrom_date())) {
						qry = qry + " AND CONVERT(varchar(10), DATEOUT, 105) = CONVERT(varchar(10), ?, 105) ";
						arrSize++;
					}
			qry = qry +"  ORDER BY TRNO desc "; 
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj1) && !StringUtils.isEmpty(obj1.getFrom_date())) {
				pValues[i++] = obj1.getFrom_date()+time;
			}
			menuList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
			
			if(menuList.size() == 0) {
				response.sendError(501);
			}
		}else if(!user_id.contentEquals(obj1.getUser_id()) || !password.contentEquals(obj1.getPassword())) {
				response.sendError(404);
		 }else {
				response.sendError(500);
		 }
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}
}
