package link.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import link.vo.Applicant;
import link.vo.Company;
import link.vo.Culture;
import link.vo.Education;
import link.vo.Experience;
import link.vo.Job;
import link.vo.Personality;
import link.vo.Questions;
import link.vo.Skills;

public class CommonDAO{
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	HashMap<String, String> map;
	
	public List<String> getTagList(String type) {
		System.out.println("get Tag DAO");
		sqlSession = sqlSessionFactory.openSession();
		List<String> list = new ArrayList<>();
		try {
			if(type.equals("skill")){
				list = sqlSession.selectList("link.mapper.CommonMapper.getSkillIndex");				
			}else if(type.equals("cert")){
				list = sqlSession.selectList("link.mapper.CommonMapper.getCertIndex");				
			}
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;
	}
}
