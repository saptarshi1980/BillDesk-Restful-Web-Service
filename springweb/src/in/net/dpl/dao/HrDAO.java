package in.net.dpl.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCountCallbackHandler;

import in.net.dpl.model.TenderFileRowMapper;
import in.net.dpl.model.TenderModel; 

public class HrDAO {

	private JdbcTemplate jdbcTemplate; 
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}  
	
	public int saveHr(String title,String description,String sr_no){  
	    
		System.out.println("Sr No-"+sr_no);
		String query="insert into hr_upload_master(title,description,sr_no,upload_date) "
	    		+ "values('"+title+"','"+description+"','"+sr_no+"',NOW())";  
	    return jdbcTemplate.update(query);  
	}  
	
	public int saveHrFile(String sr_no,String fileName){  
	    String query="insert into hr_upload_index(sr_no,file_name) "
	    		+ "values('"+sr_no+"','"+fileName+"')";  
	    return jdbcTemplate.update(query);  
	}
	
	
	public List<String> findPdfFile(String params){  
		String sql = "SELECT file_name FROM hr_upload_index WHERE sr_no='"+params+"'";
		List<String> tms = new ArrayList<String>();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		for (Map row : rows) {
			
			                 tms.add(String.valueOf(row.get("file_name")));
			
			        }			
		return tms;
	}
	
	public String hrLoginAuth(String user_id,String password){  
		String sql = "SELECT a.user_id AS user_id FROM hr_user a WHERE a.user_id='"+user_id+"' AND a.password='"+password+"' ";
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		int counter=0;
		for (Map row : rows) {
						
			            counter++;
			}
			if(counter>0){
				return "AUTHORIZED";
			}
			 			
			else return "UNAUTHORIZED";
		
	}
	
	
	
	
}