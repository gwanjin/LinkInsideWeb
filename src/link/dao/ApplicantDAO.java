package link.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

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

public class ApplicantDAO{
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	HashMap<String, String> map;
	
	public int insertApplicant(Applicant applicant){
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("applicant in DAO : "+applicant);
		try {
			result = sqlSession.insert("link.mapper.ApplicantMapper.insertApplicant", applicant);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		} finally{
			sqlSession.close();
		}
		return result;
	}
	
	public int insertEducation(ArrayList<Education> education){
		System.out.println("옴");
		int result = 1;
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("education in DAO : "+education);
		try {
			
			for (int i = 0; i < education.size(); i++) {
				result = sqlSession.insert("link.mapper.ApplicantMapper.insertEducation", education.get(i));
			}
			sqlSession.commit();
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally{
			sqlSession.close();
		}
		System.out.println("result : "+result);
		return result;
	}
	
	public int insertExperience(ArrayList<Experience> experience){
		int result = 1;
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("Experience : "+experience);
		try {
			for (int i = 0; i < experience.size(); i++) {
				result = sqlSession.insert("link.mapper.ApplicantMapper.insertExperience", experience.get(i));
			}
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return result;
	}
	
	public int insertSkills(ArrayList<Skills> skills){
		int result = 1;
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("skills : "+skills);
		try {
			for (int i = 0; i < skills.size(); i++) {
				result = sqlSession.insert("link.mapper.ApplicantMapper.insertSkills", skills.get(i));
			}
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return result;
	}
	
	public Applicant login(Applicant applicant){
		Applicant result = null;
		System.out.println("applicant in DAO : "+applicant);
		sqlSession = sqlSessionFactory.openSession();
		try{
			result = sqlSession.selectOne("link.mapper.ApplicantMapper.loginApplicant", applicant);
			System.out.println("result : "+result);
			sqlSession.commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}

	public Applicant select(Applicant applicant) {
		Applicant result = null;
		sqlSession = sqlSessionFactory.openSession();
		try{
			result = sqlSession.selectOne("link.mapper.ApplicantMapper.selectApplicant",applicant);		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return result;
	}

	public int update(Applicant applicant) {
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.update("link.mapper.ApplicantMapper.updateApplicant", applicant);
		sqlSession.commit();
		return result;
	}

	public List<Questions> pTest1(HashMap<String, Integer> map) {
		List<Questions> qlist = new ArrayList<>();
		sqlSession = sqlSessionFactory.openSession();
		try {
			qlist = sqlSession.selectList("link.mapper.ApplicantMapper.selectQuestions", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		return qlist;
	}
	
	public Applicant findApplicant(Applicant applicant){
		Applicant result=null;
		sqlSession = sqlSessionFactory.openSession();
		try{
			result = sqlSession.selectOne("link.mapper.ApplicantMapper.findApplicant",applicant);		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return result;
	}
	
	public int insertPersonality(Personality personality){
		int result = 0;
		
		sqlSession = sqlSessionFactory.openSession();
		
		try {
				
			result = sqlSession.insert("link.mapper.ApplicantMapper.insertPersonality", personality);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		
		return result;
		
	}
	
	public int insertPersonality2(Personality personality){
		int result = 0;
		
		sqlSession = sqlSessionFactory.openSession();
		
		try {
				
			result = sqlSession.insert("link.mapper.ApplicantMapper.insertPersonality2", personality);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		
		return result;
		
	}
	
	public int insertCulture(Culture culture){
		int result = 0;
		
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("link.mapper.ApplicantMapper.insertCulture", culture);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		return result;
	}
	
	
	public Culture getCultureResult(String id){
		Culture result = null;
		sqlSession = sqlSessionFactory.openSession();
		try{
			result = sqlSession.selectOne("link.mapper.ApplicantMapper.selectCultureResult", id);		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return result;
	}
	
	public Applicant getApplicantById(String id){
		Applicant result = null;
		sqlSession = sqlSessionFactory.openSession();
		try{
			result = sqlSession.selectOne("link.mapper.ApplicantMapper.selectApplicantById", id);		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return result;
		
	}
	
	public Personality getPersonality(String id){
		Personality result = null;
		sqlSession = sqlSessionFactory.openSession();
		try{
			result = sqlSession.selectOne("link.mapper.ApplicantMapper.selectPersonalityById", id);		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return result;
	}
	
	public Applicant searchApplicant(String applicantid){
		Applicant result=null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("link.mapper.ApplicantMapper.searchApplicant", applicantid);
			System.out.println("result :" +result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return result;
	}

	
	public Map<String, Object> getMatchedApplicant(String id, String type){
		 Map<String, Object> result = null;
		
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("id in dao : "+id);
		HashMap<String, String> map = new HashMap<>();
		
		map.put("id", id);
		map.put("type", type);
		if(type.equals("B"))
			map.put("type2", "A_");
		else
			map.put("type2", null);
		
		System.out.println("dao in type: " + type);
		try{
			result = sqlSession.selectMap("link.mapper.ApplicantMapper.getJoindTable", map, "JOBID");

		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("result in gma : "+result);
		return result;
	}
	
	public int insertApplicantMatching(Object obj){
		int result = 0;
		result = new InsertOrSelectMatching().getAlljob(obj);
		return result;
	}
	
	public List<String> getTagList(String type) {
      sqlSession = sqlSessionFactory.openSession();
      List<String> list = new ArrayList<>();
      try {
         if(type.equals("skill")){
            list = sqlSession.selectList("link.mapper.ApplicantMapper.getTagList");            
         }else if(type.equals("education")){
            
         }else if(type.equals("work")){
            
         }
         System.out.println(list);
      } catch (Exception e) {
         e.printStackTrace();
      }finally{
         sqlSession.close();
      }
      return list;
   }
	
	public ArrayList<Culture> searchCompanyCulture(Iterator<String> it){
		ArrayList<Culture> result = null;
		try {
			System.out.println("dao in jobid : " + it);
			while(it.hasNext()){
				Culture culture = sqlSession.selectOne("link.mapper.ApplicantMapper.searchCompanyCulture", it.next());
				if(result == null) result = new ArrayList<>();
				result.add(culture);
			}
			
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally{
	         sqlSession.close();
	      }
		
		return result;
	}
	
	public ArrayList<CultureSort> topThreeCulture(Culture culture){
		
		ArrayList<CultureSort> typeList = new ArrayList<>();
		
		typeList.add(new CultureSort("Closeness", culture.getNeedcloseness()));
		typeList.add(new CultureSort("Curiosity", culture.getNeedcuriosity()));
		typeList.add(new CultureSort("Challenge", culture.getNeedchallenge()));
		typeList.add(new CultureSort("Love", culture.getNeedlove()));
		typeList.add(new CultureSort("Self-expression", culture.getNeedselfexpression()));
		typeList.add(new CultureSort("Liberty", culture.getNeedliberty()));
		typeList.add(new CultureSort("Practicality", culture.getNeedpracticality()));
		typeList.add(new CultureSort("Stability", culture.getNeedstability()));
		typeList.add(new CultureSort("Structure", culture.getNeedstructure()));
		typeList.add(new CultureSort("Harmony", culture.getNeedharmony()));
		typeList.add(new CultureSort("Excitement", culture.getNeedideal()));
		
		Collections.sort(typeList);
		Collections.reverse(typeList);
		
		return typeList;
	}
	
	
	/**
	 * 지원하기 메소드
	 * 11월 8일 오전 2시 경 만듬
	 * @return
	 */
	public int applyJob(String applicantid, String jobid){
		int result = 0;
		HashMap<String, String> map = new HashMap<>();
		map.put("applicantid", applicantid);
		map.put("jobid", jobid);
		
		sqlSession = sqlSessionFactory.openSession();
		
		try{
			result = sqlSession.update("link.mapper.ApplicantMapper.applyJob", map);
			sqlSession.update("link.mapper.ApplicantMapper.increaseJobApplied", jobid);
			sqlSession.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	
	/*
	 * 자기소개 문항 가져오기
	 */
	public ArrayList<SelfPromotion> getSelfPromotion(String jobid){
		ArrayList<SelfPromotion> selfList = null;
		
		sqlSession = sqlSessionFactory.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("jobid", jobid);
		map.put("applicantid", null);
		
		try{
			selfList = (ArrayList)sqlSession.selectList("link.mapper.ApplicantMapper.getSelfPromotion", map);
			sqlSession.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return selfList;
	}
	
	
	
	/**
	 * 자기소개서 등록하기
	 * @param selfList
	 * @return
	 */
	public int insertSelf(ArrayList<SelfPromotion> selfList){
		int result = 0;
		
		sqlSession = sqlSessionFactory.openSession();
		
		try{
			for(SelfPromotion self: selfList){
				result = sqlSession.update("link.mapper.ApplicantMapper.insertSelf", self);
			}
			sqlSession.commit();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public HashMap<String, Object> modalMainValue(String compid, String jobid){
		HashMap<String, Object> result = null;
		
		sqlSession = sqlSessionFactory.openSession();
		
		try{
			Company comp = sqlSession.selectOne("link.mapper.ApplicantMapper.getOneCompany", compid);
			Job job = sqlSession.selectOne("link.mapper.ApplicantMapper.getOneJob", jobid);
			Culture culture = sqlSession.selectOne("link.mapper.ApplicantMapper.getCultureByCompid", compid);
			result = new HashMap<>();
			result.put("company", comp);
			result.put("job", job);
			result.put("culture", culture);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * 이력서 및 자소서 정보 가져오기
	 */
	public List<Object> myProfile(String id, String jobid){
		List<Object> result = null;
		
		
		System.out.println("id in dao " +id);
		System.out.println("jobid in dao " + jobid);
		
		sqlSession = sqlSessionFactory.openSession();
		
		try{
			ArrayList<Education> edu = (ArrayList)sqlSession.selectList("link.mapper.ApplicantMapper.getEducation", id);
			ArrayList<Experience> exp = (ArrayList)sqlSession.selectList("link.mapper.ApplicantMapper.getExperience", id);
			ArrayList<Skills> skills = (ArrayList)sqlSession.selectList("link.mapper.ApplicantMapper.getSkills", id);
			Applicant applicant = sqlSession.selectOne("link.mapper.ApplicantMapper.searchApplicant", id);
			
			HashMap<String, String> map = new HashMap<>();
			map.put("applicantid", id);
			map.put("jobid", jobid);
			ArrayList<SelfPromotion> pro = (ArrayList)sqlSession.selectList("link.mapper.ApplicantMapper.getSelfPromotion", map);
			
			
			result = new ArrayList<>();
			result.add(applicant);
			result.add(edu);
			result.add(exp);
			result.add(skills);
			result.add(pro);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return result;
	}
}
