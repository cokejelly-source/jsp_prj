package xml0709;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

/**
 * 조회한 결과를 사용하여 XML을 생성
 */
public class DeptService {
	private Document searchAllDept() {
		//1. XML문서 객체 생성
		Document xmlDoc=new Document();//<? xml version="1.0"?>
		
		//2.최상위 부모 노드 생성
		Element deptsNode=new Element("depts");
		
		//3.부모 노드를 xml문서 객체에 추가
		xmlDoc.addContent(deptsNode);
		
		//4.반복되는 자식 노드<dept/>를 생성
		Element deptNode=null;//<dept/>
		Element deptnoNode=null;//<deptno/>
		Element dnameNode=null; //<dname/>
		Element locNode=null; //<loc/>
		
		DeptDAO dDAO=DeptDAO.getInstance();
		try {
			List<DeptDTO> list=dDAO.selectAllDept();
			
			for(DeptDTO dDTO : list) {
				//deptNode 생성
				deptNode=new Element("dept");//<dept/>
				deptnoNode=new Element("deptno");//<deptno/>
				dnameNode=new Element("dname");//<dname/>
				locNode=new Element("loc");//<loc/>
				//자식 노드에 검색 값 설정
				deptnoNode.setText(String.valueOf(dDTO.getDEPTNO()));
				dnameNode.setText(dDTO.getDNAME());
				locNode.setText(dDTO.getLOC());
				//자식 노드들을 deptNode 추가
				deptNode.addContent(deptnoNode);
				deptNode.addContent(dnameNode);
				deptNode.addContent(locNode);
				//자식 노드들을 가진 노드를 최상위 부모 노드(<depts> node에 추가)
				deptsNode.addContent(deptNode);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return xmlDoc;
	}
	
	public void consolePrint() throws IOException {
		XMLOutputter xOut=new XMLOutputter(Format.getPrettyFormat());
		xOut.output(searchAllDept(), System.out);
	}//consolePrint
	
	public void createFile(String path) throws IOException {
		XMLOutputter xOut=new XMLOutputter(Format.getPrettyFormat());
		FileOutputStream fos=new FileOutputStream(path);
		xOut.output(searchAllDept(), fos);
		if(fos != null) { fos.close();}
	}//createFile
	
	public void webBrowserPrint(JspWriter out) throws IOException {
		XMLOutputter xOut=new XMLOutputter(Format.getPrettyFormat());
		xOut.output(searchAllDept(), out);
		
	}//webBrowserPrint
}
