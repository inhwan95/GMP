package ddit.vo;

public class MemberInfoVO {
    private int info_no;
	private int mem_no;
	private int posi_no;
	private int dept_no;
	private String change_date;
	
	public MemberInfoVO() {	}

	public MemberInfoVO(int info_no, int mem_no, int posi_no, int dept_no, String change_date) {
		this.info_no = info_no;
		this.mem_no = mem_no;
		this.posi_no = posi_no;
		this.dept_no = dept_no;
		this.change_date = change_date;
	}

	public int getInfo_no() {
		return info_no;
	}

	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getPosi_no() {
		return posi_no;
	}

	public void setPosi_no(int posi_no) {
		this.posi_no = posi_no;
	}

	public int getDept_no() {
		return dept_no;
	}

	public void setDept_no(int dept_no) {
		this.dept_no = dept_no;
	}

	public String getChange_date() {
		return change_date;
	}

	public void setChange_date(String change_date) {
		this.change_date = change_date;
	}

	@Override
	public String toString() {
		return "MemberInfoVO [info_no=" + info_no + ", mem_no=" + mem_no + ", posi_no=" + posi_no + ", dept_no="
				+ dept_no + ", change_date=" + change_date + "]";
	}

}