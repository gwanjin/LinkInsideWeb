package link.actions;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import com.opensymphony.xwork2.ActionSupport;

import link.dao.ApplicantDAO;
import link.dao.CompanyDAO;
import link.dao.InsertOrSelectMatching;
import link.vo.Applicant;
import link.vo.Company;
import link.vo.Culture;
import link.vo.Education;
import link.vo.Experience;
import link.vo.Job;
import link.vo.Matching;
import link.vo.Personality;
import link.vo.Questions;
import link.vo.SelfPromotion;
import link.vo.Skills;

public class CompanyAction extends ActionSupport implements SessionAware {
	Company company;
	Applicant applicant;
	Job job;
	Culture culture;
	Personality personality;
	Map<String, Object> session;
	List<Questions> qlist = new ArrayList<>();
	int result;
	String str;
	int page;
	ArrayList<SelfPromotion> selfPromotion;
	ArrayList<Skills> skills;
	ArrayList<Job> jobList;
	private String request_id;
 	private String phone;
    private String status;
    private String error_text;
    private String number;
    private String event_id;
    private String price;
    private String currency;
    private String jobid;
    private Map<String, Object> map;
    private List<Object> obj;
    private String applicantid;
    private String passornot;
    List<Matching> matching;
	Education education;
	ArrayList<Experience> experience; 
	ArrayList<SelfPromotion> selfList;
	
	
	
	public String insertCompany(){
		
		CompanyDAO dao = new CompanyDAO();
		System.out.println("company : "+company);
		result = dao.insert(company);
		if(result == 1){
			session.put("loginId", company.getCompid());
			HashMap<String, Integer> map = new HashMap<>();
			map.put("value", 100);
			map.put("last", 51);
			qlist = dao.pTest1(map);
			str =  SUCCESS;
		}else{
			str =  ERROR;
		}
		System.out.println(str + "checking!!!");
		return str;
	}
	
	public String selectCompanyLoginID(){
		CompanyDAO dao = new CompanyDAO();
		System.out.println("company : "+company);
		company = dao.select(company);
		if(company!=null){
			session.put("loginId", company.getCompid());
		}
		return SUCCESS;
		//asdfsd
	}
	public String logout(){
		session.clear();
		return SUCCESS;
	}
	
	
	/**
	 * 처음 회사메인페이지로 이동시 회사가 등록한 구인정보가 있는지 가져오기 위한 메소드
	 * @return
	 * @throws Exception
	 */
	public String companyView() throws Exception{
		System.out.println((String)session.get("loginId"));
		jobList = new CompanyDAO().companyView((String)session.get("loginId"));
		joblistView();
		return SUCCESS;
	}
	
