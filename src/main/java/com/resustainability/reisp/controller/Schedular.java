package com.resustainability.reisp.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.resustainability.reisp.common.EMailSender;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.Noida;
import com.resustainability.reisp.model.NoidaLog;
import com.resustainability.reisp.service.BrainBoxService;
import java.net.HttpURLConnection;
import java.net.URL;
import java.io.OutputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
@RestController
@RequestMapping("/reone")
public class Schedular {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    } 
	public static Logger logger = Logger.getLogger(Schedular.class);
	
	@Autowired
	LoginController loginController;
	

	@Autowired
	BrainBoxService service;
	
	@Autowired
	
	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${run.cron.jobs}")
	public boolean is_cron_jobs_enabled;
	
	@Value("${run.cron.jobs.in.qa}")
	public boolean is_cron_jobs_enabled_in_qa;
	
	/**********************************************************************************/
	
	/*
	 * @Scheduled(cron = "${cron.expression.user.login.timeout}") public void
	 * userLoginTimeout(){ if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
	 * try { System.out.println("cronJob Called!!!!"); } catch (Exception e) {
	 * e.printStackTrace(); logger.error("userLoginTimeout() : "+e.getMessage()); }
	 * } }
	 */
	/**********************************************************************************/
	
	private String capitalize( String line) {
		 char[] charArray = line.toCharArray();
		    boolean foundSpace = true;

		    for(int i = 0; i < charArray.length; i++) {

		      // if the array element is a letter
		      if(Character.isLetter(charArray[i])) {

		        // check space is present before the letter
		        if(foundSpace) {
		          // change the letter into uppercase
		          charArray[i] = Character.toUpperCase(charArray[i]);
		          foundSpace = false;
		        }
		      }
		      else {
		        // if the new character is not character
		        foundSpace = true;
		      }
		    }
		    line = String.valueOf(charArray);
			return line;
		}
	
	
	@Scheduled(cron = "${cron.expression.user.login.timeout}")
	public void userLoginTimeout(){	
		 String json = null;
		 Noida obj = null;
		 HashMap<String, String> data1 = new HashMap<String, String>();
		 ObjectMapper objectMapper = new ObjectMapper();
		if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
		     logger.error("userLoginTimeout : Method executed every day. Current time is :"+ new Date());	    
		     try {
		    	 System.out.println("cronJob egegeg!!!!"); 
		    	 boolean flag = true;
		    		List<Noida>  list = service.getNewDataList();
		    		if(list.size() > 0) {
		    		 obj = new Noida();
		    		 objectMapper.setConfig(objectMapper.getSerializationConfig()
		    				   .with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY).with(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS));
		    		  json = objectMapper.writeValueAsString(list);
		    		  json = capitalize(json);
	    			  ObjectNode json1 = objectMapper.createObjectNode();
	    			  json1.put("TokenNo", "292FDF21-4705-4E8B-89BF-3A39B63D4D29");
	    			  json1.put("WeighBridge", json);
	    			
	    			  String jsonString = objectMapper.writeValueAsString(json1);
	    			  jsonString = jsonString.replaceAll("\\\\", "");
	    			  jsonString = jsonString.replaceAll("&amp;","&").replaceAll("&","N");
	    			  
	    			  jsonString =	jsonString.replaceAll("\"EmptyWeight\":\"", "\"EmptyWeight\":");
	    			  jsonString =	jsonString.replaceAll("\",\"LoadWeight\"",",\"LoadWeight\"");
	    				
	    			  jsonString =	jsonString.replaceAll("\"LoadWeight\":\"", "\"LoadWeight\":");
	    			  jsonString =	jsonString.replaceAll("\",\"MaterialName\"",",\"MaterialName\"");
	    				
	    			  jsonString =	jsonString.replaceAll("\"NetWeight\":\"", "\"NetWeight\":");
	    			  jsonString =	jsonString.replaceAll("\",\"OutTime\"",",\"OutTime\"");
	    			  jsonString = "="+jsonString;
	    			  
	    			 // System.out.println(jsonString);
		    		if(list.size() > 0) {
		    			 URL url = new URL("http://hclnoidaapi.3detrack.in/api/Postweighbridgedata");
		    			    // Create a HttpURLConnection object for making the request
		    			    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		    			    connection.setRequestMethod("POST");
		    			    connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		    			    connection.setDoOutput(true);

		    			    // Create the data to be sent in the request
		    			   
		    			    String data = jsonString;
		    			   
		    			    StringBuilder myName = new StringBuilder(data);
		    				myName.setCharAt(65, ' ');
		    				int length = data.length();
		    				myName.setCharAt(length-2, ' ');
		    				
		    				data= myName.toString();
		    				System.out.println(data);
		    			    		//"key1=" + URLEncoder.encode("value1", "UTF-8") + "&key2=" + URLEncoder.encode("value2", "UTF-8");

		    			    // Write the data to the connection's output stream
		    			    OutputStream outputStream = connection.getOutputStream();
		    			    outputStream.write(data.getBytes());
		    			    outputStream.flush();

		    			    // Read the response from the API
		    			    BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		    			    String response = reader.readLine();

		    			    // Print the response to the console
		    			    NoidaLog logObj = new NoidaLog();
		    			    System.out.println(response);
		    			    EMailSender emailSender = new EMailSender();
		    			    emailSender.send("adarsh.singh@resustainability.com", "Noida - Data", data, null, response);
		    			    if("\"success\"".equalsIgnoreCase(response)) { 
		    			    	System.out.println("Data Uploadeed successfully");
		    			    	logObj.setMSG("Data Uploadeed successfully");
		    			    	logObj.setGFC_Status("Data Recieved");
		    			    	service.uploadToLogs(list,logObj);
		    			    }else {
		    			    	System.out.println("Data Uploading failed");
		    			    	logObj.setMSG("error while posting data.");
		    			    	logObj.setGFC_Status("Not recieved");
		    			    	service.uploadToLogs(list,logObj);
		    			    }
		    			    // Close the connection and output stream
		    			    outputStream.close();
		    			    reader.close();
		    			    connection.disconnect();
		    		}
		    	}else {
	    			System.out.println("No New Data Found");
	    			 EMailSender emailSender = new EMailSender();
	    			    emailSender.send("adarsh.singh@resustainability.com", "Noida - Data", "No New Data Found", null, "No New Data Found");
	    		}
			 } catch (Exception e) {
				 e.printStackTrace();
				logger.error("userLoginTimeout() : "+e.getMessage());
			 }
		}
	}
	

}
