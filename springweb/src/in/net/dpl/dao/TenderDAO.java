package in.net.dpl.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCountCallbackHandler;

import in.net.dpl.model.TenderModel; 

public class TenderDAO {

	private JdbcTemplate jdbcTemplate; 
	
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
	
}