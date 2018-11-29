package link.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import link.vo.Applicant;
import link.vo.Company;
import link.vo.Culture;
import link.vo.Education;
import link.vo.Experience;
import link.vo.Job;
import link.vo.Personality;
import link.vo.Skills;

public class InsertOrSelectMatching {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	int result;

	public InsertOrSelectMatching() {
	}

	public int getAlljob(Object id) {
		sqlSession = sqlSessionFactory.openSession();
		HashMap<String, Object> map = new HashMap<>();// return. main에 뿌려줌
		List<Applicant> applicants;
		
		// applicant
		List<Education> eduresult;
		List<Experience> expresult;
		List<Skills> skillsApp;
		Culture cultureApp = null;
		Personality personalityApp = null;
		// 값 산출변수
		double basic = 0;
		double culture = 0;
		double personal = 0;
		// company
		List<Company> companys;
		List<Job> job = null;
		List<Job> jobs = new ArrayList<>();
		List<Skills> skillsCom;
		Culture cultureCom = null;
		Personality personalityCom = null;
		if (id instanceof Applicant) {
			Applicant applicant = (Applicant) id;
			eduresult = sqlSession.selectList("link.mapper.ApplicantMapper.getEducation", applicant);
			expresult = sqlSession.selectList("link.mapper.ApplicantMapper.getExperience", applicant);
			skillsApp = sqlSession.selectList("link.mapper.ApplicantMapper.getSkills", applicant);
			cultureApp = sqlSession.selectOne("link.mapper.ApplicantMapper.getCulture", applicant);
			personalityApp = sqlSession.selectOne("link.mapper.ApplicantMapper.getPersonality", applicant);
			companys = sqlSession.selectList("link.mapper.ApplicantMapper.getCompany");
			for (Company com : companys) {
				cultureCom = sqlSession.selectOne("link.mapper.ApplicantMapper.getCulutreCom", com);
				System.out.println("cultureCom : " + cultureCom);
				job = sqlSession.selectList("link.mapper.ApplicantMapper.getJob", com);
				for (Job j : job) {
					System.out.println("j : "+j);
					personalityCom = sqlSession.selectOne("link.mapper.ApplicantMapper.getPersonalityCom", j);
					System.out.println("personalityCom : "+personalityCom);
					skillsCom = sqlSession.selectList("link.mapper.ApplicantMapper.getSkillsCom", j);
					int basicCount=0;
					for (Education edu : eduresult) {
						basicCount+=2;
						if (j.getEdumajor().equals(edu.getMajor())) {
							basic += 1;
						}
						if (j.getEdulevel().equals(edu.getDiploma())) {
							basic += 1;
						}
					}
					for (Experience exp : expresult) {
						basicCount++;
						if (j.getExparea().equals(exp.getWorkjobtitle())) {
							basic += 1;
						}
					}
					for (Skills skapp : skillsApp) {
						basicCount+=2;
						for (Skills skcom : skillsCom) {
							if (skapp.getSkillname().equals(skcom.getSkillname())) {
								basic += 1;
							}
							if (skapp.getCertname().equals(skcom.getSkillname())) {
								basic += 1;
							}
						}
					}
					basic = basic / basicCount;
					ArrayList<Double> cultureAppArr = new ArrayList<>();
					cultureAppArr.add(cultureApp.getNeedchallenge());
					cultureAppArr.add(cultureApp.getNeedcloseness());
					cultureAppArr.add(cultureApp.getNeedcuriosity());
					cultureAppArr.add(cultureApp.getNeedharmony());
					cultureAppArr.add(cultureApp.getNeedideal());
					cultureAppArr.add(cultureApp.getNeedliberty());
					cultureAppArr.add(cultureApp.getNeedlove());
					cultureAppArr.add(cultureApp.getNeedpracticality());
					cultureAppArr.add(cultureApp.getNeedselfexpression());
					cultureAppArr.add(cultureApp.getNeedstability());
					cultureAppArr.add(cultureApp.getNeedstructure());
/*					System.out.println("cultureAppArr : " + cultureAppArr);*/
					ArrayList<Double> cultureComArr = new ArrayList<>();
					cultureComArr.add(cultureCom.getNeedchallenge());
					cultureComArr.add(cultureCom.getNeedcloseness());
					cultureComArr.add(cultureCom.getNeedcuriosity());
					cultureComArr.add(cultureCom.getNeedharmony());
					cultureComArr.add(cultureCom.getNeedideal());
					cultureComArr.add(cultureCom.getNeedliberty());
					cultureComArr.add(cultureCom.getNeedlove());
					cultureComArr.add(cultureCom.getNeedpracticality());
					cultureComArr.add(cultureCom.getNeedselfexpression());
					cultureComArr.add(cultureCom.getNeedstability());
					cultureComArr.add(cultureCom.getNeedstructure());
					double cultureAbs = 0;
					for (int i = 0; i < cultureComArr.size(); i++) {
						cultureAbs = cultureAppArr.get(i) - cultureComArr.get(i);
						if (Math.abs(cultureAbs) <= 0.1) {
							culture += 0.09;
						} else if (Math.abs(cultureAbs) >= 0.11 && Math.abs(cultureAbs) <= 0.2) {
							culture += 0.075;
						} else if (Math.abs(cultureAbs) >= 0.21 && Math.abs(cultureAbs) <= 0.3) {
							culture += 0.06;
						} else if (Math.abs(cultureAbs) >= 0.31 && Math.abs(cultureAbs) <= 0.4) {
							culture += 0.045;
						} else if (Math.abs(cultureAbs) >= 0.41 && Math.abs(cultureAbs) <= 0.5) {
							culture += 0.03;
						} else if (Math.abs(cultureAbs) >= 0.51 && Math.abs(cultureAbs) <= 0.6) {
							culture += 0.015;
						}
					}
					// app, com 성격 비교치
					ArrayList<Double> personalAppArr = new ArrayList<>();
					personalAppArr.add(personalityApp.getAgreeableness());
					personalAppArr.add(personalityApp.getConscientiousness());
					personalAppArr.add(personalityApp.getEmotional());
					personalAppArr.add(personalityApp.getExtraversion());
					personalAppArr.add(personalityApp.getOpenness());
					ArrayList<Double> personalComArr = new ArrayList<>();
					personalComArr.add(personalityCom.getAgreeableness());
					personalComArr.add(personalityCom.getConscientiousness());
					personalComArr.add(personalityCom.getEmotional());
					personalComArr.add(personalityCom.getExtraversion());
					personalComArr.add(personalityCom.getOpenness());
					double personalAbs = 0;
					for (int i = 0; i < personalAppArr.size(); i++) {
						personalAbs = personalAppArr.get(i) - personalComArr.get(i);
						if (Math.abs(personalAbs) <= 0.1) {
							personal += 0.2;
						} else if (Math.abs(personalAbs) >= 0.11 && Math.abs(personalAbs) <= 0.2) {
							personal += 0.16;
						} else if (Math.abs(personalAbs) >= 0.21 && Math.abs(personalAbs) <= 0.3) {
							personal += 0.12;
						} else if (Math.abs(personalAbs) >= 0.31 && Math.abs(personalAbs) <= 0.4) {
							personal += 0.08;
						} else if (Math.abs(personalAbs) >= 0.41 && Math.abs(personalAbs) <= 0.5) {
							personal += 0.04;
						} else if (Math.abs(personalAbs) >= 0.51 && Math.abs(personalAbs) <= 0.6) {
							personal += 0.01;
						}
					}
					
					culture = Math.round(culture*10000.0)/10000.0;
					basic = Math.round(basic*10000.0)/10000.0;
					personal = Math.round(personal*10000.0)/10000.0;
					if(culture == 1.0){
						culture = culture-0.01;
					}else if(basic == 1.0){
						basic = basic-0.01;
					}else if(personal == 1.0){
						personal = personal-0.01;
					}
					double totalper = Math.round(((culture / (10/3)) + (basic / (10/3)) + (personal / (10/4)))*10000.0)/10000.0;
					System.out.println("culture : "+culture);
					System.out.println("basic : "+basic);
					System.out.println("personal : "+personal);
					System.out.println("totalper : "+totalper);
					map.put("jobid", j.getJobid());
					map.put("applicantid", applicant.getApplicantid());
					map.put("culper", culture);
					map.put("skillper", basic);
					map.put("perper", personal);
					map.put("totalper", totalper);
					try {
						sqlSession.insert("link.mapper.ApplicantMapper.insertMatch", map);
						sqlSession.commit();
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					culture=0;
					basic=0;
					personal=0;
					totalper=0;
				}
			}
		} else {
			applicants = sqlSession.selectList("link.mapper.ApplicantMapper.getAllApplicant");
			Job getjob = (Job) id;
/*			System.out.println("getjob : "+getjob);*/
			getjob = sqlSession.selectOne("link.mapper.CompanyMapper.getLastJob");
/*			System.out.println("getjob : "+getjob);*/
			cultureCom = sqlSession.selectOne("link.mapper.CompanyMapper.getCulutreCom", getjob);
/*			System.out.println("cultureCom :"+cultureCom);
*/			for (Applicant applicant : applicants) {
/*				System.out.println("applicant : "+applicant);*/
				eduresult = sqlSession.selectList("link.mapper.ApplicantMapper.getEducation", applicant);
/*				System.out.println("eduresult : "+eduresult);
*/				expresult = sqlSession.selectList("link.mapper.ApplicantMapper.getExperience", applicant);
/*				System.out.println("expresult : "+expresult);
*/				skillsApp = sqlSession.selectList("link.mapper.ApplicantMapper.getSkills", applicant);
/*				System.out.println("skillsApp : "+skillsApp);
*/				cultureApp = sqlSession.selectOne("link.mapper.ApplicantMapper.getCulture", applicant);
/*				System.out.println("cultureApp : "+cultureApp);
*/				personalityApp = sqlSession.selectOne("link.mapper.ApplicantMapper.getPersonality", applicant);
/*				System.out.println("personalityApp : "+personalityApp);
*/
				personalityCom = sqlSession.selectOne("link.mapper.ApplicantMapper.getPersonalityCom", getjob);
/*				System.out.println("personalityCom : "+personalityCom);
*/				skillsCom = sqlSession.selectList("link.mapper.ApplicantMapper.getSkillsCom", getjob);
/*				System.out.println("skillsCom : "+skillsCom);
 * 
*/				
				int basicCount = 0;
				for (Education edu : eduresult) {
					basicCount+=2;
					if (getjob.getEdumajor().equals(edu.getMajor())) {
						basic += 1;
					}
					if (getjob.getEdulevel().equals(edu.getDiploma())) {
						basic += 1;
					}
				}
				for (Experience exp : expresult) {
					basicCount++;
					if (getjob.getExparea().equals(exp.getWorkjobtitle())) {
						basic += 1;
					}
				}
				for (Skills skapp : skillsApp) {
					basicCount+=2;
					for (Skills skcom : skillsCom) {
						if (skapp.getSkillname().equals(skcom.getSkillname())) {
							basic += 1;
						}
						if (skapp.getCertname().equals(skcom.getSkillname())) {
							basic += 1;
						}
					}
				}
				System.out.println("basic" + basic);
				System.out.println("basicCount" + basicCount);
				basic = basic / basicCount;
				ArrayList<Double> cultureAppArr = new ArrayList<>();
				cultureAppArr.add(cultureApp.getNeedchallenge());
				cultureAppArr.add(cultureApp.getNeedcloseness());
				cultureAppArr.add(cultureApp.getNeedcuriosity());
				cultureAppArr.add(cultureApp.getNeedharmony());
				cultureAppArr.add(cultureApp.getNeedideal());
				cultureAppArr.add(cultureApp.getNeedliberty());
				cultureAppArr.add(cultureApp.getNeedlove());
				cultureAppArr.add(cultureApp.getNeedpracticality());
				cultureAppArr.add(cultureApp.getNeedselfexpression());
				cultureAppArr.add(cultureApp.getNeedstability());
				cultureAppArr.add(cultureApp.getNeedstructure());
/*				System.out.println("cultureAppArr : " + cultureAppArr);
*/				ArrayList<Double> cultureComArr = new ArrayList<>();
				cultureComArr.add(cultureCom.getNeedchallenge());
				cultureComArr.add(cultureCom.getNeedcloseness());
				cultureComArr.add(cultureCom.getNeedcuriosity());
				cultureComArr.add(cultureCom.getNeedharmony());
				cultureComArr.add(cultureCom.getNeedideal());
				cultureComArr.add(cultureCom.getNeedliberty());
				cultureComArr.add(cultureCom.getNeedlove());
				cultureComArr.add(cultureCom.getNeedpracticality());
				cultureComArr.add(cultureCom.getNeedselfexpression());
				cultureComArr.add(cultureCom.getNeedstability());
				cultureComArr.add(cultureCom.getNeedstructure());
				double cultureAbs = 0;
				for (int i = 0; i < cultureComArr.size(); i++) {
					cultureAbs = cultureAppArr.get(i) - cultureComArr.get(i);
					if (Math.abs(cultureAbs) <= 0.1) {
						culture += 0.09;
					} else if (Math.abs(cultureAbs) >= 0.11 && Math.abs(cultureAbs) <= 0.2) {
						culture += 0.075;
					} else if (Math.abs(cultureAbs) >= 0.21 && Math.abs(cultureAbs) <= 0.3) {
						culture += 0.06;
					} else if (Math.abs(cultureAbs) >= 0.31 && Math.abs(cultureAbs) <= 0.4) {
						culture += 0.045;
					} else if (Math.abs(cultureAbs) >= 0.41 && Math.abs(cultureAbs) <= 0.5) {
						culture += 0.03;
					} else if (Math.abs(cultureAbs) >= 0.51 && Math.abs(cultureAbs) <= 0.6) {
						culture += 0.015;
					}
				}
				// app, com 성격 비교치
				ArrayList<Double> personalAppArr = new ArrayList<>();
				personalAppArr.add(personalityApp.getAgreeableness());
				personalAppArr.add(personalityApp.getConscientiousness());
				personalAppArr.add(personalityApp.getEmotional());
				personalAppArr.add(personalityApp.getExtraversion());
				personalAppArr.add(personalityApp.getOpenness());
				ArrayList<Double> personalComArr = new ArrayList<>();
				personalComArr.add(personalityCom.getAgreeableness());
				personalComArr.add(personalityCom.getConscientiousness());
				personalComArr.add(personalityCom.getEmotional());
				personalComArr.add(personalityCom.getExtraversion());
				personalComArr.add(personalityCom.getOpenness());
				double personalAbs = 0;
				for (int i = 0; i < personalAppArr.size(); i++) {
					personalAbs = personalAppArr.get(i) - personalComArr.get(i);
					if (Math.abs(personalAbs) <= 0.1) {
						personal += 0.2;
					} else if (Math.abs(personalAbs) >= 0.11 && Math.abs(personalAbs) <= 0.2) {
						personal += 0.16;
					} else if (Math.abs(personalAbs) >= 0.21 && Math.abs(personalAbs) <= 0.3) {
						personal += 0.12;
					} else if (Math.abs(personalAbs) >= 0.31 && Math.abs(personalAbs) <= 0.4) {
						personal += 0.08;
					} else if (Math.abs(personalAbs) >= 0.41 && Math.abs(personalAbs) <= 0.5) {
						personal += 0.04;
					} else if (Math.abs(personalAbs) >= 0.51 && Math.abs(personalAbs) <= 0.6) {
						personal += 0.01;
					}
				}
				if(culture == 1.0){
					culture = culture-0.01;
				}else if(basic == 1.0){
					basic = basic-0.01;
				}else if(personal == 1.0){
					personal = personal-0.01;
				}
				double totalper = Math.round(((culture / (10/3)) + (basic / (10/3)) + (personal / (10/4)))*10000.0)/10000.0;
				System.out.println("culture : "+culture);
				System.out.println("basic : "+basic);
				System.out.println("personal : "+personal);
				System.out.println("totalper : "+totalper);
				map.put("jobid", getjob.getJobid());
				map.put("applicantid", applicant.getApplicantid());
				map.put("culper", culture);
				map.put("skillper", basic);
				map.put("perper", personal);
				map.put("totalper", totalper);
				try {
					sqlSession.insert("link.mapper.ApplicantMapper.insertMatch", map);
					sqlSession.commit();
				} catch (Exception e) {
					e.printStackTrace();
				}
				culture=0;
				basic=0;
				personal=0;
				totalper=0;
			}
		}
		sqlSession.commit();
		return result;
	}
}
