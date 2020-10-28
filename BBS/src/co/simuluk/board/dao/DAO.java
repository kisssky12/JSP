package co.simuluk.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "simuluk";
	private String password = "1234";

	public Connection conn; // db 연결객체

	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.print("DB 연결 성공");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
