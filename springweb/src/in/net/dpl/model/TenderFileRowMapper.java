package in.net.dpl.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class TenderFileRowMapper implements RowMapper
{
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		TenderModel tm = new TenderModel();
		tm.setFileName(rs.getString(1));
		return tm;
	}
	
}
