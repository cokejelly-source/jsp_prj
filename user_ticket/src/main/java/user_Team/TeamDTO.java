package user_Team;

import java.util.Date;

public class TeamDTO {
	private int teamCode;//팀코드
	private int gameScheduleCode;//경기일정코드
	private Date gameDate;//경기일자
	private String stadiumName;//구장이름
	private String teamHomeImg;//홈팀이미지
	private String teamOtherImg;//원정팀이미지
	private String teamPageimg;//팀페이지이미지
	private String teamHomeName;//홈팀이름
	private String teamOtherName;//원정팀이름
	private String commonNotice;//로고 아래 공지사항
	private String noticeTitle;//각 팀별 공지사항 제목
	private String noticeDivision;//공지사항구분
	private String noticeText;//공지사항내용
	private String noticeRemark;//공지사항비고
	private String leagueGuideImg;//리그안내 이미지
	
	public TeamDTO() {
	
	}

	public TeamDTO(int teamCode, int gameScheduleCode, Date gameDate, String stadiumName, String teamHomeImg,
			String teamOtherImg, String teamPageimg, String teamHomeName, String teamOtherName, String commonNotice,
			String noticeTitle, String noticeDivision, String noticeText, String noticeRemark, String leagueGuideImg) {
		this.teamCode = teamCode;
		this.gameScheduleCode = gameScheduleCode;
		this.gameDate = gameDate;
		this.stadiumName = stadiumName;
		this.teamHomeImg = teamHomeImg;
		this.teamOtherImg = teamOtherImg;
		this.teamPageimg = teamPageimg;
		this.teamHomeName = teamHomeName;
		this.teamOtherName = teamOtherName;
		this.commonNotice = commonNotice;
		this.noticeTitle = noticeTitle;
		this.noticeDivision = noticeDivision;
		this.noticeText = noticeText;
		this.noticeRemark = noticeRemark;
		this.leagueGuideImg = leagueGuideImg;
	}

	public int getTeamCode() {
		return teamCode;
	}

	public void setTeamCode(int teamCode) {
		this.teamCode = teamCode;
	}

	public int getGameScheduleCode() {
		return gameScheduleCode;
	}

	public void setGameScheduleCode(int gameScheduleCode) {
		this.gameScheduleCode = gameScheduleCode;
	}

	public Date getGameDate() {
		return gameDate;
	}

	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}

	public String getStadiumName() {
		return stadiumName;
	}

	public void setStadiumName(String stadiumName) {
		this.stadiumName = stadiumName;
	}

	public String getTeamHomeImg() {
		return teamHomeImg;
	}

	public void setTeamHomeImg(String teamHomeImg) {
		this.teamHomeImg = teamHomeImg;
	}

	public String getTeamOtherImg() {
		return teamOtherImg;
	}

	public void setTeamOtherImg(String teamOtherImg) {
		this.teamOtherImg = teamOtherImg;
	}

	public String getTeamPageimg() {
		return teamPageimg;
	}

	public void setTeamPageimg(String teamPageimg) {
		this.teamPageimg = teamPageimg;
	}

	public String getTeamHomeName() {
		return teamHomeName;
	}

	public void setTeamHomeName(String teamHomeName) {
		this.teamHomeName = teamHomeName;
	}

	public String getTeamOtherName() {
		return teamOtherName;
	}

	public void setTeamOtherName(String teamOtherName) {
		this.teamOtherName = teamOtherName;
	}

	public String getCommonNotice() {
		return commonNotice;
	}

	public void setCommonNotice(String commonNotice) {
		this.commonNotice = commonNotice;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeDivision() {
		return noticeDivision;
	}

	public void setNoticeDivision(String noticeDivision) {
		this.noticeDivision = noticeDivision;
	}

	public String getNoticeText() {
		return noticeText;
	}

	public void setNoticeText(String noticeText) {
		this.noticeText = noticeText;
	}

	public String getNoticeRemark() {
		return noticeRemark;
	}

	public void setNoticeRemark(String noticeRemark) {
		this.noticeRemark = noticeRemark;
	}

	public String getLeagueGuideImg() {
		return leagueGuideImg;
	}

	public void setLeagueGuideImg(String leagueGuideImg) {
		this.leagueGuideImg = leagueGuideImg;
	}

	@Override
	public String toString() {
		return "TeamDTO [teamCode=" + teamCode + ", gameScheduleCode=" + gameScheduleCode + ", gameDate=" + gameDate
				+ ", stadiumName=" + stadiumName + ", teamHomeImg=" + teamHomeImg + ", teamOtherImg=" + teamOtherImg
				+ ", teamPageimg=" + teamPageimg + ", teamHomeName=" + teamHomeName + ", teamOtherName=" + teamOtherName
				+ ", commonNotice=" + commonNotice + ", noticeTitle=" + noticeTitle + ", noticeDivision="
				+ noticeDivision + ", noticeText=" + noticeText + ", noticeRemark=" + noticeRemark + ", leagueGuideImg="
				+ leagueGuideImg + "]";
	}
	
	
}
