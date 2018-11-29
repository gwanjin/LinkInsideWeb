package link.actions;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import link.dao.AndroidApplicantDAO;
import link.dao.ApplicantDAO;
import link.vo.Applicant;
import oracle.sql.CLOB;

public class AndroidApplicantAction extends ActionSupport implements SessionAware{
	Map<String, Object> session;
	Applicant applicant;
	private Map<String, Object> map;
	String userid;
	ArrayList<Map<String, Object>> result1;
	
	public String login(){
		ApplicantDAO dao = new ApplicantDAO();
		applicant = dao.login(applicant);
		if(applicant != null)
			session.put("loginId", applicant.getApplicantid());
		
		return SUCCESS;
	}
	
	public String test(){
		
		System.out.println("test");
		
		return SUCCESS;
	}
	
	public String androidGetMatchingList() throws Exception{
		
		findMatching("A");
		
		
		return SUCCESS;
	}
	
	class MatchingSort implements Comparator<Map<String, Object>>{

		@Override
		public int compare(Map<String, Object> o1, Map<String, Object> o2) {
			// TODO Auto-generated method stub
			return ((String)o1.get("TOTALPER")).compareTo((String)o2.get("TOTALPER"));
		}
	}
	
	public String findMatching(String type) throws Exception{
		System.out.println("findMatching");
		System.out.println("session : " + userid);
		AndroidApplicantDAO dao = new AndroidApplicantDAO();
		String id = userid;
		System.out.println("id : "+id);
		map = dao.getMatchedApplicant(id, type);
		System.out.println(map.keySet().iterator());
		result1 = new ArrayList<>();
		
		
				
		
		// 해당 map안의 CLOB형 객체를 취득하고
		  for(Entry<String, Object> e : map.entrySet()) {
		        String key = e.getKey();
		        System.out.println(key);
		        Map<String,Object> map2 = (Map<String, Object>) e.getValue();
		        
		        CLOB clob = (CLOB) map2.get("JOBDESC");
		   	 
				// reader를 생성
				Reader reader = clob.getCharacterStream();
			 
				StringBuffer out = new StringBuffer();
				char[] buff = new char[1024];
				int nchars = 0;
			 
				// 스트링 버퍼에 append 시킨후
				while ((nchars = reader.read(buff)) > 0) {
					out.append(buff, 0, nchars);
				}
				
				// String형태로 재할당.
				map2.put( "JOBDESC", out.toString() );
				result1.add(map2);
		    }
		  
		  
		  
		
		return SUCCESS;
	}
	
	public String applyList() throws Exception{
		
		findMatching("B");
		
		return SUCCESS;
	}
	
	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Applicant getApplicant() {
		return applicant;
	}

	public void setApplicant(Applicant applicant) {
		this.applicant = applicant;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public ArrayList<Map<String, Object>> getResult1() {
		return result1;
	}

	public void setResult1(ArrayList<Map<String, Object>> result1) {
		this.result1 = result1;
	}
	
	
	
}
