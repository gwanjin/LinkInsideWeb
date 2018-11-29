package link.actions;

import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.struts2.interceptor.SessionAware;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import com.opensymphony.xwork2.ActionSupport;

import link.dao.ApplicantDAO;
import link.vo.Applicant;
import link.vo.Company;
import link.vo.Culture;
import link.vo.CultureSort;
import link.vo.Education;
import link.vo.Experience;
import link.vo.Job;
import link.vo.Matching;
import link.vo.Personality;
import link.vo.Questions;
import link.vo.SelfPromotion;
import link.vo.Skills;
import oracle.sql.CLOB;

public class ApplicantAction extends ActionSupport implements SessionAware {
	Applicant applicant;
	Company company;
	Job jobValue;
	ArrayList<Education> education;
	ArrayList<Experience> experience;
	ArrayList<Skills> skills;
	ArrayList<Culture> cultureList;
	Map<String, Object> session;
	int result;
	int page;
	List<Questions> qlist = new ArrayList<>();
	String id;
	String password;
	Personality personality;
	Culture culture;
	ArrayList<SelfPromotion> selfList;
	private String request_id;
 	private String phone;
    private String status;
    private String error_text;
    private String number;
    private List<Object> obj;
    private String event_id;
    private String price;
    private List<Matching> matching;
	private List<Job> job;
	private Map<String, Object> map;
    private String currency;
    private List<String> list = new ArrayList<>();
    String jsonlist;
    
    private String type;
    ArrayList<CultureSort> topValue;
    
    
    
	public String ptestApplicant(){
		ApplicantDAO dao = new ApplicantDAO();
		System.out.println("in ptest action");
		HashMap<String, Integer> map = new HashMap<>();
		map.put("value", 00);
		map.put("last", 49);
		qlist = dao.pTest1(map);
		if(qlist==null){
			return ERROR;
		}
		System.out.println(qlist);
		return SUCCESS;
	}
	
	public String ptestApplicant2(){
		ApplicantDAO dao = new ApplicantDAO();
		HashMap<String, Integer> map = new HashMap<>();
		map.put("value", 50);
		map.put("last", 49);
		System.out.println(map);
		qlist = dao.pTest1(map);
		if(qlist==null){
			return ERROR;
		}
		System.out.println(qlist);
		return SUCCESS;
	}
	
