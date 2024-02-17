package com.resustainability.reisp.constants;

import com.resustainability.reisp.common.UrlGenerator;

public class CommonConstants {
	
	static UrlGenerator ugObj = new UrlGenerator();
	public final static String DOMAIN = "localhost"; 
	public final static String PORT = "8080"; 
	public final static String GOOGLE_SIGNIN_CLIENT_ID = "450006725102-icajh2b99emu4rhja8qkq8n43h5maqkp.apps.googleusercontent.com";
	public final static String BUSINESS_MAIL = "";
	public final static String ADMIN = "Admin";
	public final static String MANAGEMENT = "Management";
	//public final static String HOST = "http://localhost:8080";
	public final static String HOST2 = "http://localhost:8443";
	static String context_path = ugObj.getContextPath();
	static String base_path = ugObj.getNGINXFilesBasePath();
	 
	//////////////////////// SAVE FILES PATH
	public final static String BB_FILE_SAVING_PATH = base_path+"/resources/gallery/";
	public final static String SAFETY_FILE_SAVING_PATH = base_path+"/resources/gallery/";
	
	

	
	//////////////////////// GET SAVE FILES PATH
	public final static String CONTEXT_PATH = "http://10.100.3.11/"+context_path+"";
	public final static String BB_FILE_SAVING_PATH_LOC = "/"+context_path+"/resources/gallery/";


	//public final static String BB_FILE_SAVING_PATH_LOC = "/"+context_path+"/resources/gallery/";
	
//////////////////////////////// Production ////////////////////////////////////////////////////////////
	
	public final static String HOST = "https://appmint.resustainability.com/";
	
	
}
