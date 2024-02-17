package com.resustainability.reisp.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
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
import org.springframework.web.multipart.MultipartFile;

import com.resustainability.reisp.common.CommonMethods;
import com.resustainability.reisp.common.DBConnectionHandler;
import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.common.EMailSender;
import com.resustainability.reisp.common.FileUploads;
import com.resustainability.reisp.common.Mail;
import com.resustainability.reisp.constants.CommonConstants;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.Noida;
import com.resustainability.reisp.model.NoidaLog;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.BrainBox;

@Repository
public class BrainBoxDao {
	@Autowired
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	
	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<BrainBox> getProjectstList()  throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT project_code,project_name FROM [project] where project_code is not null and project_code <> '' and status = 'Active' "; 
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getDepartments()  throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT department_code,department_name FROM [department] where department_code is not null and department_code <> '' and status = 'Active' "; 
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getSbuList()  throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT sbu_code,sbu_name FROM [sbu] where sbu_code is not null and sbu_code <> '' and status = 'Active' "; 
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getThemesInBB(BrainBox obj)   throws Exception {
		List<BrainBox> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select c.id,c.idea_no,is_anonymous,w.status as maxRole,(select employee_code from [idea_role_mapping] where role_code = 'Committee') as committee_members,(select count(*) from [bb_is] where status = 'In Progress') as counts,"
					+ "(select max(FORMAT(action_taken, 'dd-MMM-yy | <br> | HH:mm')) from brain_box_work_flow where action_taken is not null and status <> 'In Progress' and idea_no = c.idea_no)  as action_taken,"
					+ "(select max(approver_type) from brain_box_work_flow where status = 'In Progress' and brain_box_work_flow.idea_no = c.idea_no) as maxRole2,";
					qry = qry +" (select count( distinct c.idea_no) from bb_is c left join [brain_box_work_flow] up on c.idea_no = w.idea_no  where c.theme is not null   ";

					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and  c.status = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
						qry = qry + " and  c.theme = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
						qry = qry + " and CONVERT(date, c.created_date)  BETWEEN ? and ?  ";
						arrSize++;
						arrSize++;
					}
					else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
						qry = qry + " and  CONVERT(date, c.created_date) = ? ";
						arrSize++;
					}
					else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
						qry = qry + " and  CONVERT(date, c.created_date) = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole())) 
							&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
						qry = qry + " and ( c.created_by = ? or approver_code in(select distinct approver_code from [brain_box_work_flow] where approver_code = ? ))";
						arrSize++;	arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
						qry = qry + " and c.created_by = ?";
						arrSize++;	
					}
					if(!StringUtils.isEmpty(obj) && StringUtils.isEmpty(obj.getI_pending())) {
						qry = qry + " and DATEDIFF(day,c.created_date,GETDATE()) between  0 and 30 ";
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
						qry = qry + " and  c.status = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
						qry = qry + " and  c.status = ? ";
						arrSize++;
						//arrSize++;
					}
		
					qry = qry +  " ) as all_themes ,"
							+ "  (select count(*) from [bb_is] c where c.[status] ='In Progress' ";
		
			
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
								qry = qry + "  and c.status = ? ";
								arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
								qry = qry + " and c.theme = ? ";
								arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
								qry = qry + " and CONVERT(date, c.created_date)  BETWEEN ? and ?  ";
								arrSize++;
								arrSize++;
							}
							else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
								qry = qry + " and  CONVERT(date, c.created_date) = ? ";
								arrSize++;
							}
							else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
								qry = qry + " and  CONVERT(date, c.created_date) = ? ";
								arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
									&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
								qry = qry + " and ( c.created_by = ? or approver_code in(select distinct approver_code from [brain_box_work_flow] where approver_code = ? ))";

								arrSize++;	arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
								qry = qry + " and c.created_by = ? ";
								arrSize++;	
							}
							if(!StringUtils.isEmpty(obj) && StringUtils.isEmpty(obj.getI_pending())) {
								qry = qry + " and DATEDIFF(day,c.created_date,GETDATE()) between  0 and 30 ";
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
								qry = qry + " and  c.status = ? ";
								arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
								qry = qry + " and  c.status = ? ";
								arrSize++;
								//arrSize++;
							}
						
							qry = qry + " ) as not_assigned,";
							qry = qry +	"(select count( c.[idea_no]) from [bb_is] c  where c.[idea_no] is not null and c.status ='Resolved'  ";
									
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
										qry = qry + "  and c.status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
										qry = qry + " and c.theme = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
										qry = qry + " and CONVERT(date, c.created_date)  BETWEEN ? and ?  ";
										arrSize++;
										arrSize++;
									}
									else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
										qry = qry + " and  CONVERT(date, c.created_date) = ? ";
										arrSize++;
									}
									else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
										qry = qry + " and  CONVERT(date, c.created_date) = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole())) 
											&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
										qry = qry + " and ( c.created_by = ? or approver_code in(select distinct approver_code from [brain_box_work_flow] where approver_code = ? ))";
										arrSize++;
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
										qry = qry + " and c.created_by = ?";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && StringUtils.isEmpty(obj.getI_pending())) {
										qry = qry + " and DATEDIFF(day,c.created_date,GETDATE()) between  0 and 30 ";
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
										qry = qry + " and  c.status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
										qry = qry + " and  c.status = ? ";
										arrSize++;
										//arrSize++;
									}
									
									qry = qry + " ) as active_themes,"
									+ "(select count( c.[idea_no]) from [bb_is] c  where c.[idea_no] is not null and c.status ='Rejected' ";
									
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
										qry = qry + " and  c.status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
										qry = qry + " and  c.theme = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
										qry = qry + " and CONVERT(date, c.created_date)  BETWEEN ? and ?  ";
										arrSize++;
										arrSize++;
									}
									else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
										qry = qry + " and  CONVERT(date, c.created_date) = ? ";
										arrSize++;
									}
									else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
										qry = qry + " and  CONVERT(date, c.created_date) = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole())) 
											&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
										qry = qry + " and ( c.created_by = ? or approver_code in(select distinct approver_code from [brain_box_work_flow] where approver_code = ? ))";
										arrSize++;
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
										qry = qry + " and c.created_by = ?";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && StringUtils.isEmpty(obj.getI_pending())) {
										qry = qry + " and DATEDIFF(day,c.created_date,GETDATE()) between  0 and 30 ";
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
										qry = qry + " and  c.status = ? ";
										arrSize++;
									}
									if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
										qry = qry + " and  c.status = ? ";
										arrSize++;
										//arrSize++;
									}
									
										
					qry = qry + " ) as inActive_themes,"
							+ "c.id	,w.approver_type,FORMAT(w.action_taken , 'dd-MMM-yy HH : mm') as action_taken_now,c.idea_no,c.title,c.theme as theme_code,c.created_by,u.user_name,w.approver_code,u1.user_name as modified_user_name,	theme_name,p.project_code,project_name,s.sbu_code, sbu_name,d.department_code,department_name,c.status,c.description,	"
							+ "FORMAT (c.created_date, 'dd-MMM-yy | <br> | HH : mm') as created_date,"
							+ " FORMAT	(c.modified_date, 'dd-MMM-yy') as modified_date from [bb_is] c "
							+ " left join brain_box_work_flow w on c.idea_no = w.idea_no "
							+ " left join bb_theme t on c.theme = t.theme_code "
							+ " left join project p on c.project = p.project_code "
							+ " left join sbu s on c.sbu = s.sbu_code "
							+ " left join department d on c.department = d.department_code "
							+ " left join [user_profile] u on c.created_by = u.user_id "
							+ " left join [user_profile] u1 on w.approver_code = u1.user_id "
							+ " where c.theme is not null and c.theme <> '' ";
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and p.sbu_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				qry = qry + " and c.project_code = ? ";
				arrSize++;
			}
									
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + " and c.theme = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and  c.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				qry = qry + " and CONVERT(date, c.created_date)  BETWEEN ? and ?  ";
				arrSize++;
				arrSize++;
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				qry = qry + " and  CONVERT(date, c.created_date) = ? ";
				arrSize++;
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				qry = qry + " and  CONVERT(date, c.created_date) = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				qry = qry + " and ( c.created_by = ? or approver_code in(select distinct approver_code from [brain_box_work_flow] where approver_code = ? ))";
				arrSize++;
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
				qry = qry + " and c.created_by = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && StringUtils.isEmpty(obj.getI_pending())) {
				qry = qry + " and DATEDIFF(day,c.created_date,GETDATE()) between  0 and 30 ";
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				qry = qry + " and  w.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				qry = qry + " and  c.status = ? ";
				arrSize++;
				//arrSize++;
			}
			
			qry = qry + " order by w.status asc  ";
			Object[] pValues = new Object[arrSize];
			int i = 0;
		
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getFrom_date();
				pValues[i++] = obj.getTo_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				pValues[i++] = obj.getFrom_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getTo_date();
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole())) 
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				pValues[i++] = obj.getUser(); pValues[i++] = obj.getUser();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
			pValues[i++] = obj.getAdmin_incidents();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				pValues[i++] = obj.getI_pending();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				pValues[i++] = obj.getI_completed();
				//pValues[i++] = obj.getUser();
			}
			
				
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getFrom_date();
				pValues[i++] = obj.getTo_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				pValues[i++] = obj.getFrom_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getTo_date();
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				pValues[i++] = obj.getUser(); pValues[i++] = obj.getUser();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
			pValues[i++] = obj.getAdmin_incidents();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				pValues[i++] = obj.getI_pending();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				pValues[i++] = obj.getI_completed();
				//pValues[i++] = obj.getUser();
			}
			
				
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getFrom_date();
				pValues[i++] = obj.getTo_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				pValues[i++] = obj.getFrom_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getTo_date();
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole())) 
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				pValues[i++] = obj.getUser(); pValues[i++] = obj.getUser();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
			pValues[i++] = obj.getAdmin_incidents();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				pValues[i++] = obj.getI_pending();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				pValues[i++] = obj.getI_completed();
				//pValues[i++] = obj.getUser();
			}
			
				
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getFrom_date();
				pValues[i++] = obj.getTo_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				pValues[i++] = obj.getFrom_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getTo_date();
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole())) 
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				pValues[i++] = obj.getUser(); pValues[i++] = obj.getUser();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
			pValues[i++] = obj.getAdmin_incidents();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				pValues[i++] = obj.getI_pending();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				pValues[i++] = obj.getI_completed();
				//pValues[i++] = obj.getUser();
			}
			
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getFrom_date();
				pValues[i++] = obj.getTo_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				pValues[i++] = obj.getFrom_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getTo_date();
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				pValues[i++] = obj.getUser(); pValues[i++] = obj.getUser();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
			pValues[i++] = obj.getAdmin_incidents();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				pValues[i++] = obj.getI_pending();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				pValues[i++] = obj.getI_completed();
				//pValues[i++] = obj.getUser();
			}
			
				
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
			
			Set<String> nameSet = new HashSet<>();
			objsList = objsList.stream()
		            .filter(e -> nameSet.add(e.getIdea_no()))
		            .collect(Collectors.toList());
			for(BrainBox bb : objsList) {
				if(bb.getMaxRole().contains("Back")) {
					objsList.get(0).setMaxRole("Back");
				}
			}
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getThemeFilterListInBB(BrainBox obj)  throws Exception  {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT c.theme as theme_code,t.theme_name "
					+ " FROM [bb_is] c "
					+ "left join brain_box_work_flow w on c.idea_no = w.idea_no "
					+ " left join bb_theme t on c.theme = t.theme_code "
					+ "where theme_code is not null and theme_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + "and c.theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and c.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				qry = qry + " and CONVERT(date, c.created_date)  BETWEEN ? and ?  ";
				arrSize++;
				arrSize++;
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				qry = qry + " and  CONVERT(date, c.created_date) = ? ";
				arrSize++;
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				qry = qry + " and  CONVERT(date, c.created_date) = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				qry = qry + " and ( c.created_by = ? or w.approver_code in(select distinct approver_code from [brain_box_work_flow] where approver_code = ? ))";
				arrSize++;
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
				qry = qry + " and c.created_by = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && StringUtils.isEmpty(obj.getI_pending())) {
				qry = qry + " and DATEDIFF(day,c.created_date,GETDATE()) between  0 and 30 ";
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				qry = qry + " and  w.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				qry = qry + " and  c.status = ? ";
				arrSize++;
				//arrSize++;
			}
			qry = qry + " group by c.theme,theme_name order by c.theme asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getFrom_date();
				pValues[i++] = obj.getTo_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				pValues[i++] = obj.getFrom_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getTo_date();
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				pValues[i++] = obj.getUser(); pValues[i++] = obj.getUser();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
			pValues[i++] = obj.getAdmin_incidents();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				pValues[i++] = obj.getI_pending();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				pValues[i++] = obj.getI_completed();
				//pValues[i++] = obj.getUser();
			}
			
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getStatusFilterListInThemes(BrainBox obj)  throws Exception  {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT c.status FROM [bb_is] c left join brain_box_work_flow w on c.idea_no = w.idea_no where c.status is not null and c.status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				qry = qry + "and c.theme = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and c.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				qry = qry + " and CONVERT(date, c.created_date)  BETWEEN ? and ?  ";
				arrSize++;
				arrSize++;
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				qry = qry + " and  CONVERT(date, c.created_date) = ? ";
				arrSize++;
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				qry = qry + " and  CONVERT(date, c.created_date) = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				qry = qry + " and ( c.created_by = ? or w.approver_code in(select distinct approver_code from [brain_box_work_flow] where approver_code = ? ))";
				arrSize++;
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
				qry = qry + " and c.created_by = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && StringUtils.isEmpty(obj.getI_pending())) {
				qry = qry + " and DATEDIFF(day,c.created_date,GETDATE()) between  0 and 30 ";
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				qry = qry + " and  w.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				qry = qry + " and  c.status = ? ";
				arrSize++;
				//arrSize++;
			}
			qry = qry + " group by c.status order by c.status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTheme())) {
				pValues[i++] = obj.getTheme();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date()) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getFrom_date();
				pValues[i++] = obj.getTo_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getFrom_date())) {
				pValues[i++] = obj.getFrom_date();
			}
			else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getTo_date())) {
				pValues[i++] = obj.getTo_date();
			}
			if(!StringUtils.isEmpty(obj) && (!CommonConstants.ADMIN.equals(obj.getRole()) && !CommonConstants.MANAGEMENT.equals(obj.getRole()))
					&& !StringUtils.isEmpty(obj.getUser())  && !"Committee".equals(obj.getIdea_base_role()) ) {
				pValues[i++] = obj.getUser(); pValues[i++] = obj.getUser();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getAdmin_incidents())) {
			pValues[i++] = obj.getAdmin_incidents();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_pending())) {
				pValues[i++] = obj.getI_pending();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getI_completed())) {
				pValues[i++] = obj.getI_completed();
				//pValues[i++] = obj.getUser();
			}
			
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	private String getUniqueID(BrainBox obj) throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet resultSet = null;
		String u_id = null;
		try{
			con = dataSource.getConnection();
			String contract_updateQry = " SELECT ISNULL(MAX(id +1), 0 +1) as maxId FROM [bb_is] ";
			stmt = con.prepareStatement(contract_updateQry);
			resultSet = stmt.executeQuery();
			while(resultSet.next()) {
				u_id = resultSet.getString("maxId");
			}
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}finally {
			DBConnectionHandler.closeJDBCResoucrs(con, stmt, resultSet);
		}	
		return u_id;
		
	}
	
	public boolean addTheme(BrainBox obj)  throws Exception  {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		Calendar now = Calendar.getInstance();
	    DateFormat df = new SimpleDateFormat("_yyMM_");
	    String result = df.format(now.getTime());
		 String idea_no = result;
		try {
			obj.setStatus("Open");
			String file_name = "";
			String u_id = getUniqueID(obj);
			obj.setIdea_no(u_id);
			obj.setStatus("In Progress");
			if(StringUtils.isEmpty(obj.getApprover_code())) {
				obj.setStatus(null);
			}
			
			for (int i = 0; i < (obj.getMediaList().length); i++) {
				MultipartFile multipartFile = obj.getMediaList()[i];
				if (null != multipartFile && !multipartFile.isEmpty()) {
					String saveDirectory = CommonConstants.BB_FILE_SAVING_PATH + obj.getIdea_no() + "/";
					String fileName = multipartFile.getOriginalFilename();
					//obj.setCreated_date(DateParser.parse(date));
					if (null != multipartFile && !multipartFile.isEmpty()) {
						FileUploads.singleFileSaving(multipartFile, saveDirectory, fileName);
					}
					file_name = file_name+ fileName+",";
				}
			}
			if(!StringUtils.isEmpty(file_name)) {
				StringBuilder builder = new StringBuilder(file_name);
				int lastindex = file_name.lastIndexOf(",");
				builder.replace(lastindex, lastindex + 1, "" );
				file_name = builder.toString();
				obj.setAttachment(file_name);
			}
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [bb_is] "
					+ "(idea_no,title,theme,description,sbu,project,department,status,created_date,attachment,created_by,is_anonymous)"
					+ " VALUES "
					+ " (:idea_no,:title,:theme,:description,:sbu_code,:project_code,:department_code,:status,getdate(),:attachment,:created_by,:is_anonymous)";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
				String insertQry2 = "INSERT INTO [brain_box_work_flow] "
						+ "(idea_no,theme,status,relevent_idea,comments,approver_type,approver_code,assigned_on)"
						+ " VALUES "
						+ " (:idea_no,:theme,:status,:relevent_idea,:comments,:approver_type,:approver_code,getdate())";
				paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry2, paramSource);
				
			    obj.setAction("Idea Submission");
			    String HIS_qry = "INSERT INTO [rewards_history] (action,	reward_points,	user_id,created_date) VALUES (:action,10,:created_by,getdate())";
		    	paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(HIS_qry, paramSource);
			    
			    String rewardQry = "update user_profile set reward_points = COALESCE(reward_points, 0) + 10 "
						+ " where user_id= :created_by";
					 paramSource = new BeanPropertySqlParameterSource(obj);		 
				    count = namedParamJdbcTemplate.update(rewardQry, paramSource);	
				    
				if(!StringUtils.isEmpty(obj.getApprover_code()) ) {
					EMailSender emailSender = new EMailSender();
					String link_url =CommonConstants.HOST+"/brainbox/update-bb-form/" ;
					Mail mail = new Mail();
					mail.setMailTo(obj.getEmail());
					mail.setMailSubject("Kind regards, for your idea!");
					String body = "Dear, "+obj.getUser_name()+"<br>"
							+ " Greetings from <b>Team Excellence!</b>"
							+ "<br> Thank you for submitting your idea <b>"+obj.getTitle()+"</b>. Your Idea No. is #"+obj.getIdea_no()
									+ "<br>Your idea is presently under evaluation, we will get back to you with the feedback of the evaluation committee, at the earliest. Meanwhile, keep thinking out of the box and keep sharing your ideas."
									+ "<br>For more details Please follow the link <a href="+link_url+obj.getIdea_no()+"><button>Click Here</button></a>"
							+ "<br><br>"
							+ "<br> Kind regards,"
							+ "<p style='color : red'><b>Team Excellence</b></p>"
							+ "<b>Re Sustainability</b>";
					String subject = "Team Excellence";
					emailSender.sendAdd(mail.getMailTo(), mail.getMailSubject(), body,obj,subject);
		
					//*************************  Approvers ***********************************
					 if(!StringUtils.isEmpty(obj.getEmail_id()) ) {
						 java.util.Date date = new java.util.Date();    
						 emailSender = new EMailSender();
						 mail = new Mail();
						 mail.setMailTo(obj.getEmail_id());
						 mail.setMailSubject("Idea - Submission | Team Excellence");
						 body = "Dear Evaluator, <br>"
									+ " Greetings From <b>Team Excellence | Re Sustainability</b>"
									+ "<br> A New <b>Idea</b> has been Submitted by "+obj.getUser_name() +" [ "+obj.getUser_id()+" ],"
											+ " It is now awaiting your review."
											+ "<p>Idea No : #"+obj.getIdea_no()+"</p>"
											+ "<p>Title : "+obj.getTitle()+"</p>"
											+ "<p>Email : "+obj.getEmail()+"</p>"
											//+ "<p><b>Idea </b>: "+obj.getDescription()
											+ "For more details about the Idea Please follow the link  <a href="+link_url+obj.getIdea_no()+"><button>Click Here</button></a>"
									+ "<br><br>"
									+ "Kind regards,"
									+ "<p style='color : red'><b>Team Excellence</b></p>"
									+ "<b>Re Sustainability</b>";
							subject = "Team Excellence";
							emailSender.sendAdd(mail.getMailTo(), mail.getMailSubject(), body,obj,subject);
					 }
					 
				}
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public boolean updateTheme(BrainBox obj)  throws Exception  {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			String file_name = "";
			obj.setStatusChanged("Reviewed");
			if(!StringUtils.isEmpty(obj.getSb_notes())) {
				obj.setStatusChanged("Send Back");
			}
			if(!StringUtils.isEmpty(obj.getAssign_theme())) {
				obj.setTheme(obj.getAssign_theme());
			}
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
///////////////////////////// Send back Condition //////////////////////////////////////////////
			if(!StringUtils.isEmpty(obj.getSb_notes()) && !StringUtils.isEmpty(obj.getApprover_type_before() ) && "Evaluator".equals(obj.getApprover_type_before())  ) {
				obj.setStatusChanged("Rejected");
				String finalStatusUpdateQry = "Update [bb_is] set "
						+ " status= :statusChanged,modified_by=:modified_by where idea_no = :idea_no";
				BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
				count = namedParamJdbcTemplate.update(finalStatusUpdateQry, paramSource);
					
				String rejectedQRy = "Update [brain_box_work_flow] set estimated_improvements= :estimated_improvements"
						+ ",do_ability= :do_ability,bb_impact= :bb_impact,impact_business= :impact_business,"
						+ " status= :statusChanged,sb_notes= :sb_notes,sb_date= getdate() where idea_no = :idea_no and status = 'In Progress' and approver_type= :type_prevs ";
				paramSource = new BeanPropertySqlParameterSource(obj);		 
				count = namedParamJdbcTemplate.update(rejectedQRy, paramSource);
					
					if(count > 0) {
						String link_url =CommonConstants.HOST+"/brainbox/update-bb-form/" ;
						String subject = "Team Excellence";
						EMailSender emailSender = new EMailSender();
						Mail mail = new Mail();
						//mail.setMailFrom(obj.getEmail_id());
						mail.setMailTo(obj.getEmail_id());
						mail.setMailBcc(obj.getSubmitter_email());
						mail.setMailSubject("Idea - Report | Team Excellence");
						String body = "Hi,"
								+ "<br><br>The following idea has been Reviewed and Rejected by Evaluator "+obj.getUser_name()+"( "+obj.getUser_id()+" )<br>"
										+ "Resaon : ( "+obj.getSb_notes()+" )"
										+ "<br> Idea Submitter : [ "+obj.getCreated_by()+" ] "+obj.getCreater_user_name()
										+ "<br> Email : "+obj.getSubmitter_email()
										+ "<p>Title : "+obj.getTitle()+"</p>"
										+ "For more details Please follow the link  <a href="+link_url+obj.getIdea_no()+"><button>Click Here</button></a>"
										+ "<br><br>"
										+ "Kind regards,"
										+ "<p style='color : red'><b>Team Excellence</b></p>"
										+ "<b>Re Sustainability</b>";
						emailSender.send(mail.getMailTo(),mail.getMailBcc(), mail.getMailSubject(), body ,obj,subject);
						flag = true;
					}
			}else {
				if(!StringUtils.isEmpty(obj.getSb_notes()) ) {
					String updateQry = "Update [brain_box_work_flow] set estimated_improvements= :estimated_improvements"
							+",do_ability= :do_ability,bb_impact= :bb_impact,impact_business= :impact_business,"
							+ " status= :statusChanged ,theme= :theme "
							+ " where idea_no = :idea_no and approver_type= :type_prevs and approver_code= :approver_prvs ";
						BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
						count = namedParamJdbcTemplate.update(updateQry, paramSource);
						obj.setStatusChanged("Sent Back");
			
						String updateQryNext = "Update [brain_box_work_flow] set estimated_improvements= :estimated_improvements,"
								+ "	do_ability= :do_ability,bb_impact= :bb_impact,impact_business= :impact_business,"
								+ " status= :statusChanged,sb_date= getdate(),comments= :ca_before,relevent_idea= :relevent_idea,theme= :theme   "
								+ "where idea_no = :idea_no and approver_type= :approver_type_before and approver_code= :employee_code_before and status = 'In Progress' ";
							paramSource = new BeanPropertySqlParameterSource(obj);		 
							count = namedParamJdbcTemplate.update(updateQryNext, paramSource);
						
						if(count > 0 && !StringUtils.isEmpty(obj.getEmployee_code_before()) ) {
							obj.setStatus("In Progress");
							String insertQry = "INSERT INTO [brain_box_work_flow] "
												+ "(idea_no,approver_type,theme,relevent_idea, approver_code,status,assigned_on,comments,sb_notes,sb_date)"
												+ " VALUES "
												+ "(:idea_no,:type_prevs,:theme,:relevent_idea,:approver_prvs,:status,getdate(),:ca_before,:sb_notes,getdate())";
							paramSource = new BeanPropertySqlParameterSource(obj);		 
						    count = namedParamJdbcTemplate.update(insertQry, paramSource);
							if(count > 0) {
								String link_url =CommonConstants.HOST+"/brainbox/update-bb-form/" ;
								String subject = "Team Excellence";
								EMailSender emailSender = new EMailSender();
								Mail mail = new Mail();
								//mail.setMailFrom(obj.getEmail_id());
								mail.setMailTo(obj.getSend_back_email());
								mail.setMailBcc(obj.getSubmitter_email());
								mail.setMailSubject("Idea Rejected | Team Excellence");
								String body = "Hi Team,"
										+ "<br><br>The following idea has been Reviewed and Rejected by Committee <br>"
												+ "Resaon : ( "+obj.getSb_notes()+" )"
												+ "<br> Idea No : #"+obj.getIdea_no()
												+ "<br> Idea Submitter : [ "+obj.getCreated_by()+" ] "+obj.getCreater_user_name()
												+ "<br> Email : "+obj.getSubmitter_email()
												+ "<p>Title : "+obj.getTitle()+"</p>"
												+ "For more details Please follow the link  <a href="+link_url+obj.getIdea_no()+"><button>Click Here</button></a>"
												+ "<br><br>"
												+ "Kind regards,"
												+ "<p style='color : red'><b>Team Excellence</b></p>"
												+ "<b>Re Sustainability</b>";
								emailSender.send(mail.getMailTo(),mail.getMailBcc(), mail.getMailSubject(), body ,obj,subject);
								flag = true;
							}
					}
				}else {
					///////////////////////////// UPDATING LEVEL ! //////////////////////////////////////////////
					if(!StringUtils.isEmpty(obj.getStatus())) {
						String fileName  = null;
						obj.setStatusChanged("Reviewed");
						String updateQry = "Update [brain_box_work_flow] set estimated_improvements= :estimated_improvements"
								+ ",do_ability= :do_ability,bb_impact= :bb_impact,impact_business= :impact_business,"
								+ " status= :statusChanged,action_taken= getdate(),theme= :theme,comments= :comments,relevent_idea= :relevent_idea  "
								+ "where idea_no = :idea_no and approver_type= :approver_type_before and approver_code= :employee_code_before and status <> 'Send Back' and status <> 'Sent Back' ";
							BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
							count = namedParamJdbcTemplate.update(updateQry, paramSource);
							
						//////////////////////////////////INSERT NEW LEVEL /////////////////////////////////////////////////
							
							if(count > 0 && !StringUtils.isEmpty(obj.getEmployee_code()) ) {
								obj.setStatus("In Progress");  
								String insertQry = "INSERT INTO [brain_box_work_flow] "
													+ "(idea_no,approver_type,relevent_idea,theme,approver_code,status,assigned_on)"
													+ " VALUES "
													+ "(:idea_no,:approver_type,:relevent_idea,:theme,:employee_code,:status,getdate())";
								paramSource = new BeanPropertySqlParameterSource(obj);		 
							    count = namedParamJdbcTemplate.update(insertQry, paramSource);
							}
							    if(count > 0 && !StringUtils.isEmpty(obj.getEmployee_code()) ) {
							    	List<BrainBox> emailsList = new ArrayList<BrainBox>();
										String qry = "SELECT user_id,user_name,email_id FROM [user_profile] where user_id in ("+obj.getEmployee_code()+") "; 
										emailsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
										String email = "";
								    	for(BrainBox emails : emailsList) {
								    		email = email +emails.getEmail_id()+",";
								    	}
								    	email = email.substring(0, email.length()-1);
								    	String link_url =CommonConstants.HOST+"/brainbox/update-bb-form/" ;
										String subject = "Team Excellence";
										if(!StringUtils.isEmpty(obj.getEmployee_code()) ) {
											EMailSender emailSender = new EMailSender();
											Mail mail = new Mail();
											//mail.setMailFrom(obj.getEmail_id());
											mail.setMailTo(email);
											mail.setMailBcc(obj.getSubmitter_email());
											mail.setMailSubject("Idea awaiting your review");
											String body = "Dear committee member,"
													+ "<br><br>The following idea has been approved by the evaluator "+obj.getNext_level_user()+"( "+obj.getEmployee_code_before()+" ), It is now awaiting your review."
															+ "<br> Idea No : #"+obj.getIdea_no()
															+ "<br> Title : "+obj.getTitle()
															+ "<br> Idea Submitter : [ "+obj.getCreated_by()+" ] "+obj.getCreater_user_name()
															+ "<br> Email : "+obj.getSubmitter_email()
															+ "<br>For more details Please follow the link  <a href="+link_url+obj.getIdea_no()+"><button>Click Here</button></a>"
															+ "<br> Business Unit : "+obj.getSbu_name()
															+ "<br><br>"
															+ "Kind regards,"
															+ "<p style='color : red'><b>Team Excellence</b></p>"
															+ "<b>Re Sustainability</b>";
											emailSender.send(mail.getMailTo(),mail.getMailBcc(), mail.getMailSubject(), body ,obj,subject);
									   }
								}else {
									List<BrainBox> emailsList = new ArrayList<BrainBox>();
									String qry = "SELECT user_id,user_name,email_id FROM [user_profile] where user_id in ("+obj.getEmployee_code_before()+") "; 
									emailsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
									String email = "";
							    	for(BrainBox emails : emailsList) {
							    		email = email +emails.getEmail_id()+",";
							    	}
							    	email = email.substring(0, email.length()-1);
								  	String link_url =CommonConstants.HOST+"/brainbox/update-bb-form/" ;
									String subject = "Team Excellence";
									if(!StringUtils.isEmpty(obj.getEmployee_code_before()) ) {
										EMailSender emailSender = new EMailSender();
										Mail mail = new Mail();
										//mail.setMailFrom(obj.getEmail_id());
										mail.setMailTo(email+","+obj.getSend_back_email());
										mail.setMailBcc(obj.getSubmitter_email());
										mail.setMailSubject("Idea Approved");
										String body = "Hi Congrats!,"
												+ "<br><br>The following idea has been Evaluated and Approved by the Committee "
														+ "<br> Idea No : #"+obj.getIdea_no()
														+ "<br> Title : "+obj.getTitle()
														+ "<br> Idea Submitter : [ "+obj.getCreated_by()+" ] "+obj.getCreater_user_name()
														+ "<br> Email : "+obj.getSubmitter_email()
														+ "<br>For more details Please follow the link  <a href="+link_url+obj.getIdea_no()+"><button>Click Here</button></a>"
														+ "<br><br>"
														+ "Kind regards,"
														+ "<p style='color : red'><b>Team Excellence</b></p>"
														+ "<b>Re Sustainability</b>";
										emailSender.send(mail.getMailTo(),mail.getMailBcc(), mail.getMailSubject(), body ,obj,subject);
								   }
								}
							
					}else {
						String updateQry = "Update [brain_box_work_flow] set estimated_improvements= :estimated_improvements"
								+ "	,do_ability= :do_ability,bb_impact= :bb_impact,impact_business= :impact_business,"
								+ " status= :statusChanged,action_taken= getdate(),theme= :theme,comments= :comments ,relevent_idea= :relevent_idea "
								+ "where idea_no = :idea_no and approver_type= :approver_type_before and approver_code= :employee_code_before and status <> 'Send Back' and status <> 'Sent Back' ";
							BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
							count = namedParamJdbcTemplate.update(updateQry, paramSource);
						//////////////////////////////////INSERT NEW LEVEL /////////////////////////////////////////////////
							if(count > 0 && !StringUtils.isEmpty(obj.getEmployee_code()) || !StringUtils.isEmpty(obj.getEmployee_code_before())) {
								if(count > 0 && !StringUtils.isEmpty(obj.getEmployee_code())) {
									obj.setStatus("In Progress");
									String insertQry = "INSERT INTO [brain_box_work_flow] "
														+ "(idea_no,approver_type,theme,relevent_idea,approver_code,status,assigned_on)"
														+ " VALUES "
														+ "(:idea_no,:approver_type,:theme,:relevent_idea,:employee_code,:status,getdate())";
									paramSource = new BeanPropertySqlParameterSource(obj);		 
								    count = namedParamJdbcTemplate.update(insertQry, paramSource);
							}
					   }
				  }
					
			 }
			  if(count > 0) {
				if(StringUtils.isEmpty(obj.getEmployee_code()) && StringUtils.isEmpty(obj.getSb_notes()) ) {
					obj.setStatusChanged("Resolved");
					String finalStatusUpdateQry = "Update [bb_is] set "
							+ " status= :statusChanged,modified_by=:modified_by where idea_no = :idea_no";
					BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
						count = namedParamJdbcTemplate.update(finalStatusUpdateQry, paramSource);
						   ///////////// REWARDS //////////////////////////////////
					    
					    String rewardQry = "update user_profile set reward_points = COALESCE(reward_points, 0) + 20 "
								+ " where user_id= :created_by";
							 paramSource = new BeanPropertySqlParameterSource(obj);		 
						    count = namedParamJdbcTemplate.update(rewardQry, paramSource);	
				}
					flag = true;
			  }
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public List<BrainBox> getThemeList() throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT theme_code,theme_name FROM [bb_theme] where theme_code is not null and theme_code <> '' and status = 'Active' "; 
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public BrainBox getBBDocumentDEtails(BrainBox bb) throws Exception {
		BrainBox obj = null;
		try {
			String qry = "select TOP(1) title,rm.idea_code,c.theme,theme_name,approver_type,u1.email_id,is_anonymous,u.email_id as submitter_email,p.sbu_code,c.attachment,	c.idea_no, p.project_code,p.project_name,"
					+ "c.description,up.status,c.status as mainStatus,d.department_code,d.department_name"
					+"	,c.created_by,c.modified_by,u2.user_name as modified_user_name,u2.email_id as modified_user_email,u.user_name, up.approver_code,u1.user_name as approver_name,"
					+ "FORMAT(up.action_taken, 'dd-MMM-yy  HH:mm') as action_taken,FORMAT(c.created_date, 'dd-MMM-yy  HH:mm') as created_date from [bb_is] c "
					+" left join [brain_box_work_flow] up on c.idea_no = up.idea_no "
					+" left join [project] p on c.project = p.project_code "
					+ " left join [sbu] sb on p.sbu_code = sb.sbu_code"
					+ " left join [bb_theme] bt on c.theme = bt.theme_code"
					+" left join [department] d on c.department = d.department_code "
					+" left join [idea_role_master] rm on c.theme = rm.idea_code "
					+" left join [user_profile] u on c.created_by = u.user_id "
					+" left join [user_profile] u2 on c.modified_by = u2.user_id "
					+" left join [user_profile] u1 on up.approver_code = u1.user_id "
					+" where  c.idea_no is not null  " ; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(bb) && !StringUtils.isEmpty(bb.getIdea_no())) {
				qry = qry + " and c.idea_no = ? ";
				arrSize++;
			}
			qry = qry + "order by approver_type desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(bb) && !StringUtils.isEmpty(bb.getIdea_no())) {
				pValues[i++] = bb.getIdea_no();
			}
			obj = (BrainBox)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
			obj.setMaxRole(bb.getSendBack());
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(bb.getIdea_no())) {
				List<BrainBox> objsList = null;
				String qryDetails = "select distinct w.approver_type,is_anonymous,w.relevent_idea,s.theme,theme_name,s.idea_no as idea_no,w.approver_code,w.status,FORMAT(w.assigned_on, 'dd-MMM-yy  HH:mm') as assigned_on,sb_notes,"
						+ "FORMAT(w.action_taken, 'dd-MMM-yy  HH:mm') as action_taken,FORMAT(w.sb_date, 'dd-MMM-yy  HH:mm') as sb_date,u.user_name as approver_name,"
						+ "estimated_improvements,do_ability,bb_impact,impact_business,"
						+ "u.email_id,comments from brain_box_work_flow w "
						+ " left join [bb_is] s on w.idea_no = s.idea_no "
						+ " left join [bb_theme] bt on s.theme = bt.theme_code "
						+ "left join [user_profile] u on w.approver_code = u.user_id where w.idea_no = ? and w.status in('Reviewed','In Progress')  "
						+ "order by w.approver_type desc ";
				
				objsList = jdbcTemplate.query(qryDetails, new Object[] {bb.getIdea_no()}, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));	
				if(objsList.size() == 0) {
					String qryDetails2  = "select distinct w.approver_type,is_anonymous,w.relevent_idea,s.theme,theme_name,s.idea_no as idea_no,w.approver_code,w.status,FORMAT(w.assigned_on, 'dd-MMM-yy  HH:mm') as assigned_on,sb_notes,"
							+ "FORMAT(w.action_taken, 'dd-MMM-yy  HH:mm') as action_taken,FORMAT(w.sb_date, 'dd-MMM-yy  HH:mm') as sb_date,u.user_name as approver_name,"
							+ "estimated_improvements,do_ability,bb_impact,impact_business,"
							+ "u.email_id,comments from brain_box_work_flow w "
							+ " left join [bb_is] s on w.idea_no = s.idea_no "
							+ " left join [bb_theme] bt on s.theme = bt.theme_code "
							+ "left join [user_profile] u on w.approver_code = u.user_id where w.idea_no = ? and w.status in('Reviewed','In Progress')  "
							+ "order by w.approver_type desc ";
					
					objsList = jdbcTemplate.query(qryDetails2, new Object[] {bb.getIdea_no()}, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
				}
				obj.setBBIncidentsList(objsList);
		
				List<BrainBox> objsList1 = null;
				String qryRoleDetails = "select distinct role_code,employee_code,u.email_id,u.user_id,u.user_name as next_level_user from [idea_role_mapping] w "
					//	+ " left join [brain_box_work_flow] ss on w.employee_code = ss.approver_code "
						+ "left join [user_profile] u on w.employee_code = u.user_id "
						+ "  order by role_code desc ";
				
				objsList1 = jdbcTemplate.query(qryRoleDetails, new Object[] {}, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));	
				obj.setBBRolesList(objsList1);
			}
		}catch(Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return obj;
	}

	public List<BrainBox> getRoleMappingforBBForm(BrainBox obj) throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT s.employee_code,c.user_id,c.user_name,s.role_code,c.email_id FROM [idea_role_mapping] s "
					+ " left join [user_profile] c on s.employee_code = c.user_id "
					+ " where  s.employee_code is not null and  s.employee_code <> '' and role_code = 'Evaluator' and status <> 'Inactive' "; 
			
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<BrainBox> getFilteredProjectsListBB(BrainBox obj) throws SQLException {
		List<BrainBox> menuList = null;
		try{  
			String qry = "SELECT project_code ,project_name FROM [project] d "
					+ "  left join sbu p on d.sbu_code = p.sbu_code "
					+ " where d.project_code is not null and  d.project_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and p.sbu_code = ? ";
				arrSize++;
			}
			qry = qry + " order by d.project_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			menuList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<BrainBox> getSBUList() throws SQLException {
		List<BrainBox> menuList = null;
		try{  
			String qry = "SELECT sbu_code ,sbu_name FROM sbu"; 
			
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<BrainBox> PHFilter(BrainBox obj) throws SQLException {
		List<BrainBox> menuList = null;
		try{  
			String qry = "SELECT  department_code ,department_name,assigned_to_sbu,project_code,up.user_id,user_name,up.email_id FROM [department] d    "
					+ "left join user_profile up on d.department_code = up.base_department  "
					+ "left join project p on up.base_project = p.project_code   "
					+ "where d.department_code is not null and  d.department_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				qry = qry + " and p.project_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and department_code = ? ";
				arrSize++;
			}
			qry = qry + " group by  department_code ,department_name,assigned_to_sbu,project_code,up.user_id,user_name,up.email_id order by   d.department_code asc ";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getProject_code())) {
				pValues[i++] = obj.getProject_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			menuList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<BrainBox> getBBHistoryList(BrainBox obj) throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		List<BrainBox> objsList1 = new ArrayList<BrainBox>();
		List<BrainBox> merge = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT s.idea_no,is_anonymous,estimated_improvements,do_ability,bb_impact,impact_business"
					+ "      ,approver_type"
					+ "      ,approver_code,ss.created_by ,u1.user_name "
					+ "      ,s.status"
					+ "      ,FORMAT(assigned_on, 'dd-MMM-yy  HH:mm') as assigned_on"
					+ "      ,FORMAT(action_taken, 'dd-MMM-yy  HH:mm') as action_taken"
					+ "      ,comments"
					+ "      ,u.user_name,sb_notes,FORMAT(sb_date, 'dd-MMM-yy  HH:mm') as sb_date"
					+ "       FROM [brain_box_work_flow] s "
					+ "left join [bb_is] ss on s.idea_no = ss.idea_no "
					+ " left join [user_profile] u on s.approver_code = u.user_id "
					+ " inner join [user_profile] u1 on ss.created_by = u1.user_id "
					+ " where  s.idea_no is not null and  s.idea_no <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getIdea_no())) {
				qry = qry + " and s.idea_no = ? ";
				arrSize++;
			}
			qry = qry + " order by   s.id desc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getIdea_no())) {
				pValues[i++] = obj.getIdea_no();
			}
			objsList =  jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
			
			String qry2 = "select s.idea_no as idea_no,is_anonymous,u.base_role as approver_type, s.created_by as approver_code "
					+ " ,FORMAT(s.created_date, 'dd-MMM-yy  HH:mm') as assigned_on,u.user_name from bb_is s "
					+ "left join [user_profile] u on s.created_by = u.user_id where idea_no is not null ";
			int arrSize1 = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getIdea_no())) {
				qry2 = qry2 + " and s.idea_no = ? ";
				arrSize1++;
			}
			qry2 = qry2 + " order by   s.id desc";
			Object[] pValues1 = new Object[arrSize1];
			int j = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getIdea_no())) {
				pValues1[j++] = obj.getIdea_no();
			}
			objsList1 =  jdbcTemplate.query( qry2, pValues1, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
			
			merge.addAll(objsList);
		    merge.addAll(objsList1);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return merge;
	}

	public List<BrainBox> getIB_listInBB(BrainBox obj) throws Exception {
		List<BrainBox> objsList = new ArrayList<BrainBox>();
		try {
			String qry = "SELECT b.value as impact_business FROM [brain_box_work_flow] a cross apply string_split(a.impact_business,',') b group by  b.value"; 
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		
		return objsList;
	}

	public List<BrainBox> getBBListAlert()  throws Exception {
		List<BrainBox> alert_levels = null; BrainBox obj = new BrainBox();
		try {
			int j = 0;
			List<BrainBox> Themes = getThemeList();
			Object[] themeNameList = new Object[Themes.size()];
			Object[] themeCodeList = new Object[Themes.size()];
			for(BrainBox theme : Themes) {
				themeNameList[j++] = theme.getTheme_name();
			}
			 j = 0;
			for(BrainBox theme : Themes) {
				themeCodeList[j++] = theme.getTheme_code();
			}
			String statusList [] = {"'In Progress'","'In Progress'","'Resolved'","'Rejected'","Total"};  
			String appType [] = {"'Evaluator'","'Committee'","'Committee'","'Rejected'","Total"};  
			String statusPList [] = {"Evaluation <br> In Progress","Committee Evaluation <br> In Progress","Approved","Rejected","Total Count"};  
			
			Map<String,List<BrainBox>> alerts = new LinkedHashMap<String, List<BrainBox>>();
			alerts = new LinkedHashMap<String, List<BrainBox>>();
			
			Map<String,List<BrainBox>> heading = new LinkedHashMap<String, List<BrainBox>>();
			heading = new LinkedHashMap<String, List<BrainBox>>();
			for (int i =0; i<statusList.length; i++) {
				String subQry = " n.status = "+statusList[i]+" and  approver_type = "+appType[i]+" and ";
				String subQry2 = " n.status = "+statusList[i]+" and ";

				if(("'Resolved'".contentEquals(statusList[i]))) {
					 subQry = " c.status = "+statusList[i]+" and  approver_type = "+appType[i]+" and ";
					 subQry2 = " c.status = "+statusList[i]+"  and ";

				}else if( "'Rejected'".contentEquals(statusList[i])) {
					 subQry = " c.status = "+statusList[i]+"  and ";
					 subQry2 = " c.status is null and  ";

				}
				
				int k = 0;
				String qry =" SELECT top (1) count(*)";
						for(BrainBox theme : Themes) {
							k++;
							qry= qry+ ",(select count(n.[idea_no]) from brain_box_work_flow n left join bb_is c on c.idea_no = n.idea_no "
									+ "where  "+subQry+" c.[theme] = "+"'"+theme.getTheme_code()+"'"+"  and created_date >= DATEADD(DAY, -1, GETDATE()) AND created_date <  GETDATE()) as theme"+k+"  ";
						}
						qry = qry+ "  FROM [safetyDB].[dbo].[brain_box_work_flow] n "
						+ "  left join bb_is c on c.idea_no = n.idea_no "
						//+ "  left join [role_master] r on n.approver_type = r.[incident_report] or n.approver_type <> r.[incident_report] "
						+ "  group by c.[theme]";
						k = 0;
						if(("Total".contentEquals(statusList[i]))) {
							qry =" SELECT top (1) count(*)";
							for(BrainBox theme : Themes) {
								k++;
								qry= qry+ ",(select count(c.[idea_no]) from bb_is c  "
										+ "where  c.[theme] = "+"'"+theme.getTheme_code()+"'"+"  and created_date >= DATEADD(DAY, -1, GETDATE()) AND created_date <  GETDATE()) as theme"+k+"  ";
							}
							qry = qry+ "  FROM [safetyDB].[dbo].[brain_box_work_flow] n "
							+ "  left join bb_is c on c.idea_no = n.idea_no "
							//+ "  left join [role_master] r on n.approver_type = r.[incident_report] or n.approver_type <> r.[incident_report] "
							+ "  group by c.[theme]";
							k = 0;
						}
				alert_levels = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
				if(!StringUtils.isEmpty(alert_levels) && alert_levels.size() > 0) {
					alerts.put(statusPList[i], alert_levels);
					
				}
			}
			int i =0;
			for(BrainBox theme : Themes) {
				heading.put((String) themeNameList[i], alert_levels);
				i++;
			}
			EMailSender emailSender = new EMailSender();
			Set<String> nameSet = new HashSet<>();
			if(alerts != null && alerts.size() > 0) {
				SimpleDateFormat monthFormat = new SimpleDateFormat("dd-MMM-YYYY");
	            String today_date = monthFormat.format(new Date()).toUpperCase();
	          
	            monthFormat = new SimpleDateFormat("dd-MMM-YYYY");
	            String yesterday_date = monthFormat.format(yesterday()).toUpperCase();
	            System.out.println(yesterday_date);
	            SimpleDateFormat yearFormat = new SimpleDateFormat("YYYY");
	            String current_year = yearFormat.format(new Date()).toUpperCase();
	            
	            String emailSubject = "Daily Ideas Report | BrainBox";
	            String emailSubjec2 = "Brainbox - Harbinger of Excellence";
				Mail mail = new Mail();
				mail.setMailTo("amitsharma.j@resustainability.com,satya.a@resustainability.com,amarnathreddy@resustainability.com"); 
				mail.setMailBcc("businessapps.appworks@resustainability.com");
				mail.setMailSubject(emailSubject);
				mail.setTemplateName("SafetyDaily.vm");
				
				emailSender.sendIRMEmailAlerts(mail,alerts,today_date,yesterday_date,current_year,heading,emailSubjec2); 
			}
				
			Thread.sleep(1000*10);//time is in ms (1000 ms = 1 second)
			
			
			
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return alert_levels;
	}

	private static Date yesterday() {
	    final Calendar cal = Calendar.getInstance();
	    cal.add(Calendar.DATE, -1);
	    return cal.getTime();
	}
	private static Date lastMonth() {
	    final Calendar cal = Calendar.getInstance();
	    cal.add(Calendar.DATE, -30);
	    return cal.getTime();
	}

	public List<BrainBox> getBBListAlertMonthly()  throws Exception {
		List<BrainBox> alert_levels = null; BrainBox obj = new BrainBox();
		try {
			int j = 0;
			List<BrainBox> Themes = getThemeList();
			Object[] themeNameList = new Object[Themes.size()];
			Object[] themeCodeList = new Object[Themes.size()];
			for(BrainBox theme : Themes) {
				themeNameList[j++] = theme.getTheme_name();
			}
			 j = 0;
			for(BrainBox theme : Themes) {
				themeCodeList[j++] = theme.getTheme_code();
			}
			String statusList [] = {"'In Progress'","'In Progress'","'Resolved'","'Rejected'","Total"};  
			String appType [] = {"'Evaluator'","'Committee'","'Committee'","'Rejected'","Total"};  
			String statusPList [] = {"Evaluation <br> In Progress","Committee Evaluation <br> In Progress","Approved","Rejected","Total Count"};  
			
			Map<String,List<BrainBox>> alerts = new LinkedHashMap<String, List<BrainBox>>();
			alerts = new LinkedHashMap<String, List<BrainBox>>();
			
			Map<String,List<BrainBox>> heading = new LinkedHashMap<String, List<BrainBox>>();
			heading = new LinkedHashMap<String, List<BrainBox>>();
			for (int i =0; i<statusList.length; i++) {
				String subQry = " n.status = "+statusList[i]+" and  approver_type = "+appType[i]+" and ";
				String subQry2 = " n.status = "+statusList[i]+" and ";

				if(("'Resolved'".contentEquals(statusList[i]))) {
					 subQry = " c.status = "+statusList[i]+" and  approver_type = "+appType[i]+" and ";
					 subQry2 = " c.status = "+statusList[i]+"  and ";

				}else if( "'Rejected'".contentEquals(statusList[i])) {
					 subQry = " c.status = "+statusList[i]+"  and ";
					 subQry2 = " c.status is null and  ";

				}
				
				int k = 0;
				String qry =" SELECT top (1) count(*)";
						for(BrainBox theme : Themes) {
							k++;
							qry= qry+ ",(select count(n.[idea_no]) from brain_box_work_flow n left join bb_is c on c.idea_no = n.idea_no "
									+ "where  "+subQry+" c.[theme] = "+"'"+theme.getTheme_code()+"'"+" and DATEDIFF(day,created_date,GETDATE()) between  0 and 30) as theme"+k+"  ";
						}
						qry = qry+ "  FROM [safetyDB].[dbo].[brain_box_work_flow] n "
						+ "  left join bb_is c on c.idea_no = n.idea_no "
						//+ "  left join [role_master] r on n.approver_type = r.[incident_report] or n.approver_type <> r.[incident_report] "
						+ "  group by c.[theme]";
						k = 0;
						if(("Total".contentEquals(statusList[i]))) {
							qry =" SELECT top (1) count(*)";
							for(BrainBox theme : Themes) {
								k++;
								qry= qry+ ",(select count(c.[idea_no]) from bb_is c  "
										+ "where  c.[theme] = "+"'"+theme.getTheme_code()+"'"+"  and DATEDIFF(day,created_date,GETDATE()) between  0 and 30) as theme"+k+"  ";
							}
							qry = qry+ "  FROM [safetyDB].[dbo].[brain_box_work_flow] n "
							+ "  left join bb_is c on c.idea_no = n.idea_no "
							//+ "  left join [role_master] r on n.approver_type = r.[incident_report] or n.approver_type <> r.[incident_report] "
							+ "  group by c.[theme]";
							k = 0;
						}
				alert_levels = jdbcTemplate.query( qry, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
				if(!StringUtils.isEmpty(alert_levels) && alert_levels.size() > 0) {
					alerts.put(statusPList[i], alert_levels);
					
				}
			}
			int i =0;
			for(BrainBox theme : Themes) {
				heading.put((String) themeNameList[i], alert_levels);
				i++;
			}
			EMailSender emailSender = new EMailSender();
			Set<String> nameSet = new HashSet<>();
			if(alerts != null && alerts.size() > 0) {
				SimpleDateFormat monthFormat = new SimpleDateFormat("dd-MMM-YYYY");
	            String today_date = monthFormat.format(new Date()).toUpperCase();
	          
	            monthFormat = new SimpleDateFormat("dd-MMM-YYYY");
	            String yesterday_date = monthFormat.format(lastMonth()).toUpperCase();
	            System.out.println(yesterday_date);
	            SimpleDateFormat yearFormat = new SimpleDateFormat("YYYY");
	            String current_year = yearFormat.format(new Date()).toUpperCase();
	            
				String emailSubject = "Monthly Ideas Report | BrainBox";
				 String emailSubjec2 = "Brainbox - Harbinger of Excellence";
				Mail mail = new Mail();
				mail.setMailTo("amitsharma.j@resustainability.com,satya.a@resustainability.com,amarnathreddy@resustainability.com"); 
				mail.setMailBcc("businessapps.appworks@resustainability.com");
				mail.setMailSubject(emailSubject);
				mail.setTemplateName("MonthlySafertAlerts.vm");
				
				emailSender.sendIRMEmailAlerts(mail,alerts,today_date,yesterday_date,current_year,heading,emailSubjec2); 
			}
				
			Thread.sleep(1000*10);//time is in ms (1000 ms = 1 second)
			
			
			
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return alert_levels;
	}

	public List<Noida> getNewDataList() throws Exception  {
		List<Noida> menuList = null;
		List<Noida> menuList2 = null;
		boolean flag = false;
		int count = 0;
		try{  
			String qry = " SELECT TRNO as TicketNo, VEHICLENO as VehicleNo,MATERIAL as TransferStation, PARTY as Location,TRANSPORTER as Transporter,"
					+ "CONCAT(CONVERT(varchar(20), FORMAT (CONVERT(datetime, '2/16/2024', 120) , 'yyyy-MM-dd'), 120), 'T', CONVERT(varchar(10), RIGHT(CASE WHEN LEN(TIMEIN) = 0 THEN '12:00:00 PM' ELSE TIMEIN END, 10), 20)) AS TimeRecorded,"
					+ "CONCAT(CONVERT(varchar(20), FORMAT (CONVERT(datetime, '2/16/2024', 120) , 'yyyy-MM-dd'), 120), 'T',CONVERT(varchar(10), RIGHT(  CASE WHEN LEN(TIMEOUT) = 0 THEN '12:00:00 PM' ELSE TIMEOUT END, 10), 20)) AS OutTime,"
					+ " COALESCE(FIRSTWEIGHT, 0) as LoadWeight,SITEID, COALESCE(SECONDWEIGHT, 0) as EmptyWeight,COALESCE(NETWT, 0) as NetWeight,"
					+ "'Noida CND Plant' as SupplierName,'CND' as PostedBy,"
					+ ""
					+ "TYPEOFWASTE AS MaterialName FROM [All_CnD_Sites].[dbo].WEIGHT WITH (nolock)"
					+ "WHERE (SECONDWEIGHT IS NOT NULL)"
					+ "AND (NETWT IS NOT NULL) and(SITEID is not null) AND SITEID = 'NOIDACnDNOIDA_WB1' and"
					+ " FIRSTWEIGHT is not null and FIRSTWEIGHT <> '' and"
					+ " SECONDWEIGHT is not null and SECONDWEIGHT <> '' and "
					+ " NETWT is not null and NETWT <> ''"
					+ "ORDER BY TRNO desc ";
			
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<Noida>(Noida.class));
			
			String qry1 = " SELECT TRNO as TicketNo, VEHICLENO as VehicleNo,MATERIAL as TransferStation, PARTY as Location,TRANSPORTER as Transporter,"
					+ "CONCAT(CONVERT(varchar(20), FORMAT (CONVERT(datetime, '2/16/2024', 120) , 'yyyy-MM-dd'), 120), 'T', CONVERT(varchar(10), RIGHT(CASE WHEN LEN(TIMEIN) = 0 THEN '12:00:00 PM' ELSE TIMEIN END, 10), 20)) AS TimeRecorded,"
					+ "CONCAT(CONVERT(varchar(20), FORMAT (CONVERT(datetime, '2/16/2024', 120) , 'yyyy-MM-dd'), 120), 'T', CONVERT(varchar(10), RIGHT( CASE WHEN LEN(TIMEOUT) = 0 THEN '12:00:00 PM' ELSE TIMEOUT END, 10), 20)) AS OutTime,"
					+ " COALESCE(FIRSTWEIGHT, 0) as LoadWeight,SITEID, COALESCE(SECONDWEIGHT, 0) as EmptyWeight,COALESCE(NETWT, 0) as NetWeight,"
					+ "'Noida CND Plant' as SupplierName,'CND' as PostedBy,"
					+ ""
					+ "TYPEOFWASTE AS MaterialName FROM [All_CnD_Sites].[dbo].WEIGHT WITH (nolock)"
					+ "WHERE (SECONDWEIGHT IS NOT NULL)"
					+ "AND (NETWT IS NOT NULL) and(SITEID is not null) AND SITEID = 'NOIDACnDNOIDA_WB1' and "
					+ " FIRSTWEIGHT is not null and FIRSTWEIGHT <> '' and"
					+ " SECONDWEIGHT is not null and SECONDWEIGHT <> '' and "
					+ " NETWT is not null and NETWT <> '' "
					+ "ORDER BY TRNO desc ";
			
			menuList2 = jdbcTemplate.query( qry1, new BeanPropertyRowMapper<Noida>(Noida.class));
			menuList.addAll(menuList2);
			Set<String> nameSet = new HashSet<>();
			menuList = menuList.stream()
		            .filter(e -> nameSet.add(e.getTicketNo()))
		            .collect(Collectors.toList());
			int index = 0;
			DateFormat dateFormat12 = new SimpleDateFormat("hh:mm:ss aa");
		    DateFormat dateFormat24 = new SimpleDateFormat("HH:mm:ss");
			for(Noida nnn : menuList) {
				String date1 = nnn.getTimeRecorded();
				String date2 = nnn.getOutTime();
				if(!StringUtils.isEmpty(date1) && !StringUtils.isEmpty(date2)) {
					String[] arrD = date1.split("T");
					String[] arrD1 = date2.split("T");
					if(arrD[1].contains(":")  && arrD1[1].contains(":")) {
						
						String[] arrD2 = arrD[1].split(":");
						String[] arrD3 = arrD1[1].split(":");
						
						String dug = arrD2[0].trim();
						String dug1 = arrD3[0].trim();
					
					   ///Setting Formated Time Recorded time
					    Date dateF1 = dateFormat12.parse(arrD[1]);
					    String finalD1 = dateFormat24.format(dateF1);
						dug = "T"+finalD1;
						date1 = date1.replace("T"+arrD[1], dug);
						menuList.get(index).setTimeRecorded(date1);
						
						///Setting Formated Out time
						Date dateF2 = dateFormat12.parse(arrD1[1]);
					    String finalD2 = dateFormat24.format(dateF2);
						dug1 = "T"+finalD2;
						date2 = date2.replace("T"+arrD1[1], dug1);
						menuList.get(index).setOutTime(date2);
					
						index++;
					}
				}
			}
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			for(Noida obj : menuList) {
				NoidaLog logObj = new NoidaLog();
				logObj.setWeightTransNo(obj.getTicketNo());
				logObj.setVEHICLENO(obj.getVehicleNo());
				logObj.setPTC_Status("Data sent");
				String insertQry = "INSERT INTO [noida_site_log] (WeightTransNo,VEHICLENO,PTC_Status,PTCDT)"
						+ " VALUES "
						+ "(:WeightTransNo,:VEHICLENO,:PTC_Status,getdate())";
				BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(logObj);		 
			    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			}
			if(count > 0) {
				flag = true;
			}
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public Object uploadToLogs(List<Noida> list, NoidaLog logObj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			for(Noida obj : list) {
				logObj.setWeightTransNo(obj.getTicketNo());
				logObj.setVEHICLENO(obj.getVehicleNo());
				String insertQry = "UPDATE [noida_site_log] set GFC_Status= :GFC_Status,GFCDT= getdate(),MSG= :MSG "
						+ "where "
						+ " WeightTransNo= :WeightTransNo and VEHICLENO= :VEHICLENO ";
				BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(logObj);		 
			    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			}
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
