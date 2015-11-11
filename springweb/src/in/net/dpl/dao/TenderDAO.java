package in.net.dpl.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCountCallbackHandler;

import in.net.dpl.model.TenderFileRowMapper;
import in.net.dpl.model.TenderModel; 

public class TenderDAO {

	private JdbcTemplate jdbcTemplate; 
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}  
	
	public int saveTender(TenderModel t,String fileName){  
	    String query="insert into TenderMasterNew(tender_group,tender_ref_no,tender_type,estimated_value,opening_tender_sale,closing_tender_sale,date_pre_bid,due_date_bid_sub,scope_of_work,tender_upload_date,file_name) "
	    		+ "values('"+t.getTenderGroup()+"','"+t.getTenderRefNo()+"','"+t.getTenderType()+"','"+t.getEstimatedValue()+"',str_to_date('"+t.getOpeningDateTime()+"','%d-%m-%Y %H:%i'),str_to_date('"+t.getClosingDateTime()+"','%d-%m-%Y %H:%i'),str_to_date('"+t.getPrebidDateTime()+"','%d-%m-%Y %H:%i'),str_to_date('"+t.getSubmissionDateTime()+"','%d-%m-%Y %H:%i'),'"+t.getScope()+"',CURDATE(),'"+fileName+"')";  
	    return jdbcTemplate.update(query);  
	}  
	
	public int saveTenderFile(TenderModel t,String fileName){  
	    String query="insert into tenderFILE(tender_ref_no,tender_upload_date,file_name) "
	    		+ "values('"+t.getTenderRefNo()+"',CURDATE(),'"+fileName+"')";  
	    return jdbcTemplate.update(query);  
	}
	
	public int findTender(TenderModel t){  
		String sql = "SELECT * FROM TENDERMASTERNEW WHERE TENDER_REF_NO='"+t.getTenderRefNo()+"'";
		 System.out.println("SQL-"+sql);
		//int total = jdbcTemplate.queryForInt(sql);
		RowCountCallbackHandler countCallback = new RowCountCallbackHandler();
		jdbcTemplate.query(sql, countCallback);
		int rowCount = countCallback.getRowCount();
		System.out.println("Row count-"+rowCount);			
		//return total;
		return rowCount;
	}
	
	public List<String> findTenderFile(String params){  
		String sql = "SELECT file_name FROM TENDERMASTERNEW WHERE concat(TENDER_REF_NO,date_format(tender_upload_date,'%d-%m-%y'))='"+params+"'";
		List<String> tms = new ArrayList<String>();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		for (Map row : rows) {
			
			            //String tm = new String();
			            //tm.setFileName(String.valueOf(row.get("file_name")));
			            tms.add(String.valueOf(row.get("file_name")));
			
			        }
			
			      
			
			        return tms;


		//return getJdbcTemplate().queryForList(sql);
		
	}
	
	public String tenderLoginAuth(String user_id,String password){  
		String sql = "SELECT a.user_id AS user_id,b.dept_name AS dept_name FROM tender_user a,dept_master b WHERE a.user_id='"+user_id+"' AND a.password='"+password+"' AND a.dept_id=b.dept_id";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		int counter=0;
		String deptName=null;
		String userId=null;
		for (Map row : rows) {
						deptName=String.valueOf(row.get("dept_name"));
			            counter++;
			}
			if(counter>0){
				return deptName;
			}
			      
			
			else return "UNAUTHORIZED";
		
	}
	
	public List<TenderModel> tenderList(){  
		String sql = "SELECT tender_group,COUNT(*) AS tender_count FROM tendermasternew GROUP BY tender_group ORDER BY tender_group";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		List<TenderModel> ltm=new ArrayList<TenderModel>();
		
		int counter=0;
		String deptName=null;
		String userId=null;
		for (Map row : rows) {
						TenderModel tm=new TenderModel();
						tm.setTenderGroup(String.valueOf(row.get("tender_group")));
						tm.setCount(String.valueOf(row.get("tender_count")));
			            ltm.add(tm);
			}
			
	     return ltm;
		
	}
	
	
}