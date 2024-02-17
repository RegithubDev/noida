package com.resustainability.reisp.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.MSWAPIDao;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.SBU;

@Service
public class MSWAPIService {

	@Autowired
	MSWAPIDao dao;

	public List<BrainBox> getMSWBilaspurList(SBU obj1, BrainBox obj, HttpServletResponse response) throws Exception{
		return dao.getMSWBilaspurList(obj1,obj,response);
	}
	
	
	
}
