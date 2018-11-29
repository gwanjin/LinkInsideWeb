package link.dao;

public class joinJobAndMatching {
	
	double totalper;
	String jobtitle;
	String compid;
	String jobdesc;
	int jobto;
	int jobapplied;
	
	public joinJobAndMatching(){
		
	}

	public joinJobAndMatching(double totalper, String jobtitle, String compid) {
		this.totalper = totalper;
		this.jobtitle = jobtitle;
		this.compid = compid;
	}

	public double getTotalper() {
		return totalper;
	}

	public void setTotalper(double totalper) {
		this.totalper = totalper;
	}

	public String getJobtitle() {
		return jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public String getCompid() {
		return compid;
	}

	public void setCompid(String compid) {
		this.compid = compid;
	}

	@Override
	public String toString() {
		return "joinJobAndMatching [totalper=" + totalper + ", jobtitle=" + jobtitle + ", compid=" + compid + "]";
	}
	
	
}
