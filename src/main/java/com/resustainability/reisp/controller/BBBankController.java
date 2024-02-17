package com.resustainability.reisp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.BBBankService;
import com.resustainability.reisp.service.BrainBoxService;
import com.resustainability.reisp.service.UserService;

@Controller
public class BBBankController {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(BBBankController.class);
	
	
	@Autowired
	BBBankService service;
	
	@Autowired
	BrainBoxService service2;
	
	@Autowired
	UserService service1;

	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${record.dataexport.success}")
	public String dataExportSucess;
	
	@Value("${record.dataexport.invalid.directory}")
	public String dataExportInvalid;
	
	@Value("${record.dataexport.error}")
	public String dataExportError;
	
	@Value("${record.dataexport.nodata}")
	public String dataExportNoData;
	
	@Value("${template.upload.common.error}")
	public String uploadCommonError;
	
	@Value("${template.upload.formatError}")
	public String uploadformatError;
	
	@RequestMapping(value = "/bb-bank", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView bbForm(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.bbbank);
		String userId = null;
		String userName = null;
		String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");
			String email = (String) session.getAttribute("USER_EMAIL");
			user.setRole(role);
			user.setUser_id(userId);
			User uBoj = new User();
			uBoj.setEmail_id(email);
			
			List<BrainBox> themeList = service.getThemeList();
			model.addObject("themeList", themeList);
			
			List<BrainBox> sbuList = service2.getSbuList();
			model.addObject("sbuList", sbuList);
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/get-bb-bank", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView irmUpdateForm(@ModelAttribute BrainBox bb, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.bbBankView);
		String userId = null;
		String userName = null;String role = null;String idea_role = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("BASE_ROLE");idea_role = (String) session.getAttribute("IDEA_BASE_ROLE");

			bb.setUser_id(userId);
			bb.setUser_name(userName);
			String email = (String) session.getAttribute("USER_EMAIL");
			bb.setEmail(email);
			bb.setCreated_by(userId);
			bb.setRole(role);
			bb.setIdea_base_role(idea_role);
			List<BrainBox> themeList = service.getThemeList();
			model.addObject("themeList", themeList);
			
			List<BrainBox> sbuList = service2.getSBUList();
			model.addObject("sbuList", sbuList);
			BrainBox ob = new BrainBox();
			ob.setUser_id(userId);
			ob.setUser_name(userName);
			ob.setEmail(email);
			ob.setCreated_by(userId);
			ob.setRole(role);
			ob.setIdea_base_role(idea_role);
			List<BrainBox> ideaList = service2.getThemesInBB(ob);
			model.addObject("ideaList", ideaList);
			
			List<BrainBox> themeListOne = service.getThemeListOne(bb);
			model.addObject("themeListOne", themeListOne);
			
			List<BrainBox> IB_list = service2.getIB_listInBB(ob);
			model.addObject("IB_list", IB_list);
			
			BrainBox BBDetails = service2.getBBDocumentDEtails(bb);
			model.addObject("BBDetails", BBDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
}
