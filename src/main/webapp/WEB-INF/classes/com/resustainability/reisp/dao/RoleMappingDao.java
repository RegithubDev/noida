package com.resustainability.reisp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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

import com.resustainability.reisp.common.DBConnectionHandler;
import com.resustainability.reisp.common.EMailSender;
import com.resustainability.reisp.common.Mail;
import com.resustainability.reisp.constants.CommonConstants;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.model.RoleMapping;

@Repository
public class RoleMappingDao {


	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<RoleMapping> getProjectsList(RoleMapping obj) throws SQLException {
		List<RoleMapping> menuList = null;
		try{  
			String qry = "select project_code,project_name from [project] ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<RoleMapping> getDeptsList(RoleMapping obj) throws SQLException {
		List<RoleMapping> menuList = null;
		try{  
			String qry = "SELECT department_code ,department_name,assigned_to_sbu,project_code FROM [department] d "
					+ "  left join project p on d.assigned_to_sbu like CONCAT('%',p.sbu_code, '%') "
					+ " where d.department_code is not null and  d.department_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject())) {
				qry = qry + " and p.project_code = ? ";
				arrSize++;
			}
			qry = qry + " order by   d.department_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject())) {
				pValues[i++] = obj.getProject();
			}
			menuList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<RoleMapping> getEmpstList(RoleMapping obj) throws SQLException {
		List<RoleMapping> menuList = null;
		try{  
			String qry = "select user_id,email_id,user_name from [user_profile] where base_role <> 'User' ";
			
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject())) {
				qry = qry + " and base_project = ?";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject())) {
				pValues[i++] = obj.getProject();
			}
			menuList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<RoleMapping> getRolestList(RoleMapping obj) throws SQLException {
		List<RoleMapping> menuList = null;
		try{  
			String qry = "select project_code,project_name from [project] ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<RoleMapping> getRoleMappingsList(RoleMapping obj) throws Exception {
		List<RoleMapping> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select distinct rp.id,project,theme,employee_code,theme_code,theme_name,	role_code,rm.idea_type,rp.status,FORMAT(rp.created_date, 'dd-MMM-yy  HH:mm') as created_date"
					+ " ,FORMAT(rp.modified_date, 'dd-MMM-yy  HH:mm') as modified_date, "
					+ "p.project_code,p.project_name,rp.department_code,department_name,user_id,user_name from [idea_role_mapping] rp  "
					+ " left join [project] p on rp.project = p.project_code "
					+ " left join [department] dt on rp.department_code = dt.department_code "
					+ " left join [user_profile] u on  rp.employee_code = u.user_id "
					+ " left join [idea_role_master] rm on  rp.theme = rm.idea_code "
					+ " left join [bb_theme] bt on  rp.theme = bt.theme_code "
					+ " where rp.id is not null and rp.id <> '' ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				qry = qry + " and project = ? ";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + " and theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + "and rp.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				qry = qry + " and employee_code = ? ";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				pValues[i++] = obj.getProject_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				pValues[i++] = obj.getEmployee_code();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<RoleMapping> getDeptFilterList(RoleMapping obj) throws Exception {
		List<RoleMapping> objsList = new ArrayList<RoleMapping>();
		try {
			String qry = "SELECT  p.department_code,	c.department_name  "
					+ " FROM [idea_role_mapping] p  "
					+ " left join [department] c on  p.department_code = c.department_code "
					+ "where p.department_code is not null and p.department_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				qry = qry + " and project = ? ";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + " and theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and p.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				qry = qry + " and employee_code = ? ";
				arrSize++;
			}
			qry = qry + "  group by p.department_code,c.department_name order by p.department_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				pValues[i++] = obj.getProject_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				pValues[i++] = obj.getEmployee_code();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<RoleMapping> getProjectFilterFromRoleMapping(RoleMapping obj) throws Exception {
		List<RoleMapping> objsList = new ArrayList<RoleMapping>();
		try {
			String qry = "SELECT  distinct p.project,	c.project_name  "
					+ " FROM [idea_role_mapping] p  "
					+ " left join [project] c on  p.project = c.project_code "
					+ "where project is not null and project <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				qry = qry + " and project = ? ";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + " and p.theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + "and p.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				qry = qry + " and p.employee_code = ? ";
				arrSize++;
			}
			qry = qry + " order by project asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				pValues[i++] = obj.getProject_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				pValues[i++] = obj.getEmployee_code();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<RoleMapping> getRoleMasterFilterList(RoleMapping obj) throws Exception {
		List<RoleMapping> objsList = new ArrayList<RoleMapping>();
		try {
			String qry = "SELECT distinct p.theme,	c.idea_code ,c.idea_type "
					+ " FROM [idea_role_mapping] p  "
					+ " left join [idea_role_master] c on  p.theme = c.idea_code "
					+ "where theme is not null and theme <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				qry = qry + " and project = ? ";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + " and p.theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + "and p.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				qry = qry + " and p.employee_code = ? ";
				arrSize++;
			}
			qry = qry + " order by theme asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				pValues[i++] = obj.getProject_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				pValues[i++] = obj.getEmployee_code();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<RoleMapping> getempFilterList(RoleMapping obj) throws Exception {
		List<RoleMapping> objsList = new ArrayList<RoleMapping>();
		try {
			String qry = "SELECT distinct p.employee_code,	c.user_name  "
					+ " FROM [idea_role_mapping] p  "
					+ " left join [user_profile] c on  p.employee_code = c.user_id "
					+ "where employee_code is not null and employee_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				qry = qry + " and project = ? ";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + " and p.theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + "and p.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				qry = qry + " and p.employee_code = ? ";
				arrSize++;
			}
			qry = qry + " order by employee_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				pValues[i++] = obj.getProject_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getEmployee_code())) {
				pValues[i++] = obj.getEmployee_code();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addRoleMapping(RoleMapping obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [idea_role_mapping] (project,	theme,	department_code,	employee_code,	role_code,status,created_date)"
					+ " VALUES "
					+ "(:project,	:theme,	:department_code,	:employee_code,	:role_code, :status, getdate())";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				int count2 = 0;
					//int countOfDocCOde = getCountOfDocCOde(document_code);
					if(!StringUtils.isEmpty(obj) && "Committee".equals(obj.getRole_code())) {
						User uObj = new User();
						uObj.setUser_id(obj.getEmployee_code());
						uObj.setIdea_base_role("Committee");
						namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
						String insert2Qry = "UPDATE [user_profile] set "
								+ "idea_base_role= :idea_base_role where user_id in ("+uObj.getUser_id()+") ";
						paramSource = new BeanPropertySqlParameterSource(uObj);		 
						count2 = namedParamJdbcTemplate.update(insert2Qry, paramSource);
					}
					/*
					 * if(count > 0) { String link_url
					 * =CommonConstants.HOST+"/brainbox/update-irm-form/" ;
					 * if(!StringUtils.isEmpty(obj.getEmployee_code()) ) { EMailSender emailSender =
					 * new EMailSender(); Mail mail = new Mail();
					 * //mail.setMailFrom(obj.getEmail_id()); mail.setMailTo(obj.getEmail_id());
					 * mail.setMailSubject("Approver for Incident no ["+obj.getDocument_code()+"]");
					 * String body = "Hi There," +
					 * "\n\n You are Initiated for Role of Approver for the Incident ["+obj.
					 * getDocument_code()+"] by "+obj.getUser_name()+"( "+obj.getUser_id()+" )" +
					 * ". for more details \n\n <br> Please follow the link  <a href="+link_url+obj.
					 * getDocument_code()+"><button>Click Here</button></a>";
					 * emailSender.sendReInitiate(mail.getMailTo(), mail.getMailSubject(), body
					 * ,obj); } }
					 */
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

	private int getCountOfDocCOde(String document_code2) throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet resultSet = null;
		int document_code_count = 0;
		try{
			con = dataSource.getConnection();
			String contract_updateQry = " SELECT count(document_no) as count FROM [safety_ims_workflow] where document_no = ? ";
			int i = 1;
			stmt = con.prepareStatement(contract_updateQry);
			stmt.setString(i++,document_code2);
			
			resultSet = stmt.executeQuery();
			while(resultSet.next()) {
				document_code_count = resultSet.getInt("count");
			}
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}finally {
			DBConnectionHandler.closeJDBCResoucrs(con, stmt, resultSet);
		}	
		return document_code_count;
	}

	private String getDocCode(RoleMapping cObj) throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet resultSet = null;
		String document_code = null;
		try{
			con = dataSource.getConnection();
			String contract_updateQry = " SELECT document_code FROM [safety_ims] where project_code = ? and department_code = ? and idea_type LIKE '%"+cObj.getTheme()+"%'  ";
			int i = 1;
			stmt = con.prepareStatement(contract_updateQry);
			stmt.setString(i++,cObj.getProject());
			stmt.setString(i++,cObj.getDepartment_code());
			resultSet = stmt.executeQuery();
			while(resultSet.next()) {
				document_code = resultSet.getString("document_code");
			}
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}finally {
			DBConnectionHandler.closeJDBCResoucrs(con, stmt, resultSet);
		}	
		return document_code;
		
	}
	
	public boolean updateRoleMapping(RoleMapping obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			if(obj.getRole_code().equals("Evaluator")) {
				obj.setEmployee_code(obj.getEmployee_code_one());
			}
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [idea_role_mapping] set modified_date= getdate(),employee_code= :employee_code, status= :update_status where id= :id ";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(updateQry, paramSource);
			if(count > 0) {
				if(!StringUtils.isEmpty(obj) && "Committee".equals(obj.getRole_code())) {
					User uObj = new User();
					uObj.setUser_id(obj.getEmployee_code());
					
					namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
					uObj.setIdea_base_role(null);
					String insert2Qry = "UPDATE [user_profile] set "
							+ "idea_base_role= :idea_base_role where idea_base_role = 'Committee' ";
					paramSource = new BeanPropertySqlParameterSource(uObj);		 
					count = namedParamJdbcTemplate.update(insert2Qry, paramSource);
					uObj.setIdea_base_role("Committee");
					String insert2Qry2 = "UPDATE [user_profile] set "
							+ "idea_base_role= :idea_base_role where user_id in ("+uObj.getUser_id()+") ";
					paramSource = new BeanPropertySqlParameterSource(uObj);		 
					count = namedParamJdbcTemplate.update(insert2Qry2, paramSource);
				}
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

	public List<RoleMapping> getFilteredRolesList(RoleMapping obj) throws Exception {
		List<RoleMapping> objsList = new ArrayList<RoleMapping>();
		List<RoleMapping> printList = new ArrayList<RoleMapping>();
		try {
			List<RoleMapping> objsList2 = null;
			String findRolesQry = "select role_code from idea_role_mapping where project = ? and department_code = ? and theme = ? and status <> 'Inactive' order by role_code asc";
			int arrSz = 3;
			int j =0;
			Object[] pValues1 = new Object[arrSz];
			pValues1[j++] = obj.getProject();
			pValues1[j++] = obj.getDepartment_code();
			pValues1[j++] = obj.getTheme();
			objsList2 = jdbcTemplate.query( findRolesQry, pValues1, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
			
			String qry = "SELECT t.idea_reporting_to as role_code FROM [idea_role_master] t  "
					+ "where idea_code is not null and idea_code <> ''  "; 
			/*
			 * int arrSize = 0; if(!StringUtils.isEmpty(obj) &&
			 * !StringUtils.isEmpty(obj.getTheme())) { qry = qry +
			 * " and idea_code = ?"; arrSize++; } qry = qry +
			 * " order by idea_code asc"; Object[] pValues = new Object[arrSize]; int i
			 * = 0; if(!StringUtils.isEmpty(obj) &&
			 * !StringUtils.isEmpty(obj.getTheme())) { pValues[i++] =
			 * obj.getTheme(); }
			 */
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
			
			for (RoleMapping emp : objsList) {
		        boolean found=false;
		        for (RoleMapping tgtEmp : objsList2) {
		            if ((emp.getRole_code().equals(tgtEmp.getRole_code()))) {
		                found=true;
		                break;
		            }
		        }
		        if(!found){
		            printList.add(emp);
		        }
		    }
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return printList;
	}

	public List<RoleMapping> getMappingUserSecurity(RoleMapping obj) throws Exception {
		List<RoleMapping> objsList = new ArrayList<RoleMapping>();
		try {
			String qry = "SELECT role_code,employee_code,project,department_code,theme  FROM [idea_role_mapping] p  "
					+ "where status is not null and status = 'Active'  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject())) {
				qry = qry + " and project = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + " and p.theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + "and p.department_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getRole_code())) {
				qry = qry + " and p.role_code = ? ";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject())) {
				pValues[i++] = obj.getProject();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getRole_code())) {
				pValues[i++] = obj.getRole_code();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<RoleMapping>(RoleMapping.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}
	
	
	
}