	public String insertApplicant(){
		ApplicantDAO dao = new ApplicantDAO();
		System.out.println("applicant : "+applicant);
		session.put("loginId", applicant.getApplicantid());
		result = dao.insertApplicant(applicant);	
		if(result == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
		
	}
	
	public String selectApplicant(){
		ApplicantDAO dao = new ApplicantDAO();
		applicant = dao.select(applicant);
		System.out.println(applicant);
		if(applicant!=null){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	public String idCheck(){
		ApplicantDAO dao = new ApplicantDAO();
		applicant = dao.select(applicant);
		System.out.println("idcheck " + applicant);
		return SUCCESS;
	}

	public String selectApplicantLoginID() throws Exception {
		ApplicantDAO dao = new ApplicantDAO();
		applicant = dao.login(applicant);
		if(applicant!=null){
			session.put("loginId", applicant.getApplicantid());
			
		}
		return SUCCESS;
	}
	
	
	
	public String logout() {
		session.clear();
		return SUCCESS;
	}
	
	public String updateApplicant(){
		ApplicantDAO dao = new ApplicantDAO();
		result = dao.update(applicant);
		if(result == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	public String insertEducation(){
		ApplicantDAO dao = new ApplicantDAO();
		for (int i = 0; i < education.size(); i++) {
			education.get(i).setApplicantid(id);
		}
		System.out.println("education in Action : "+education);
		result = dao.insertEducation(education);
		if(result == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	public String insertExperience(){
		ApplicantDAO dao = new ApplicantDAO();
		
		for (int i = 0; i < experience.size(); i++) {
			experience.get(i).setApplicantid(id);
		}
		System.out.println("experience : "+experience);
		result = dao.insertExperience(experience);
		if(result == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	
	public String insertSkills(){
		
		String id = (String)session.get("loginId");
		ApplicantDAO dao = new ApplicantDAO();
		for (int i = 0; i < skills.size(); i++) {
			skills.get(i).setApplicantid(id);
//			skills.get(i).setJobid("1");
			/* JOBID가 필요한 이유는 뭔가요?? */
		}
		System.out.println("skills : "+skills);
		System.out.println("experience : "+experience);
		System.out.println("education in Action : "+education);
		result = dao.insertSkills(skills);
		
		for (int i = 0; i < experience.size(); i++) {
			experience.get(i).setApplicantid(id);
		}
		System.out.println("experience : "+experience);
		result = dao.insertExperience(experience);
		
		for (int i = 0; i < education.size(); i++) {
			education.get(i).setApplicantid(id);
		}
		System.out.println("education in Action : "+education);
		result = dao.insertEducation(education);
		
		session.put("loginId", id);
		personality = dao.getPersonality((String)session.get("loginId"));
		applicant = new ApplicantDAO().getApplicantById((String)session.get("loginId"));
		dao.insertApplicantMatching(applicant);

		if(result == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	//아이디&비밀번호 찾기
	public String findApplicant(){
		System.out.println("들어옴");
		ApplicantDAO dao = new ApplicantDAO();
		applicant = dao.findApplicant(applicant);
		
		if(applicant!=null){
			session.put("loginId", applicant.getApplicantid());
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	public String cultureSurvey(){
		
		HashMap<String, Integer> map = new HashMap<>();
		map.put("value", 100);
		map.put("last", 151);
		qlist = new ApplicantDAO().pTest1(map);
		
		return SUCCESS;
	}
	
	public String testCultureResult() throws Exception{
		
		result = new ApplicantDAO().insertCulture(culture);
		
		if(result == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	
	/**
	 * 메인화면으로 갈때마다 culture값과 매칭을 가져오기 위한 메소드
	 * @return
	 * @throws Exception
	 */
	public String applicantView() throws Exception{
		
		System.out.println("view");
		System.out.println();
		applicant = new ApplicantDAO().getApplicantById((String)session.get("loginId"));
		personality = new ApplicantDAO().getPersonality((String)session.get("loginId"));
		System.out.println(applicant);
		System.out.println(personality);
		type = "A";
		findMatching();
		viewCultureResult();
		return SUCCESS;
	}
	
	
	public String insertTest() throws Exception{
		
		result = new ApplicantDAO().insertPersonality(personality);
		System.out.println(personality);
		return SUCCESS;
	}
	
	public String insertTest2() throws Exception{
		
		result = new ApplicantDAO().insertPersonality2(personality);
		HashMap<String, Integer> map = new HashMap<>();
		map.put("value", 100);
		map.put("last", 51);
		qlist = new ApplicantDAO().pTest1(map);
		System.out.println(personality);
		return SUCCESS;
	}
	
	public String matchingView() throws Exception{
		
		type = "A";
		findMatching();
		
		return SUCCESS;
	}
	
	public String findMatching() throws Exception{
		ApplicantDAO dao = new ApplicantDAO();
		String id = (String)session.get("loginId");
		System.out.println("id : "+id);
		map = dao.getMatchedApplicant(id, type);
		System.out.println(map.keySet().iterator());
		
		// 해당 map안의 CLOB형 객체를 취득하고
		System.out.println("map is..." + map.get(id));
		  for(Entry<String, Object> e : map.entrySet()) {
		        String key = e.getKey();
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
				map.put(key, map2);
		    }
		  
		/*  기업의 문화설문 결과 가져오기  */
		cultureList = dao.searchCompanyCulture(map.keySet().iterator());
		System.out.println(cultureList);
		
		return SUCCESS;
	}
	
	public String request(){
		ApplicantDAO dao = new ApplicantDAO();
		
		if(phone.isEmpty()){
			System.out.println("empty");
		}else{
			System.out.println("notempty");
		}
		
		
		
		try{
			System.out.println("in request" + "nananandasnandfsndsnfddfsn");
	 		String urlStr = "https://api.nexmo.com/verify/json?api_key=dbd5abac&api_secret=e0e039e604318304&number="+phone+"&brand=NexmoVerifyTest";
		    System.out.println(urlStr + "URLSTRRRRRRRRRRRRRR");

		    System.setProperty("jsse.enableSNIExtension", "false") ;
		    InputStreamReader isr;
		    URL url = null;
		    
		      url = new URL(urlStr);
		      isr = new InputStreamReader(url.openConnection().getInputStream(), "utf-8");
		      JSONObject object = (JSONObject) JSONValue.parse(isr);
		      request_id = (String) object.get("request_id");
		      status = (String) object.get("status");
		      error_text = (String) object.get("error_text");
		      
		      session.put("request_id", request_id);
		      
		      System.out.println("request: " + request_id + "status: " + status + "error: " + error_text);
		}catch (Exception e){
			e.printStackTrace();
		}
 		 		return SUCCESS;
 	}
	
	public String verify(){
		System.out.println(request_id);
		try{
			System.out.println("in request");
			request_id = (String) session.get("request_id");
	 		String urlStr = "https://api.nexmo.com/verify/check/json?api_key=dbd5abac&api_secret=e0e039e604318304&request_id="+request_id+"&code="+number;
		    System.out.println(urlStr);  
		    System.setProperty("jsse.enableSNIExtension", "false") ;
		    InputStreamReader isr;
		    URL url = null;
		    
		      url = new URL(urlStr);
		      isr = new InputStreamReader(url.openConnection().getInputStream(), "utf-8");
		      JSONObject object = (JSONObject) JSONValue.parse(isr);
		      event_id = (String) object.get("event_id");
		      status = (String) object.get("status");
		      price = (String) object.get("price");
		      currency = (String) object.get("currency");
		      error_text = (String) object.get("error_text");
		}catch (Exception e){
			e.printStackTrace();
		}
		System.out.println("event_id" + event_id + "status: " + status + " error_text: " + error_text);
		System.out.println("currency: " + currency + " and price: " + price);
		return SUCCESS;
	}
	
	public String applicantUpdateFrom(){
		ApplicantDAO dao = new ApplicantDAO();
		applicant =dao.searchApplicant((String)session.get("loginId"));
		System.out.println("applicant :" + applicant);
		return SUCCESS;
	}
	
	
	/**
	 * 성격검사 결과 가져오기
	 * @return
	 */
	public String personalityResult(){
		
		personality = new ApplicantDAO().getPersonality((String)session.get("loginId"));
		
		return SUCCESS;
	}
	
	public String viewCultureResult(){
		System.out.println("getCulture");
		culture = new ApplicantDAO().getCultureResult((String)session.get("loginId"));
		topValue = new ApplicantDAO().topThreeCulture(culture);
		
		
		
		return SUCCESS;
	}
	
	/**
	 * 지원하기 
	 * 11월 8일 오후 13시 52분 작성
	 * @return
	 * @throws Exception 
	 */
	public String applyJob() throws Exception{
		
		System.out.println("applyJob");
		System.out.println(id);
		ApplicantDAO dao = new ApplicantDAO();
		dao.applyJob((String)session.get("loginId"), id);
		
		return SUCCESS;
	}
	
	
	
	/**
	 * 11월 8일 오후 13시 52분 작성
	 * 자기소개서 작성 목록이 있는지 없는지 확인
	 * @return
	 */
	public String checkSelfPromotion(){
		
		System.out.println("checkSelfPromotion");
		System.out.println(id);
		ApplicantDAO dao = new ApplicantDAO();
		selfList = dao.getSelfPromotion(id);
		
		
		
		return SUCCESS;
	}
	
	/**
	 * 자기소개서 쓰기 위한
	 */
	public String writeSelfPromotion(){
		checkSelfPromotion();
		return SUCCESS;
	}
	
	
	/**
	 * 사용자가 등록한 자기소개서 DB저장
	 * @return
	 */
	public String insertSelf() throws Exception{
		
		
		for(int i=0; i<selfList.size(); i++){
			selfList.get(i).setApplicantid((String)session.get("loginId"));
		}
		
		System.out.println(selfList);
		ApplicantDAO dao = new ApplicantDAO();
		dao.insertSelf(selfList);
		dao.applyJob((String)session.get("loginId"), selfList.get(0).getJobid());
		applicant = new ApplicantDAO().getApplicantById((String)session.get("loginId"));
		personality = new ApplicantDAO().getPersonality((String)session.get("loginId"));
		type="B";
		findMatching();
		
		return SUCCESS;
	}
	
	
	/**
	 * applicant 메인에서 회사 정보누르면 뜨는 모달에 값 붙이기 위한 메소드
	 * @return
	 */
	public String modalMainValue(){
		
		System.out.println("action");
		ApplicantDAO dao = new ApplicantDAO();
		
		// id가 companyid , request_id가 jobid
		HashMap<String, Object> result = dao.modalMainValue(id, request_id);
		company = (Company)result.get("company");
		jobValue = (Job)result.get("job");
		culture = (Culture)result.get("culture");
		company.setComppassword(null);
		System.out.println(company);
		System.out.println(jobValue);
		System.out.println(culture);
		
		return SUCCESS;
	}
	
	/**
	 * 자기가 지원한 리스트 가져오기
	 * @return
	 * @throws Exception
	 */
	
	public String applyList() throws Exception{
		
		type = "B";
		findMatching();
		
		return SUCCESS;
	}
	
	
	/**
	 * 자기가 지원한 곳의 이력서와 자기소개서 가져오기
	 * @return
	 * @throws Exception
	 */
	public String myProfile() throws Exception{
		String jobid = id;
		ApplicantDAO dao = new ApplicantDAO();
		obj = dao.myProfile((String)session.get("loginId"), jobid);
		for(int i=0; i<obj.size(); i++){
			System.out.println("i번쨰 : " + obj.get(i));
		}
		
		return SUCCESS;
	}
	
	
	/***
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * getter / setter 메소드
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	
	// get&set
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

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public List<Questions> getQlist() {
		return qlist;
	}

	public void setQlist(List<Questions> qlist) {
		this.qlist = qlist;
	}

	public ArrayList<Education> getEducation() {
		return education;
	}

	public void setEducation(ArrayList<Education> education) {
		this.education = education;
	}

	public ArrayList<Experience> getExperience() {
		return experience;
	}

	public void setExperience(ArrayList<Experience> experience) {
		this.experience = experience;
	}

	public ArrayList<Skills> getSkills() {
		return skills;
	}

	public void setSkills(ArrayList<Skills> skills) {
		this.skills = skills;
	}

	public Personality getPersonality() {
		return personality;
	}

	public void setPersonality(Personality personality) {
		this.personality = personality;
	}

	public Culture getCulture() {
		return culture;
	}

	public void setCulture(Culture culture) {
		this.culture = culture;
	}

	public String getRequest_id() {
		return request_id;
	}

	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getError_text() {
		return error_text;
	}

	public void setError_text(String error_text) {
		this.error_text = error_text;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEvent_id() {
		return event_id;
	}

	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}

	public String getJsonlist() {
		return jsonlist;
	}

	public void setJsonlist(String jsonlist) {
		this.jsonlist = jsonlist;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public ArrayList<CultureSort> getTopValue() {
		return topValue;
	}

	public void setTobValue(ArrayList<CultureSort> topValue) {
		this.topValue = topValue;
	}

	public List<Matching> getMatching() {
		return matching;
	}

	public void setMatching(List<Matching> matching) {
		this.matching = matching;
	}

	public List<Job> getJob() {
		return job;
	}

	public void setJob(List<Job> job) {
		this.job = job;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	public ArrayList<Culture> getCultureList() {
		return cultureList;
	}

	public void setCultureList(ArrayList<Culture> cultureList) {
		this.cultureList = cultureList;
	}

	public ArrayList<SelfPromotion> getSelfList() {
		return selfList;
	}

	public void setSelfList(ArrayList<SelfPromotion> selfList) {
		this.selfList = selfList;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Job getJobValue() {
		return jobValue;
	}

	public void setJobValue(Job jobValue) {
		this.jobValue = jobValue;
	}

	public List<Object> getObj() {
		return obj;
	}

	public void setObj(List<Object> obj) {
		this.obj = obj;
	}
}
