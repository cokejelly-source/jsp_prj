package kr.co.sist.mypage;

import java.sql.SQLException;
import java.text.SimpleDateFormat;

import org.json.simple.JSONObject;

import kr.co.sist.user.member.MemberDTO;

public class MyPageService {
	
	
	public String searchMyPage(String id) {
		
		JSONObject jsonObj=new JSONObject();
		MemberDTO mDTO=null;
		
		MyPageDAO mpDAO=MyPageDAO.getIstance();
		try {
			mDTO=mpDAO.selectUserInfo(id);
			if(mDTO != null) {
				DataDecryption dd = new DataDecryption("a012345678912345");
				try {
					mDTO.setName(dd.decrpt(mDTO.getName()));
					mDTO.setEmail(dd.decrpt(mDTO.getEmail()));
					mDTO.setPhone(dd.decrpt(mDTO.getPhone()));
				}catch(Exception e) {
					e.printStackTrace();
				}//end catch
				
				jsonObj.put("name", mDTO.getName());
				jsonObj.put("email", mDTO.getEmail());
				jsonObj.put("phone", mDTO.getPhone());
				jsonObj.put("zipcode", mDTO.getZipcode());
				jsonObj.put("address", mDTO.getAddress());
				jsonObj.put("address2", mDTO.getAddress2());
				jsonObj.put("profile", mDTO.getProfile());
				jsonObj.put("ip", mDTO.getIp());
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd EEE a kk:mm:ss");
				jsonObj.put("input_date", sdf.format(mDTO.getInputDate()));
				
			}//end if
			
		} catch (SQLException e) {
			e.printStackTrace();
		}//end catch
		
		return jsonObj.toJSONString();
	}
	
	public boolean addMember(MemberDTO mDTO) {
		
		boolean flag=false;
		//DAO클래스를 사용하여 DB추가 작업 수행
		
		flag=true;
		
		
		return flag;
		
	}
}
