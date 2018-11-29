package link.vo;

import java.io.Serializable;

public class SelfPromotion implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String jobid;
	private int qnumber;
	private String question;
	private String applicantid;
	private String answer;
	private int maxtext;
	private int mintext;
	
	
	public String getJobid() {
		return jobid;
	}
	public void setJobid(String jobid) {
		this.jobid = jobid;
	}
	public int getQnumber() {
		return qnumber;
	}
	public void setQnumber(int qnumber) {
		this.qnumber = qnumber;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getApplicantid() {
		return applicantid;
	}
	public void setApplicantid(String applicantid) {
		this.applicantid = applicantid;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getMaxtext() {
		return maxtext;
	}
	public void setMaxtext(int maxtext) {
		this.maxtext = maxtext;
	}
	public int getMintext() {
		return mintext;
	}
	public void setMintext(int mintext) {
		this.mintext = mintext;
	}
	
	
	
	@Override
	public String toString() {
		return "SELFPROMOTION [jobid=" + jobid + ", qnumber=" + qnumber + ", question=" + question + ", applicantid="
				+ applicantid + ", answer=" + answer + ", maxtext=" + maxtext + ", mintext=" + mintext + "]";
	}
}
