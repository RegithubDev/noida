package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.BBBankDao;
import com.resustainability.reisp.dao.BrainBoxDao;
import com.resustainability.reisp.model.BrainBox;

@Service
public class BBBankService {
	@Autowired
	BBBankDao dao;

	public List<BrainBox> getThemeList() {
		return dao.getThemeList();
	}

	public List<BrainBox> getThemeListOne(BrainBox ob) {
		return dao.getThemeListOne(ob);
	}
}
