package link.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class AndroidApplicantDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	HashMap<String, String> map;
	
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
		
		System.out.println("Android dao in type: " + type);
		try{
			result = sqlSession.selectMap("link.mapper.AndroidApplicantMapper.getJoindTable", map, "JOBID");

		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("result in gma : "+result);
		return result;
	}
}
