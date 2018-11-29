package link.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import link.dao.MybatisConfig;
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

public class CompanyDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;

	public int insert(Company company) {

		sqlSession = sqlSessionFactory.openSession();
		System.out.println("in insert DAO");
		int result = 0;
		System.out.println("in DAO" + company);
		try {
			result = sqlSession.insert("link.mapper.CompanyMapper.insertCompany", company);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public Company select(Company company) {
		System.out.println("selectDAO");
		Company result = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("link.mapper.CompanyMapper.selectCompany", company);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public int update(Company company) {
		System.out.println("updateDAO");
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("link.mapper.CompanyMapper.updateCompany", company);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	// 아이디&비밀번호 찾기
	public Company findCompany(Company company) {
		System.out.println("findcompanyDAO 들어옴" + company);
		Company result = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			System.out.println("1");
			result = sqlSession.selectOne("link.mapper.CompanyMapper.findCompany", company);
			System.out.println("result" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public Company checkId(Company company) {
		System.out.println("cjeckID");
		Company result = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("link.mapper.CompanyMapper.checkId", company);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public ArrayList<Job> companyView(String id) {
		ArrayList<Job> result = null;
		System.out.println("compView");
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = (ArrayList) sqlSession.selectList("link.mapper.CompanyMapper.getJobList", id);
			for (Job j : result) {
				String jobid = j.getJobid();
				ArrayList<Skills> list = (ArrayList) sqlSession.selectList("link.mapper.CompanyMapper.getSkillList",jobid);
				j.setSkillsList(list);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;
	}

	/**
	 * joblistView 메소드 위 메소드와의 차이점은 위에는 company view에 붙이기 위해 가져오는 메소드로 마감기한 순으로
	 * 5개만 가져옴 아래 메소드는 전체 구인등록 결과를 가져오기 위한 메소드 나중에 mapper에서 분기처리 필요 등록시간 2016년
	 * 11월 1일 10시 8분
	 * 
	 * @param id
	 * @return
	 */
	public Map<String, Object> joblistView(String id) {
		Map<String, Object> result = null;
		System.out.println("joblistView");
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectMap("link.mapper.CompanyMapper.getJobs", id, "JOBID");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;
	}

	public int jobInsert(ArrayList<Object> obj) {
		System.out.println("jobinsert");
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("in dao------ obj(0): " + obj.get(0));
		System.out.println("in dao------ obj(1): " + obj.get(1));
		Job job = (Job) obj.get(0);
		try {
			result = sqlSession.insert("link.mapper.CompanyMapper.jobInsert", job);
			ArrayList<Skills> skills = (ArrayList<Skills>) obj.get(1);
			for (Skills s : skills) {

				result = sqlSession.insert("link.mapper.CompanyMapper.insertSkills", s);

			}

			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public List<Questions> pTest1(HashMap<String, Integer> map) {
		List<Questions> qlist = new ArrayList<>();
		sqlSession = sqlSessionFactory.openSession();
		try {
			qlist = sqlSession.selectList("link.mapper.CompanyMapper.selectQuestions", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return qlist;
	}

	public int insertCulture(Culture culture) {
		int result = 0;
		System.out.println("insertCulture");
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("link.mapper.CompanyMapper.insertCulture", culture);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;

	}

	public Company searchCompany(String compid) {
		Company company = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			company = sqlSession.selectOne("link.mapper.CompanyMapper.searchCompany", compid);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return company;
	}

	public int insertPersonality(Personality personality) {
		int result = 0;
		System.out.println("insertPersonal");

		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("link.mapper.CompanyMapper.insertPersonality", personality);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;
	}

	public int insertJobMatching(Object id) {
		int result = 0;
		InsertOrSelectMatching iosm = new InsertOrSelectMatching();
		result = iosm.getAlljob(id);

		return result;
	}

	public Job detail_jobinfor(String jobid) {
		Job job = null;
		System.out.println("detail_jobinfor들어옴");

		sqlSession = sqlSessionFactory.openSession();
		try {
			job = sqlSession.selectOne("link.mapper.CompanyMapper.detail_jobinfor", jobid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return job;
	}

	public List<Job> getCompanysJob(String id) {
		List<Job> job = null;

		sqlSession = sqlSessionFactory.openSession();
		try {
			job = sqlSession.selectList("link.mapper.CompanyMapper.getCompanysJob", id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return job;
	}

	public List<Matching> findAppliedApplicant(String id) {
		System.out.println("find" + id);
		List<Matching> matching = new ArrayList<>();
		sqlSession = sqlSessionFactory.openSession();
		try {
			matching = sqlSession.selectList("link.mapper.CompanyMapper.findAppliedApplicant", id);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return matching;
	}
	
	public List<Object> findApplicantDetails(String id) {
		List<Object> obj = new ArrayList<>();
		List<Applicant> applicant = null;
		List<Education> edu = null;
		List<Experience> exp = null;
		List<Skills> skills = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			applicant = sqlSession.selectList("link.mapper.CompanyMapper.findAppliedApplicantInfo", id);
			edu = sqlSession.selectList("link.mapper.CompanyMapper.findAppliedApplicantEdu", id);
			exp = sqlSession.selectList("link.mapper.CompanyMapper.findAppliedApplicantExp", id);
			skills = sqlSession.selectList("link.mapper.CompanyMapper.findAppliedApplicantSkills", id);
			obj.add(applicant);
			obj.add(edu);
			obj.add(exp);
			obj.add(skills);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();  
		}
		return obj;
	}
	
	public Applicant getApplicant(String id){
		Applicant app = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			app = sqlSession.selectOne("link.mapper.CompanyMapper.getApplicantbyId", id);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();  
		}
		
		
		return app;
	}
	
	public int updateStatus(Map<String,Object> something){
		sqlSession = sqlSessionFactory.openSession();
		int result=0;
		System.out.println("someting : "+something);
		result = sqlSession.update("link.mapper.CompanyMapper.updateStatus", something);
		sqlSession.commit();
		return result;
	}
	
	public Job findLastJob(){
		Job job = null;
		
		sqlSession = sqlSessionFactory.openSession();
		try {
			job = sqlSession.selectOne("link.mapper.CompanyMapper.getLastJob");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return job;
	}
	
	public int selfPromotionInsert(ArrayList<SelfPromotion> selfPromotion){
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			for (SelfPromotion self : selfPromotion) {
				result = sqlSession.insert("link.mapper.CompanyMapper.insertSelfPromotion", self);
			}
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}

	public ArrayList<SelfPromotion> getSelfPromotionList(String applicantid, String jobid) {
		System.out.println("dao in jobid " + jobid);
		ArrayList<SelfPromotion> list = null;
		sqlSession = sqlSessionFactory.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("applicantid", applicantid);
		map.put("jobid", jobid);
		
		try {
			list = (ArrayList)sqlSession.selectList("link.mapper.CompanyMapper.getSelfPromotion", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
	}
}
