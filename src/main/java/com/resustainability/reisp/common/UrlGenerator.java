package com.resustainability.reisp.common;

import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class UrlGenerator {
	Logger logger = Logger.getLogger(UrlGenerator.class);
	public String getURLBase() {
		String base_url = "";
		try {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
			        .getRequestAttributes()).getRequest();
		    URL requestURL = new URL(request.getRequestURL().toString());
		    String port = requestURL.getPort() == -1 ? "" : ":" + requestURL.getPort();
		    base_url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
		}catch (Exception e) {
			logger.error("getURLBase : " + e.getMessage());
		}
		return base_url;
	}
	
	public String getIpAddress(){
		String ip_address = "";
		try {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
			        .getRequestAttributes()).getRequest();
			
		    URL requestURL = new URL(request.getRequestURL().toString());
		    String port = requestURL.getPort() == -1 ? "" : ":" + requestURL.getPort();
		    ip_address = request.getServerName().toString();
			
		} catch (Exception e) {
			logger.error("getIpAddress : " + e.getMessage());
		}
		return ip_address;
	}
	
	public String getContextPath(){
		String context_path = "";
		try {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
			        .getRequestAttributes()).getRequest();
		    context_path = request.getContextPath().toString();
		    if(!StringUtils.isEmpty(context_path)) {
		    	context_path = context_path.replaceAll("/", "");
		    }
		} catch (Exception e) {
			logger.error("getContextPath : " + e.getMessage());
		}
		return context_path;
	}
	
	private static final String SERVER_PATH = "C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/";
	private static final String LOCAL_PATH = "C:/Users/Saidileep.p/eclipse-workspace/brainbox/src/main/webapp/";
  //C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps\brainbox\resources\gallery
	public String getNGINXFilesBasePath(){
		String base_path = "";
		try {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
			        .getRequestAttributes()).getRequest();
			String ip_address = request.getServerName().toString();

		    if("10.203.10.158".equals(ip_address) || "203.153.40.44".equals(ip_address)) {
		    	base_path = "C:/Users/Saidileep.p/eclipse-workspace/"+getContextPath();
		    }else if("13.235.73.61".equals(ip_address)) {
		    	base_path = "usr/share/nginx/html/"+getContextPath();
		    }else if("127.0.0.1".equals(ip_address) || "localhost".contains(ip_address)) {
		    	base_path = LOCAL_PATH;
		    }else {
		    	base_path = SERVER_PATH+"/"+getContextPath();
		    }
		} catch (Exception e) {
			logger.error("getNGINXFilesBasePath : " + e.getMessage());
		}
		return base_path;
	}
	
}
