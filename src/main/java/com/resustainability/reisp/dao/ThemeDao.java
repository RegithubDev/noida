package com.resustainability.reisp.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.BrainBox;

@Repository
public class ThemeDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<BrainBox> getThemesList(BrainBox obj) throws Exception{
		List<BrainBox> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select ";
					qry = qry +"(select count( theme_code) from bb_theme where theme_code is not null  ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
						qry = qry + " and theme_code = ? ";
						arrSize++;
					}
					qry = qry +  " ) as all_themes ,";
					qry = qry +	"(select count( theme_code) from bb_theme where theme_code is not null and status = 'Active' ";
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
										qry = qry + "  and status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
										qry = qry + " and theme_code = ? ";
										arrSize++;
									}
									qry = qry + " ) as active_themes,"
									+ "(select count( theme_code) from bb_theme where theme_code is not null   and status <> 'Active' ";
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
										qry = qry + " and status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
										qry = qry + " and theme_code = ? ";
										arrSize++;
									}
									qry = qry + " ) as inActive_themes,"
					+ "c.id	,theme_code,	theme_name,	status,description,	FORMAT (c.created_date, 'dd-MMM-yy') as created_date,"
					+ " FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date from [bb_theme] c "
					+ " where c.theme_code is not null and c.theme_code <> '' ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				qry = qry + " and c.theme_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and status = ? ";
				arrSize++;
			}
			qry = qry + " ORDER BY status ASC ";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				pValues[i++] = obj.getTheme_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				pValues[i++] = obj.getTheme_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				pValues[i++] = obj.getTheme_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				pValues[i++] = obj.getTheme_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getThemeFilterList(BrainBox obj) throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT theme_code,theme_name "
					+ " FROM [bb_theme] where theme_code is not null and theme_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				qry = qry + "and theme_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and status = ? ";
				arrSize++;
			}
			qry = qry + " group by theme_code,theme_name order by theme_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				pValues[i++] = obj.getTheme_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}	
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getStatusFilterListInThemes(BrainBox obj) throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT status "
					+ " FROM [bb_theme] where theme_code is not null and theme_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				qry = qry + "and theme_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and status = ? ";
				arrSize++;
			}
			qry = qry + " group by status order by status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme_code())) {
				pValues[i++] = obj.getTheme_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}	
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addTheme(BrainBox obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [bb_theme] (theme_name,theme_code,status,description,created_date) VALUES (:theme_name,:theme_code,:status,:description,getdate())";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public boolean updateTheme(BrainBox obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [bb_theme] set theme_name= :theme_name,theme_code= :theme_code,description= :description,status=:status,modified_date= getdate() "
					+ " where id= :id ";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(updateQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	
	
	
	
}
