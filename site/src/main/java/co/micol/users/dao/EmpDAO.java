package co.micol.users.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import co.micol.board.dao.DAO;

public class EmpDAO extends DAO {

	PreparedStatement psmt;
	ResultSet rs;
	
	private static String EMP_STAT = "SELECT DEPARTMENT_ID, COUNT(*)"
								   + " FROM HR.EMPLOYEES" 
								   + " WHERE DEPARTMENT_ID IS NOT NULL "
								   + " GROUP BY DEPARTMENT_ID";
	
	public List<Map<String, Object>> getEmpStat() {
		List<Map<String, Object>> userList = new ArrayList<Map<String, Object>>();
		try {
			psmt = conn.prepareStatement(EMP_STAT);

			rs = psmt.executeQuery();
			while (rs.next()) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("department_id", rs.getString("DEPARTMENT_ID"));
				map.put("cnt", rs.getString(2));
				userList.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return userList;
	}
	private void close() {
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
