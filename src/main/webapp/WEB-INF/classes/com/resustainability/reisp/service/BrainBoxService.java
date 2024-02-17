package com.resustainability.reisp.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.BrainBoxDao;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.Noida;
import com.resustainability.reisp.model.NoidaLog;
import com.resustainability.reisp.model.RoleMapping;

@Service
public class BrainBoxService {

	@Autowired
	BrainBoxDao dao;

	public List<BrainBox> getProjectstList()  throws Exception {
		return dao.getProjectstList();
	}

	public List<BrainBox> getDepartments()  throws Exception {
		return dao.getDepartments();
	}

	public List<BrainBox> getSbuList()  throws Exception {
		return dao.getSbuList();
	}

	public List<BrainBox> getThemesInBB(BrainBox obj)   throws Exception {
		return dao.getThemesInBB(obj);
	}

	public List<BrainBox> getThemeFilterListInBB(BrainBox obj)   throws Exception {
		return dao.getThemeFilterListInBB(obj);
	}

	public List<BrainBox> getStatusFilterListInThemes(BrainBox obj)   throws Exception {
		return dao.getStatusFilterListInThemes(obj);
	}

	public boolean addTheme(BrainBox obj)   throws Exception {
		return dao.addTheme(obj);
	}

	public boolean updateTheme(BrainBox obj)   throws Exception {
		return dao.updateTheme(obj);
	}

	public List<BrainBox> getThemeList()   throws Exception {
		return dao.getThemeList();
	}

	public BrainBox getBBDocumentDEtails(BrainBox bb) throws Exception {
		return dao.getBBDocumentDEtails(bb);
	}

	public List<BrainBox> getRoleMappingforBBForm(BrainBox bb) throws Exception {
		return dao.getRoleMappingforBBForm(bb);
	}

	public List<BrainBox> getFilteredProjectsListBB(BrainBox obj) throws Exception  {
		return dao.getFilteredProjectsListBB(obj);
	}

	public List<BrainBox> getSBUList() throws SQLException {
		return dao.getSBUList();
	}

	public List<BrainBox> PHFilter(BrainBox obj) throws SQLException {
		return dao.PHFilter(obj);
	}

	public List<BrainBox> getBBHistoryList(BrainBox obj) throws Exception {
		return dao.getBBHistoryList(obj);
	}

	public List<BrainBox> getIB_listInBB(BrainBox obj) throws Exception {
		return dao.getIB_listInBB(obj);
	}

	public List<BrainBox> getBBListAlert() throws Exception  {
		return dao.getBBListAlert();
	}

	public List<BrainBox> getBBListAlertMonthly() throws Exception  {
		return dao.getBBListAlertMonthly();
	}

	public List<Noida> getNewDataList()  throws Exception  {
		return dao.getNewDataList();
	}

	public Object uploadToLogs(List<Noida> list, NoidaLog logObj)  throws Exception  {
		return dao.uploadToLogs(list,logObj);
		
	}

	
	
}
