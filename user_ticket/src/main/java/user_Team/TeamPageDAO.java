package user_Team;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import dbConnection.DbConnection;
import dbConnection.Path;


public class TeamPageDAO {
	private TeamPageDAO tpDAO;
	
	private TeamPageDAO() {
		
	}
	
	public TeamPageDAO getInstance() {
		if(tpDAO==null) {
			tpDAO=new TeamPageDAO();
		}
		
		return tpDAO;
	}
	
	//팀메인이미지
	public TeamDTO selectTeamImg(int teamCode) {
		TeamDTO tDTO=null;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection dbCon=DbConnection.getInstance();
		
		try {
			con=dbCon.getConn(new File(Path.DATABASE_PROPERTIES));
			StringBuilder selectTeamImg=new StringBuilder();
			selectTeamImg
			.append("	select team_logo_img, 	")
			.append("	from team	")
			.append("		");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
		}
		return null;
	}
	
	//경기리스트
	public TeamDTO selectGame(TeamDTO tDTO) {
		
		return null;
	}
	
	//각팀공지사항
	public List<TeamDTO> selectNotice(int teamCode) {
		
		return null;
	}
	
	//공통공지사항
	public TeamDTO selectCommonNotice() {
		
		return null;
	}
	
	//리그안내페이지
	public String selectLeagueGuide(TeamDTO tDTO) {
		
		return null;
	}
}
