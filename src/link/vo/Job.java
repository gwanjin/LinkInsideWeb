package link.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 * JOB 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Job implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** JOBID. */
	private String jobid;

	/** COMPANY. */
	private String compid;

	/** JOBTITLE. */
	private String jobtitle;

	/** JOBDESC. */
	private String jobdesc;

	/** JOBTO. */
	private int jobto;

	/** JOBAPPLIED. */
	private int jobapplied;
	
	//잡 등록일
	private String jobstart;
	//잡 마감일
	private String jobend;
	/** EDUMAJOR. */
	private String edumajor;

	/** EDU_IMP. */
	private String edulevel;

	/** EXPAREA. */
	private String exparea;
	
	/** EXP_IMP. */
	private String explevel;

	//근무기간
	private int expduration;
	/** MATCHING 목록. */
	private Set<Matching> matchingSet;

	/** PERSONALITY 목록. */
	private Set<Personality> personalitySet;

	/** 새 테이블 목록. */
	private ArrayList<Skills> skillsList;

	/**
	 * 생성자.
	 */
	public Job() {
		this.matchingSet = new HashSet<Matching>();
		this.personalitySet = new HashSet<Personality>();
	}

	/**
	 * JOBID을 설정합니다..
	 * 
	 * @param jobid
	 *            JOBID
	 */
	public void setJobid(String jobid) {
		this.jobid = jobid;
	}

	/**
	 * JOBID을 가져옵니다..
	 * 
	 * @return JOBID
	 */
	public String getJobid() {
		return this.jobid;
	}

	/**
	 * COMPANY을 설정합니다..
	 * 
	 * @param company
	 *            COMPANY
	 */
	public void setCompid(String compid) {
		this.compid = compid;
	}

	/**
	 * COMPANY을 가져옵니다..
	 * 
	 * @return COMPANY
	 */
	public String getCompid() {
		return this.compid;
	}

	/**
	 * JOBTITLE을 설정합니다..
	 * 
	 * @param jobtitle
	 *            JOBTITLE
	 */
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	/**
	 * JOBTITLE을 가져옵니다..
	 * 
	 * @return JOBTITLE
	 */
	public String getJobtitle() {
		return this.jobtitle;
	}

	/**
	 * JOBDESC을 설정합니다..
	 * 
	 * @param jobdesc
	 *            JOBDESC
	 */
	public void setJobdesc(String jobdesc) {
		this.jobdesc = jobdesc;
	}

	/**
	 * JOBDESC을 가져옵니다..
	 * 
	 * @return JOBDESC
	 */
	public String getJobdesc() {
		return this.jobdesc;
	}

	/**
	 * JOBTO을 설정합니다..
	 * 
	 * @param jobto
	 *            JOBTO
	 */
	public void setJobto(int jobto) {
		this.jobto = jobto;
	}

	/**
	 * JOBTO을 가져옵니다..
	 * 
	 * @return JOBTO
	 */
	public int getJobto() {
		return this.jobto;
	}

	/**
	 * JOBAPPLIED을 설정합니다..
	 * 
	 * @param jobapplied
	 *            JOBAPPLIED
	 */
	public void setJobapplied(int jobapplied) {
		this.jobapplied = jobapplied;
	}

	/**
	 * JOBAPPLIED을 가져옵니다..
	 * 
	 * @return JOBAPPLIED
	 */
	public int getJobapplied() {
		return this.jobapplied;
	}

	/**
	 * EDUMAJOR을 설정합니다..
	 * 
	 * @param edumajor
	 *            EDUMAJOR
	 */
	public void setEdumajor(String edumajor) {
		this.edumajor = edumajor;
	}

	/**
	 * EDUMAJOR을 가져옵니다..
	 * 
	 * @return EDUMAJOR
	 */
	public String getEdumajor() {
		return this.edumajor;
	}

	/**
	 * EDU_IMP을 설정합니다..
	 * 
	 * @param edulevel
	 *            EDU_IMP
	 */
	public void setEdulevel(String edulevel) {
		this.edulevel = edulevel;
	}

	/**
	 * EDU_IMP을 가져옵니다..
	 * 
	 * @return EDU_IMP
	 */
	public String getEdulevel() {
		return this.edulevel;
	}

	/**
	 * EXPAREA을 설정합니다..
	 * 
	 * @param exparea
	 *            EXPAREA
	 */
	public void setExparea(String exparea) {
		this.exparea = exparea;
	}

	/**
	 * EXPAREA을 가져옵니다..
	 * 
	 * @return EXPAREA
	 */
	public String getExparea() {
		return this.exparea;
	}

	/**
	 * EXP_IMP을 설정합니다..
	 * 
	 * @param explevel
	 *            EXP_IMP
	 */
	public void setExplevel(String explevel) {
		this.explevel = explevel;
	}

	/**
	 * EXP_IMP을 가져옵니다..
	 * 
	 * @return EXP_IMP
	 */
	public String getExplevel() {
		return this.explevel;
	}

	/**
	 * MATCHING 목록을 설정합니다..
	 * 
	 * @param matchingSet
	 *            MATCHING 목록
	 */
	public void setMatchingSet(Set<Matching> matchingSet) {
		this.matchingSet = matchingSet;
	}

	/**
	 * MATCHING를 추가합니다..
	 * 
	 * @param matching
	 *            MATCHING
	 */
	public void addMatching(Matching matching) {
		this.matchingSet.add(matching);
	}

	/**
	 * MATCHING 목록을 가져옵니다..
	 * 
	 * @return MATCHING 목록
	 */
	public Set<Matching> getMatchingSet() {
		return this.matchingSet;
	}

	/**
	 * PERSONALITY 목록을 설정합니다..
	 * 
	 * @param personalitySet
	 *            PERSONALITY 목록
	 */
	public void setPersonalitySet(Set<Personality> personalitySet) {
		this.personalitySet = personalitySet;
	}

	/**
	 * PERSONALITY를 추가합니다..
	 * 
	 * @param personality
	 *            PERSONALITY
	 */
	public void addPersonality(Personality personality) {
		this.personalitySet.add(personality);
	}

	/**
	 * PERSONALITY 목록을 가져옵니다..
	 * 
	 * @return PERSONALITY 목록
	 */
	public Set<Personality> getPersonalitySet() {
		return this.personalitySet;
	}

	/**
	 * 새 테이블 목록을 설정합니다..
	 * 
	 * @param skillsSet
	 *            새 테이블 목록
	 */
	public void setSkillsList(ArrayList<Skills> skillsList) {
		this.skillsList = skillsList;
	}

	/**
	 * 새 테이블 목록을 가져옵니다..
	 * 
	 * @return 새 테이블 목록
	 */
	public ArrayList<Skills> getSkillsList() {
		return this.skillsList;
	}
	
	public String getJobstart() {
		return jobstart;
	}

	public void setJobstart(String jobstart) {
		this.jobstart = jobstart;
	}

	public String getJobend() {
		return jobend;
	}

	public void setJobend(String jobend) {
		this.jobend = jobend;
	}

	public int getExpduration() {
		return expduration;
	}

	public void setExpduration(int expduration) {
		this.expduration = expduration;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((jobid == null) ? 0 : jobid.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Job other = (Job) obj;
		if (jobid == null) {
			if (other.jobid != null) {
				return false;
			}
		} else if (!jobid.equals(other.jobid)) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "Job [jobid=" + jobid + ", compid=" + compid + ", jobtitle=" + jobtitle + ", jobdesc=" + jobdesc
				+ ", jobto=" + jobto + ", jobapplied=" + jobapplied + ", jobstart=" + jobstart + ", jobend=" + jobend
				+ ", edumajor=" + edumajor + ", edulevel=" + edulevel + ", exparea=" + exparea + ", explevel="
				+ explevel + ", expduration=" + expduration + ", matchingSet=" + matchingSet + ", personalitySet="
				+ personalitySet + ", skillsList=" + skillsList + "]";
	}

	
}