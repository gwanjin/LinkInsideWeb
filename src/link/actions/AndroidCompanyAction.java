package link.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import link.dao.CompanyDAO;
import link.vo.Company;

public class AndroidCompanyAction extends ActionSupport implements SessionAware{
	Company company;
	Map<String, Object> session;
	
	public String login(){
		System.out.println(company);
		CompanyDAO dao = new CompanyDAO();
		System.out.println("company : "+company);
		company = dao.select(company);
		if(company!=null){
			session.put("loginId", company.getCompid());
		}
		
		return SUCCESS;
	}
	
	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public Company getCompany() {
		return company;
	}


	public void setCompany(Company company) {
		this.company = company;
	}
	
	
}
