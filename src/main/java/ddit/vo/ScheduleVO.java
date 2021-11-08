package ddit.vo;

public class ScheduleVO {
    private int sch_no;
	private int ssec_no;
	private int dept_no;
	private int mem_no;
	private String sch_title;
	private String sch_start;
	private String sch_end;
	private String sch_place;
	private String sch_content;
	
	public ScheduleVO() {}

	public ScheduleVO(int sch_no, int ssec_no, int dept_no, int mem_no, String sch_title, String sch_start,
			String sch_end, String sch_place, String sch_content) {
		this.sch_no = sch_no;
		this.ssec_no = ssec_no;
		this.dept_no = dept_no;
		this.mem_no = mem_no;
		this.sch_title = sch_title;
		this.sch_start = sch_start;
		this.sch_end = sch_end;
		this.sch_place = sch_place;
		this.sch_content = sch_content;
	}

	public int getSch_no() {
		return sch_no;
	}

	public void setSch_no(int sch_no) {
		this.sch_no = sch_no;
	}

	public int getSsec_no() {
		return ssec_no;
	}

	public void setSsec_no(int ssec_no) {
		this.ssec_no = ssec_no;
	}

	public int getDept_no() {
		return dept_no;
	}

	public void setDept_no(int dept_no) {
		this.dept_no = dept_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getSch_title() {
		return sch_title;
	}

	public void setSch_title(String sch_title) {
		this.sch_title = sch_title;
	}

	public String getSch_start() {
		return sch_start;
	}

	public void setSch_start(String sch_start) {
		this.sch_start = sch_start;
	}

	public String getSch_end() {
		return sch_end;
	}

	public void setSch_end(String sch_end) {
		this.sch_end = sch_end;
	}

	public String getSch_place() {
		return sch_place;
	}

	public void setSch_place(String sch_place) {
		this.sch_place = sch_place;
	}

	public String getSch_content() {
		return sch_content;
	}

	public void setSch_content(String sch_content) {
		this.sch_content = sch_content;
	}

	@Override
	public String toString() {
		return "ScheduleVO [sch_no=" + sch_no + ", ssec_no=" + ssec_no + ", dept_no=" + dept_no + ", mem_no=" + mem_no
				+ ", sch_title=" + sch_title + ", sch_start=" + sch_start + ", sch_end=" + sch_end + ", sch_place="
				+ sch_place + ", sch_content=" + sch_content + "]";
	}

}
