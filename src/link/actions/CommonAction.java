package link.actions;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.interceptor.SessionAware;
import org.codehaus.jettison.json.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import com.opensymphony.xwork2.ActionSupport;

import link.dao.ApplicantDAO;
import link.dao.CommonDAO;
import link.vo.Applicant;
import link.vo.Culture;
import link.vo.Education;
import link.vo.Experience;
import link.vo.Personality;
import link.vo.Questions;
import link.vo.Skills;

public class CommonAction extends ActionSupport{

    private List<String> certList = new ArrayList<>();
    private List<String> skillList = new ArrayList<>();
    private String jsoncertindex;
    private String jsonskillindex;
    private String type;
    private CommonDAO dao = new CommonDAO();

	public String bringIndex(){
		System.out.println("bring Index Action");
		skillList = dao.getTagList("skill");
		certList = dao.getTagList("cert");

		JSONArray skillJArr = new JSONArray(skillList);
		JSONArray certJArr = new JSONArray(certList);
		jsonskillindex = skillJArr.toString();
		jsoncertindex = certJArr.toString();

		return SUCCESS;
	}
	

	public List<String> getCertList() {
		return certList;
	}

	public void setCertList(List<String> certList) {
		this.certList = certList;
	}

	public List<String> getSkillList() {
		return skillList;
	}

	public void setSkillList(List<String> skillList) {
		this.skillList = skillList;
	}

	public String getJsoncertindex() {
		return jsoncertindex;
	}

	public void setJsoncertindex(String jsoncertindex) {
		this.jsoncertindex = jsoncertindex;
	}

	public String getJsonskillindex() {
		return jsonskillindex;
	}

	public void setJsonskillindex(String jsonskillindex) {
		this.jsonskillindex = jsonskillindex;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
