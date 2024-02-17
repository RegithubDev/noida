package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.ThemeDao;
import com.resustainability.reisp.model.BrainBox;


@Service
public class ThemeService {
	@Autowired
	ThemeDao dao;

	public List<BrainBox> getThemesList(BrainBox obj) throws Exception {
		return dao.getThemesList(obj);
	}

	public List<BrainBox> getThemeFilterList(BrainBox obj) throws Exception  {
		return dao.getThemeFilterList(obj);
	}

	public List<BrainBox> getStatusFilterListInThemes(BrainBox obj) throws Exception  {
		return dao.getStatusFilterListInThemes(obj);
	}

	public boolean addTheme(BrainBox obj) throws Exception  {
		return dao.addTheme(obj);
	}

	public boolean updateTheme(BrainBox obj) throws Exception  {
		return dao.updateTheme(obj);
	}
}
