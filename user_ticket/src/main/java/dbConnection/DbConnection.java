package dbConnection;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;


public class DbConnection {
	//객체가 생성된 상태를 저장하기 위해서 static 변수를 선언
		private static DbConnection dbCon;
		/**
		 * 객체생성을 클래스 외부에서 할 수 없도록 만들기위해서
		 */
		public DbConnection() {
			
		}
		
		/**
		 * 하나의 객체를 생성하고 얻어가는 method
		 * @return 생성된 하나의 객체
		 */
		public static DbConnection getInstance() {
			if(dbCon == null) {
				dbCon=new DbConnection();
			}//end if
			 
			return dbCon;
		}//getInstance
		/**
		 * DBMS와 연결된 Connection을 반환하는 일
		 * @param prop DBMS의 정보를 로딩한 객체
		 * @return Connection
		 * @throws SQLException
		 */
		public Connection getConn(File file) throws SQLException{
			Connection con=null;
			
			if(!file.exists()) {//설정 정보를 가진 파일이 해당 경로에 존재하지 않으면
				//DB작업을 할 필요가 없음
				return null;
			}//end if
			
			Properties prop=new Properties();
			try {
				prop.load(new FileInputStream(file));
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end catch
			
			//1.드라이버로딩
			try {
				Class.forName("oracle.jdbc.OracleDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			//2.Connection얻기
			String url=prop.getProperty("url");
			String id=prop.getProperty("id");
			String pass=prop.getProperty("pass");
			
			con=DriverManager.getConnection(url, id, pass);
			
			
			return con;
		}//getConn
		
		public void dbClose(ResultSet rs, Statement stmt, Connection con) throws SQLException{
			try {
				if(rs != null) {rs.close();}//end if
				if(stmt != null) {stmt.close();}//end if
			}finally {
				if(con != null) {con.close();}//end if
			}
		}
}