	public String updateCompany(){
		CompanyDAO dao = new CompanyDAO();
		result = dao.update(company);
		if(result == 1){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	
	//아이디&비밀번호 찾기
	public String findCompany(){
		System.out.println("들어옴" + company);
		CompanyDAO dao = new CompanyDAO();
		company = dao.findCompany(company);
		System.out.println("company :" +company);
		if(company==null){
			System.out.println("안녕");
			return ERROR;
		}else{
			System.out.println("11");
			session.put("loginId", company.getCompid());
			return SUCCESS;
			
		}
	}
	
	public String idCheck(){
		CompanyDAO dao = new CompanyDAO();
		company = dao.checkId(company);
			System.out.println(company + "success return");
			return SUCCESS;

	}
	
	public String ctestCompany(){
		System.out.println("SESSION ID!!!!!" + session.get("loginId"));
		CompanyDAO dao = new CompanyDAO();
		HashMap<String, Integer> map = new HashMap<>();	
		map.put("value", 100);
		map.put("last", 151);
		qlist = dao.pTest1(map);
		if(qlist==null){
			return ERROR;
		}
		System.out.println(qlist);
		return SUCCESS;
	}
	
	
	/**
	 * 구인 등록시
	 * 직무 성격 검사 질문지 가져오기
	 * @return
	 */
	public String applicantTestCompany(){
		CompanyDAO dao = new CompanyDAO();
		HashMap<String, Integer> map = new HashMap<>();	
		map.put("value", 50);
		map.put("last", 99);
		qlist = dao.pTest1(map);
		if(qlist==null){
			return ERROR;
		}
		System.out.println(qlist);
		return SUCCESS;
	}
	

	/**
	 * 직무 등록시 작성한 직무에 맞는 성격결과를 등록하는 메소드
	 * @return
	 */
	public String testResultComp(){
		
		System.out.println(personality);
		session.put("personality", personality);
//		new CompanyDAO().insertPersonality(personality);
		
		return SUCCESS;
	}
	
	/**
	 * 최종 수정 11월 1일 오후 4시 15분
	 * 회사메인페이지 이동시 필요한 문장 추가
	 * @return
	 * @throws Exception
	 */
	public String cultureResult() throws Exception{
		System.out.println(culture);
		result = new CompanyDAO().insertCulture(culture);
		if(result == 1){
			str =  SUCCESS;
		}else{
			str =  ERROR;
		}
		jobList = new CompanyDAO().companyView((String)session.get("loginId"));
		return SUCCESS;
	}
	
	/**
	 * 구직 등록하기
	 * @return
	 */
	public String jobInsert(){
		CompanyDAO dao = new CompanyDAO();
		try {
			System.out.println("insertJob");
			job.setCompid((String)session.get("loginId"));
			ArrayList<Object> obj = new ArrayList<Object>();
			obj.add(job);
			obj.add(skills);
			dao.jobInsert(obj);
		} catch (Exception e) {
			e.printStackTrace();
			return SUCCESS;
		}
		try {
			System.out.println("insert personality");
			System.out.println((Personality)session.get("personality"));
			dao.insertPersonality((Personality)session.get("personality"));
			session.remove("personality");
			jobList = dao.companyView((String)session.get("loginId"));
			System.out.println("job : "+job);
			job = dao.findLastJob();
			System.out.println("action job" + job);
			dao.insertJobMatching(job);
			System.out.println("마지막 잡아이디 " + job.getJobid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/**
		 * 11월 8일
		 * 8시 44분 변경
		 * 삭제 하지말아주세요.
		 */
		if(str.equals("add")){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public String request(){
		
		if(phone.isEmpty()){
			System.out.println("empty");
		}else{
			System.out.println("notempty");
		}
		
		try{
			System.out.println("in request");
	 		String urlStr = "https://api.nexmo.com/verify/json?api_key=dbd5abac&api_secret=e0e039e604318304&number="+phone+"&brand=NexmoVerifyTest";
		      
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
	
	// 지우면 에러떠요ㅜ.ㅜ
	public String detail_applicant(){
		return SUCCESS;
	}
	public String update_job(){
		
		return SUCCESS;
	}
	public String updateCompanyForm(){
		CompanyDAO dao = new CompanyDAO();
		company = dao.searchCompany((String)session.get("loginId"));
		return SUCCESS;
	}
	
	
	/**
	 * 현재 회사가 등록한 구인정보 현황 보기 메소드
	 * 등록날짜 : 11월 1일 10시 5분  by 관진
	 * @return
	 */
	public String joblistView(){
		
		try{
			map = new CompanyDAO().joblistView((String)session.get("loginId"));
			System.out.println("Map : "+map);
		}catch(Exception e){
			e.printStackTrace();
		}		
		
		return SUCCESS;
	}
	
	
	
	/**
	 * 등록 구인 JOB 세부사항 보기
	 * 2016년 11월 2일
	 * 오후 3시 46분 by gwanjin
	 * @return
	 */
	public String detail_jobinfo(){
		
		
		
		return SUCCESS;
	}
	
	public String findAppliedApplicant(){
		CompanyDAO dao = new CompanyDAO();
		System.out.println("jobid : "+jobid);
		try{
			matching = dao.findAppliedApplicant(jobid);
			for (Matching matching : matching) {
				matching.setCulper(matching.getCulper()*100.0);
				matching.setPerper(matching.getPerper()*100.0);
				matching.setSkillper(matching.getSkillper()*100.0);
				matching.setTotalper(matching.getTotalper()*100.0);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		System.out.println(matching);
		return SUCCESS;
	}
	
	public String findApplicantDetails(){
		CompanyDAO dao = new CompanyDAO();
		System.out.println("action in jobid" + jobid);
		System.out.println("applicantid : "+applicantid);
		try{
			obj = dao.findApplicantDetails(applicantid);
			System.out.println("obj : "+obj);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		selfList = dao.getSelfPromotionList(applicantid, jobid);
		
		
		
		
		return SUCCESS;
	}
	
	public String updateStatus(){
		CompanyDAO dao = new CompanyDAO();
		System.out.println("jobid : "+jobid);
		System.out.println("applicantid : "+applicantid);
		System.out.println("passornot : "+passornot);
		String text="";
		
		applicant = dao.getApplicant(applicantid);
		
/*		ApplicantDAO appdao = new ApplicantDAO();
		
		Applicant a = appdao.searchApplicant(applicantid);
		String phone = a.getApplicantphone();
*/		if(passornot.equals("pass")){
			
			text= applicant.getApplicantfirst() + "様。このたび、弊社にお志望いただきましてありがとうございます。面接の日が決定され。ご連絡致します。詳しい内容は後ほどご連絡申し上げます。";
			
		}else if(passornot.equals("fail")){
			text= applicant.getApplicantfirst() + "様。このたび、弊社の採用募集に志望にしていただきありがとうございました。"
					+ "厳正なる選考の結果、誠に残念ではございますが、今回は採用を見合わせていただくことになりました。"
					+ "ご希望に添えず恐縮ですが、なにとぞご了承くださいますようお願い申し上げます。";
		}
		
		
		try{
	 		String urlStr = "https://rest.nexmo.com/sms/json?type=unicode&api_key=dbd5abac&api_secret=e0e039e604318304&&from=NexmoWorks&text="+text+"&to="+applicant.getApplicantphone();
		      
		    System.setProperty("jsse.enableSNIExtension", "false") ;
		    InputStreamReader isr;
		    URL url = null;
		    
		      url = new URL(urlStr);
		      isr = new InputStreamReader(url.openConnection().getInputStream(), "utf-8");
		      JSONObject object = (JSONObject) JSONValue.parse(isr);
		      status = (String) object.get("status");
		      error_text = (String) object.get("error_text");
		}catch (Exception e){
			e.printStackTrace();
		}
		
		Map<String,Object> something = new HashMap<>();
		something.put("jobid", jobid);
		something.put("applicantid", applicantid);
		something.put("passornot", passornot);
		try{
			result = dao.updateStatus(something);
		}catch(Exception e){
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public String selfPromotionInsert() throws Exception{
		CompanyDAO dao = new CompanyDAO();
		System.out.println(selfPromotion);
		job = dao.findLastJob();
		for(int i=0; i<selfPromotion.size(); i++){
			selfPromotion.get(i).setJobid(job.getJobid());
			selfPromotion.get(i).setQnumber(i);
		}
		
		dao.selfPromotionInsert(selfPromotion);
		jobList = new CompanyDAO().companyView((String)session.get("loginId"));
		joblistView();
		return SUCCESS;
	}
	
	
	
	
	/**
	 * 
	 * 
	 * 
	 * getter / setter 메소드
	 * 
	 * 
	 * 
	 */
	
	//get&set
	
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

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}
	public List<Questions> getQlist() {
		return qlist;
	}

	public void setQlist(List<Questions> qlist) {
		this.qlist = qlist;
	}

	public Culture getCulture() {
		return culture;
	}

	public void setCulture(Culture culture) {
		this.culture = culture;
	}

	public ArrayList<Skills> getSkills() {
		return skills;
	}

	public void setSkills(ArrayList<Skills> skills) {
		this.skills = skills;
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

	public ArrayList<Job> getJobList() {
		return jobList;
	}

	public void setJobList(ArrayList<Job> jobList) {
		this.jobList = jobList;
	}

	public Personality getPersonality() {
		return personality;
	}

	public void setPersonality(Personality personality) {
		this.personality = personality;
	}

	public String getJobid() {
		return jobid;
	}

	public void setJobid(String jobid) {
		this.jobid = jobid;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	public List<Object> getObj() {
		return obj;
	}

	public void setObj(List<Object> obj) {
		this.obj = obj;
	}

	public Education getEducation() {
		return education;
	}

	public void setEducation(Education education) {
		this.education = education;
	}

	public ArrayList<Experience> getExperience() {
		return experience;
	}

	public void setExperience(ArrayList<Experience> experience) {
		this.experience = experience;
	}

	public List<Matching> getMatching() {
		return matching;
	}

	public void setMatching(List<Matching> matching) {
		this.matching = matching;
	}

	public String getApplicantid() {
		return applicantid;
	}

	public void setApplicantid(String applicantid) {
		this.applicantid = applicantid;
	}

	public String getPassornot() {
		return passornot;
	}

	public void setPassornot(String passornot) {
		this.passornot = passornot;
	}

	public ArrayList<SelfPromotion> getSelfPromotion() {
		return selfPromotion;
	}

	public void setSelfPromotion(ArrayList<SelfPromotion> selfPromotion) {
		this.selfPromotion = selfPromotion;
	}

	public ArrayList<SelfPromotion> getSelfList() {
		return selfList;
	}

	public void setSelfList(ArrayList<SelfPromotion> selfList) {
		this.selfList = selfList;
	}

	public Applicant getApplicant() {
		return applicant;
	}

	public void setApplicant(Applicant applicant) {
		this.applicant = applicant;
	}
	
}
