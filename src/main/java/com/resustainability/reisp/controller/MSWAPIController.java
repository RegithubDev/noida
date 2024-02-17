package com.resustainability.reisp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.login.filer.AuthenticationInterceptor;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.SBU;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.BrainBoxService;
import com.resustainability.reisp.service.MSWAPIService;
import org.apache.commons.codec.binary.Base64;

@RestController
@RequestMapping("/reone")
public class MSWAPIController {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(MSWAPIController.class);
	
	
	@Autowired
	 MSWAPIService service;
	
	
	@RequestMapping(value = "/noida", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView MSWAPI(@ModelAttribute User user, HttpSession session,HttpServletRequest request,HttpServletResponse response,Object handler) {
		ModelAndView model = new ModelAndView(PageConstants.MSW);
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}

	@RequestMapping(value = "/ajax/getMSWBilaspurList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<BrainBox> getMSWBilaspurList(@ModelAttribute SBU obj1, BrainBox obj,HttpSession session,HttpServletResponse response) {
		List<BrainBox> companiesList = null;
		String userId = null;
		String userName = null;
		String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			obj1.setFrom_date(DateParser.parse(obj1.getFrom_date()));
			companiesList = service.getMSWBilaspurList(obj1,obj,response);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getMSWBilaspurList : " + e.getMessage());
		}
		return companiesList;
	}
	
	@RequestMapping(value = "/getMSWBilaspurList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public  ResponseEntity<List<BrainBox>>getMSWBilaspurListAPi(@RequestHeader("Authorization") String authentication, @RequestBody SBU obj1,BrainBox obj,HttpSession session,HttpServletResponse response , Errors filterErrors) throws IOException {
		List<BrainBox> companiesList = null;
		String userId = null;
		String role = null;String idea_role = null;
		try {
			 String pair=new String(Base64.decodeBase64(authentication.substring(6)));
		     String userName=pair.split(":")[0];
		     String password=pair.split(":")[1];
		     obj1.setUser_id(userName);
		     obj1.setPassword(password);
			 if(!StringUtils.isEmpty(obj1.getFrom_date())) {
				 //obj1.setFrom_date(DateParser.parse(obj1.getFrom_date()));
			 }else {
				 response.sendError(313);
			 }
			 companiesList = service.getMSWBilaspurList(obj1,obj,response);
		}catch (Exception e) {
			System.out.println(filterErrors.getAllErrors());
			response.sendError(400);
			e.printStackTrace();
			logger.error("getMSWBilaspurList : " + e.getMessage());
		}
		return new ResponseEntity<>(companiesList, HttpStatus.OK);
	}
	
	
}
